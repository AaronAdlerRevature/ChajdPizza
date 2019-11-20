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
using ChajdPizzaWebApp.ViewModels;

namespace ChajdPizzaWebApp.Controllers
{
    public class HomeController : Controller
    {
        static string _url = "https://chajdpizza.azurewebsites.net/";
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
        [HttpGet]
        public async Task<IActionResult> CustomPizza()
        {
            var Username = User.Identity.Name;
            Customer customer = new Customer();
            Orders order = new Orders();
            var customorder = new OrderDetail();
            CheckIfUserLoggedIn();
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://chajdpizza.azurewebsites.net/api/");
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                var ResC = await client.GetAsync("CustomersApi/ByUser/" + Username);

                if (ResC.IsSuccessStatusCode)
                {
                    var customerRes = ResC.Content.ReadAsStringAsync().Result;
                    customer = JsonConvert.DeserializeObject<Customer>(customerRes);
                }
                else if (!ResC.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Get Customer has failed!")); }

                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResCh = await client.GetAsync("OrdersApi/CheckMultByCust/" + customer.Id);
                var isMult = 0;
                if (ResCh.IsSuccessStatusCode)
                {
                    var CheckRes = ResCh.Content.ReadAsStringAsync().Result;

                    isMult = JsonConvert.DeserializeObject<int>(CheckRes);
                }
                else if (!ResCh.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Check mult has failed!")); }
                if (isMult > 1) { return View("../Shared/ShowException", new Exception("There are multiple open orders for this customer.")); }

                if (isMult == 0)
                {
                    order.CustomerId = customer.Id;
                    order.isCompleted = false;
                    //Post new Order
                    client.DefaultRequestHeaders.Clear();
                    client.DefaultRequestHeaders.Accept.Add
                        (new MediaTypeWithQualityHeaderValue("application/json"));

                    var newData = JsonConvert.SerializeObject(order);
                    var newContent = new StringContent(newData, Encoding.UTF8, "application/json");
                    HttpResponseMessage ResPost = await client.PostAsync("OrdersApi", newContent);

                    if (!ResPost.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Post new Order has failed!")); }

                    client.DefaultRequestHeaders.Clear();
                    client.DefaultRequestHeaders.Accept.Add
                        (new MediaTypeWithQualityHeaderValue("application/json"));
                    HttpResponseMessage ResO = await client.GetAsync("OrdersApi/ByCust/" + customer.Id);

                    if (ResO.IsSuccessStatusCode)
                    {
                        var ordersRes = ResO.Content.ReadAsStringAsync().Result;

                        order = JsonConvert.DeserializeObject<Orders>(ordersRes);
                    }
                    else if (!ResO.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Get order has failed!")); }
                    customorder.OrdersId = order.Id;
                    customorder.SizeId = 2;

                }
            }
            return View(customorder);
        }
        [HttpPost]
        public async Task<IActionResult> CustomPizza(OrderDetail model)
        {
            CheckIfUserLoggedIn();
            var Username = User.Identity.Name;
            Customer customer = new Customer();
            Orders order = new Orders();
            OrderDetail orderDetail = new OrderDetail();
            Size selectedSize = new Size();

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://chajdpizza.azurewebsites.net/api/");
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResC = await client.GetAsync("CustomersApi/ByUser/" + Username);
                if (ResC.IsSuccessStatusCode)
                {
                    var customerRes = ResC.Content.ReadAsStringAsync().Result;

                    customer = JsonConvert.DeserializeObject<Customer>(customerRes);
                }
                var custId = customer.Id;
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResCh = await client.GetAsync("OrdersApi/CheckMultByCust/" + custId);

                var isMult = 0;
                if (ResCh.IsSuccessStatusCode)
                {
                    var CheckRes = ResCh.Content.ReadAsStringAsync().Result;

                    isMult = JsonConvert.DeserializeObject<int>(CheckRes);
                }
                else if (!ResCh.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Check mult has failed!")); }
                if (isMult > 1) { return View("../Shared/ShowException", new Exception("There are multiple open orders for this customer.")); }


                if (isMult == 0)
                {
                    order.CustomerId = custId;
                    order.isCompleted = false;
                    //Post new Order
                    client.DefaultRequestHeaders.Clear();
                    client.DefaultRequestHeaders.Accept.Add
                        (new MediaTypeWithQualityHeaderValue("application/json"));

                    var newData = JsonConvert.SerializeObject(order);
                    var newContent = new StringContent(newData, Encoding.UTF8, "application/json");
                    HttpResponseMessage ResPost = await client.PostAsync("OrdersApi", newContent);

                    if (!ResPost.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Post new Order has failed!")); }

                    client.DefaultRequestHeaders.Clear();
                    client.DefaultRequestHeaders.Accept.Add
                        (new MediaTypeWithQualityHeaderValue("application/json"));
                    HttpResponseMessage ResO = await client.GetAsync("OrdersApi/ByCust/" + custId);

                    if (ResO.IsSuccessStatusCode)
                    {
                        var ordersRes = ResO.Content.ReadAsStringAsync().Result;

                        order = JsonConvert.DeserializeObject<Orders>(ordersRes);
                    }
                    else if (!ResO.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Get order has failed!")); }
                    HttpResponseMessage ResS = await client.GetAsync("pizzatypesapi/sizes/"+model.SizeId);
                    if (ResS.IsSuccessStatusCode)
                    {
                        var sizeRes = ResS.Content.ReadAsStringAsync().Result;

                        selectedSize = JsonConvert.DeserializeObject<Size>(sizeRes);
                    }
                    orderDetail.OrdersId = order.Id;
                    orderDetail.SizeId = model.SizeId;
                    //orderDetail.ToppingsCount = model.selectedToppings.Count();
                    //foreach (var item in model.selectedToppings)
                    //{
                    //    orderDetail.ToppingsSelected = orderDetail.ToppingsSelected + item.Name + ",";
                    //}
                    orderDetail.Price = (orderDetail.ToppingsCount * (decimal)1.50) + selectedSize.S_Price;


                }
                return View("../Orders/PizzaConfirmation", orderDetail);
            }
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
                    //string url = "https://chajdpizza.azurewebsites.net/";
                    string guestID = Request.Cookies["GuestID"];
                    Response.Cookies.Delete("GuestID");
                    Response.Cookies.Delete("GuestName");

                    // Update current currentlogin order for guest order. 
                    string SPS =_userManager.GetUserName(User);
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