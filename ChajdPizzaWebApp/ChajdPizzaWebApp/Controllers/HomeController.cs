using ChajdPizzaWebApp.BL;
using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Controllers
{
    public class HomeController : Controller
    {
        static string _url = "https://chajdpizza.azurewebsites.net/";
        private readonly ILogger<HomeController> _logger;
        UserManager<IdentityUser> _userManager;
        OrderBl Orderlogic = new OrderBl();
        public HomeController(ILogger<HomeController> logger, UserManager<IdentityUser> userManager)
        {
            _logger = logger;
            _userManager = null;
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
        [HttpGet]
        [Authorize]
        public async Task<IActionResult> CustomPizza()
        {
            var Username = User.Identity.Name;
            var ApiResponse = Orderlogic.GetPizzaOrder(Username, null);

            if (ApiResponse is Exception)
            {
                return View("../Shared/ShowException", ApiResponse);
            }
            else
            {
                return View( ApiResponse);
            }
            
        }
        [HttpPost]
        public async Task<IActionResult> CustomPizza(OrderDetail model)
        {
            CheckIfUserLoggedIn();
            var SecFormGrab = Orderlogic.GetSecretFormula();
            if (SecFormGrab is Exception)
            {
                return View("../Shared/ShowException", SecFormGrab);
            }
            model.Price = model.Price + (model.ToppingsCount * (decimal)SecFormGrab);
           
            
            if (ModelState.IsValid)
                {

                var ApiResponse = Orderlogic.PostPizzaOrder(model);

                    if (ApiResponse is Exception)
                    {
                        return View("../Shared/ShowException", ApiResponse);
                    }
                    else
                    {
                        return View("../Orders/PizzaConfirmation", ApiResponse);
                    }
                }
                return View("../Orders/PizzaConfirmation", model);
        }
        public IActionResult Menu()
        {
           /* CheckIfUserLoggedIn()*/;
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
            if (_userManager != null)
            {
                if (User.Identity.IsAuthenticated)
                {
                    if (Request.Cookies.ContainsKey("GuestID"))
                    {
                        // URL for API.
                        //string url = "https://chajdpizza.azurewebsites.net/";
                        string guestID = Request.Cookies["GuestID"];
                        Response.Cookies.Delete("GuestID");
                        Response.Cookies.Delete("GuestName");

                        // Update current currentlogin order for guest order. 
                        string SPS = _userManager.GetUserName(User);
                        int userID = 0;

                        try
                        {
                            // Get newly logged in customer id.
                            HttpClient customerAPI = new HttpClient();
                            customerAPI.DefaultRequestHeaders.Accept.Clear();
                            customerAPI.DefaultRequestHeaders.Accept.Add(
                                new MediaTypeWithQualityHeaderValue("application/json"));

                            string api = "api/CustomersApi/ByUser/";

                            var customerStringTask = customerAPI.GetStringAsync(_url + api + guestID);
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

                            var stringTask = orderAPI.GetStringAsync(_url + api + guestID);
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

                            orderAPI.PutAsync(_url + api + guestID, newContent);
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
                    // Check if guest cookies have been set.
                    if (Request.Cookies.ContainsKey("GuestName"))
                    {

                    }
                    else
                    {
                        // Get guest user count.
                        var inte = _userManager.Users.Where(u => u.UserName.StartsWith("GUEST")).Count();

                        // Create new guest user.
                        IdentityUser z = new IdentityUser(string.Format("GUEST{0}", inte.ToString()));
                        var query = _userManager.CreateAsync(z, "PASSword1!");
                        query.Wait();
                        var qResult = query.Result;
                        if (qResult.Succeeded)
                        {
                            // Load cookies.
                            Response.Cookies.Append("GuestName", z.UserName);

                            // Create new customer.
                            Customer guestCustomer = new Customer()
                            {
                                Id = 0,
                                Name = string.Format("Guest{0}", inte.ToString()),
                                UserName = string.Format("Guest{0}", inte.ToString()),
                                StateID = 1,
                                ZipCode = 99999,
                            };

                            // Post new guest user.
                            HttpClient newGuestRequest = new HttpClient();
                            newGuestRequest.DefaultRequestHeaders.Accept.Clear();
                            newGuestRequest.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                            // Post command.
                            //string url = "https://chajdpizza.azurewebsites.net/";
                            string api = "api/CustomersApi";

                            // Post response.
                            var newData = JsonConvert.SerializeObject(guestCustomer);
                            var newContent = new StringContent(newData, Encoding.UTF8, "application/json");
                            var response = newGuestRequest.PostAsync(_url + api, newContent);
                            response.Wait();
                            var httpResult = response.Result;
                            var newID = httpResult.Headers.Location.ToString().Substring(httpResult.Headers.Location.ToString().LastIndexOf('/') + 1);

                            // Load cookies.
                            Response.Cookies.Append("GuestID", newID);
                        }
                    }
                }
            }
        }
    }
}