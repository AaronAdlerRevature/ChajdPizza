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
            var Username = User.Identity.Name;
            Customer customer = new Customer();
            IEnumerable<Orders> orders = null;

            SpecialtyPizza specialtyPizza = new SpecialtyPizza();
           
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


                var custId = customer.Id;

                //Check if Customer has multiple open orders
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResCh = await client.GetAsync("OrdersApi/CheckMult/" + custId);

                if (ResCh.IsSuccessStatusCode)
                {
                    var ordersRes = ResCh.Content.ReadAsStringAsync().Result;

                    orders = JsonConvert.DeserializeObject<IEnumerable<Orders>>(ordersRes);
                }

                //Get orders by CustId
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResO = await client.GetAsync("OrdersApi/ByCust/" + custId);

                if (ResO.IsSuccessStatusCode)
                {
                    var ordersRes = ResO.Content.ReadAsStringAsync().Result;

                    orders = JsonConvert.DeserializeObject<IEnumerable<Orders>>(ordersRes);
                }

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
                

            }

            try
            {
                Orders order = (Orders)Orderlogic.CheckOpenOrder(orders);
            }
            catch(Exception e)
            {
                return View("../Shared/Error", e);
            }
            
            OrderDetail orderDetail = new OrderDetail();

          
            


            return View("../Customers/Details" , customer);
        }
    }
}