using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.BL;
using System.Text;

namespace ChajdPizzaWebApp.Controllers
{
    public class SpecialtyPizzaController : Controller
    {
        OrderBl Orderlogic = new OrderBl();
        public async Task<IActionResult> Order(int? id)
        {
            if (id is null)
            {
                return NotFound();
            }

            //Instantiate Objects
            var Username = User.Identity.Name;
            Customer customer = new Customer();
            Orders order = new Orders();
            SpecialtyPizza specialtyPizza = new SpecialtyPizza();
            OrderDetail orderDetail = new OrderDetail();


            //Consume API calls
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://chajdpizza.azurewebsites.net/api/");

                //GetCustomerId
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResC = await client.GetAsync("CustomersApi/ByUser/" + Username);

                if (ResC.IsSuccessStatusCode)
                {
                    var customerRes = ResC.Content.ReadAsStringAsync().Result;

                    customer = JsonConvert.DeserializeObject<Customer>(customerRes);
                }
                else if (!ResC.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Get Customer has failed!")); }

                var custId = customer.Id;

                //Check if Customer has multiple open orders
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

                
                if(isMult == 0)
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
                }

                //Get orders by CustId
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

                //Get SpecialtyPizzaDetails
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResP = await client.GetAsync("PizzaTypesApi/special/" + id);

                if (ResP.IsSuccessStatusCode)
                {
                    var SpecialRes = ResP.Content.ReadAsStringAsync().Result;

                    specialtyPizza = JsonConvert.DeserializeObject<SpecialtyPizza>(SpecialRes);
                }
                else if (!ResP.IsSuccessStatusCode) { return View("../Shared/ShowException", new Exception("Get Specialty Pizza Details has failed!")); }

                orderDetail.OrderId = order.Id;
                orderDetail.Price = specialtyPizza.Price;
                orderDetail.SizeId = 2;
                orderDetail.ToppingsSelected = specialtyPizza.Description;
            }
            


 
            return View("../Customers/Details" , customer);
        }
    }
}