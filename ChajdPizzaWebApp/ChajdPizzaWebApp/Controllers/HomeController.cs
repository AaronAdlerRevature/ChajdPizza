using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using ChajdPizzaWebApp.Models;
using System.Security.Claims;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Http;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;
using System.Text;

namespace ChajdPizzaWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        UserManager<IdentityUser> _userManager;

        public HomeController(ILogger<HomeController> logger, UserManager<IdentityUser> userManager)
        {
            _logger = logger;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            CheckIfUserLoggedIn();
            return View();
        }

        public IActionResult Deals()
        {
            CheckIfUserLoggedIn();
            return View();
        }
        public IActionResult TestingToping()
        {
            CheckIfUserLoggedIn();
            return View();
        }
        public IActionResult Menu()
        {
            CheckIfUserLoggedIn();
            return View();
        }
        public IActionResult Privacy()
        {
            CheckIfUserLoggedIn();
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        private void CheckIfUserLoggedIn()
        {
            if (User.Identity.IsAuthenticated)
            {
                if (Request.Cookies.ContainsKey("GuestID"))
                {
                    // URL for API.
                    string url = "http://localhost:10531/";
                    string guestID = Request.Cookies["GuestID"];
                    Response.Cookies.Delete("GuestID");
                    Response.Cookies.Delete("GuestName");

                    // Update current currentlogin order for guest order. 
                    string SPS =_userManager.GetUserId(User);
                    int userID = 0;

                    try
                    {
                        // Get newly logged in customer id.
                        HttpClient customerAPI = new HttpClient();
                        customerAPI.DefaultRequestHeaders.Accept.Clear();
                        customerAPI.DefaultRequestHeaders.Accept.Add(
                            new MediaTypeWithQualityHeaderValue("application/json"));

                        string api = "api/CustomersApi/ByUser/";

                        var customerStringTask = customerAPI.GetStringAsync(url + api + guestID);
                        customerStringTask.Wait();
                        var customerHttpResult = customerStringTask.Result;
                        var currentCustomer = JsonConvert.DeserializeObject<Customer>(customerHttpResult);
                        userID = currentCustomer.Id;

                        // Get previous guest order id.
                        HttpClient orderAPI = new HttpClient();
                        orderAPI.DefaultRequestHeaders.Accept.Clear();
                        orderAPI.DefaultRequestHeaders.Accept.Add(
                            new MediaTypeWithQualityHeaderValue("application/json"));

                        api = "api/OrdersApi/ByCust/";

                        var stringTask = orderAPI.GetStringAsync(url + api + guestID);
                        stringTask.Wait();
                        var httpResult = stringTask.Result;
                        var currentOrder = JsonConvert.DeserializeObject<Orders>(httpResult);

                        // Update order id for newly logged in customer.
                        currentOrder.CustomerId = userID;

                        // Update order for new customerId.
                        orderAPI = new HttpClient();
                        orderAPI.DefaultRequestHeaders.Accept.Clear();
                        orderAPI.DefaultRequestHeaders.Accept.Add(
                            new MediaTypeWithQualityHeaderValue("application/json"));

                        api = "api/OrdersApi/";
                        var newData = JsonConvert.SerializeObject(currentOrder);
                        var newContent = new StringContent(newData, Encoding.UTF8, "application/json");

                        orderAPI.PutAsync(url + api + guestID, newContent);
                    }
                    catch (Exception WTF)
                    {
                        // 404 Not Found! error or failed.
                        Console.WriteLine(WTF);
                    }
                }
            }
            else
            {
                if (Request.Cookies.ContainsKey("GuestName"))
                {

                }
                else
                {
                    var inte = _userManager.Users.Where(u => u.UserName.StartsWith("GUEST")).Count();

                    // Create new guest user.
                    IdentityUser z = new IdentityUser(string.Format("GUEST{0}", inte.ToString()));

                    var query = _userManager.CreateAsync(z, "PASSword1!");
                    query.Wait();
                    var qResult = query.Result;
                    if (qResult.Succeeded)
                    {
                        Response.Cookies.Append("GuestName", z.UserName);

                        Customer guestCustomer = new Customer()
                        {
                            Id = 0,
                            Name = string.Format("Guest{0}", inte.ToString()),
                            UserName = string.Format("Guest{0}", inte.ToString()),
                            StateID = 1,
                            ZipCode = 99999,
                        };

                        HttpClient newGuestRequest = new HttpClient();
                        newGuestRequest.DefaultRequestHeaders.Accept.Clear();
                        newGuestRequest.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                        // Post command.
                        string url = "http://localhost:10531/";
                        string api = "api/CustomersApi";

                        var newData = JsonConvert.SerializeObject(guestCustomer);
                        var newContent = new StringContent(newData, Encoding.UTF8, "application/json");
                        var response = newGuestRequest.PostAsync(url + api, newContent);
                        response.Wait();

                        var httpResult = response.Result;
                        var newID = httpResult.Headers.Location.ToString().Substring(httpResult.Headers.Location.ToString().LastIndexOf('/') + 1);

                        Response.Cookies.Append("GuestID", newID);
                    }
                }
            }
        }
    }
}