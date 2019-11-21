using ChajdPizzaWebApp.Models;
using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.BL
{
    public class OrderBl
    {

        public Object GetPizzaOrder(string Username, int? id)
        {
            var taskResponse = GetPizzaOrderTask(Username, id);
            var result = taskResponse.Result;
            return result;
        }

        protected async Task<Object> GetPizzaOrderTask(string Username, int? id)
        {
            //Instantiate Objects
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
                else if (!ResC.IsSuccessStatusCode) { return (new Exception("Get Customer has failed!")); }

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
                else if (!ResCh.IsSuccessStatusCode) { return new Exception("Check mult has failed!"); }
                if (isMult > 1) { return new Exception("There are multiple open orders for this customer."); }


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

                    if (!ResPost.IsSuccessStatusCode) { return new Exception("Post new Order has failed!"); }
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
                else if (!ResO.IsSuccessStatusCode) { return new Exception("Get order has failed!"); }



                if (!(id is null))
                {
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
                    else if (!ResP.IsSuccessStatusCode) { return new Exception("Get Specialty Pizza Details has failed!"); }

                    orderDetail.Price = specialtyPizza.Price;
                    orderDetail.SizeId = 2;
                    orderDetail.ToppingsSelected = specialtyPizza.Description;

                }

                orderDetail.OrdersId = order.Id;
                return orderDetail;
            }

        }


        public Object PostPizzaOrder(OrderDetail orderDetail)
        {
            var taskResponse = PostPizzaOrderTask(orderDetail);
            var result = taskResponse.Result;
            return result;
        }

        protected async Task<Object> PostPizzaOrderTask(OrderDetail orderDetail)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://chajdpizza.azurewebsites.net/api/");

                //Post OrderDetail
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));

                orderDetail.Id = 0;

                var newData = JsonConvert.SerializeObject(orderDetail);
                var newContent = new StringContent(newData, Encoding.UTF8, "application/json");
                HttpResponseMessage ResPost = await client.PostAsync("OrderDetailsApi", newContent);
                if (!ResPost.IsSuccessStatusCode) { return new Exception("There was an issue with your order. {Expression of sadness}.\nPosting has failed."); }
                else
                {   //Update Order netPrice.
                    //GetOrder
                    Orders order = new Orders();
                    client.DefaultRequestHeaders.Clear();
                    client.DefaultRequestHeaders.Accept.Add
                        (new MediaTypeWithQualityHeaderValue("application/json"));
                    HttpResponseMessage ResO = await client.GetAsync("OrdersApi/" + orderDetail.OrdersId);

                    if (ResO.IsSuccessStatusCode)
                    {
                        var orderRes = ResO.Content.ReadAsStringAsync().Result;

                        order = JsonConvert.DeserializeObject<Orders>(orderRes);
                    }
                    else if (!ResO.IsSuccessStatusCode)
                    {
                        //Delete OrderDetail since order grab failed
                        client.DefaultRequestHeaders.Clear();
                        client.DefaultRequestHeaders.Accept.Add
                            (new MediaTypeWithQualityHeaderValue("application/json"));

                        HttpResponseMessage ResDel = await client.DeleteAsync("OrderDetailsApi/" + orderDetail.Id);
                        if (!ResDel.IsSuccessStatusCode) { return new Exception("Deletion of OrderDetail has failed!!"); }
                        return new Exception("Get Order has failed!\nOrderDetail was removed");
                    }

                    //Update Order in database
                    
                    order.NetPrice = order.NetPrice + orderDetail.Price;
                    client.DefaultRequestHeaders.Clear();
                    client.DefaultRequestHeaders.Accept.Add
                        (new MediaTypeWithQualityHeaderValue("application/json"));

                    newData = JsonConvert.SerializeObject(order);
                    newContent = new StringContent(newData, Encoding.UTF8, "application/json");
                    HttpResponseMessage ResPut = await client.PutAsync("OrdersApi/" + order.Id, newContent);
                    if (!ResPut.IsSuccessStatusCode) { return new Exception("Updating Order NetPrice has failed!!"); }
                }

                return orderDetail;
            }
        }


        public Object GetSecretFormula()
        {
            var taskResponse = GetSecretFormulaTask();
            var result = taskResponse.Result;
            return result;
        }

        protected async Task<Object> GetSecretFormulaTask()
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://chajdpizza.azurewebsites.net/api/");
                //GetSecretFormulaPrice
                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage ResSF = await client.GetAsync("PizzaTypesApi/sf/price/1");

                if (ResSF.IsSuccessStatusCode)
                {
                    var secretFormula = ResSF.Content.ReadAsStringAsync().Result;

                    decimal sFormula = JsonConvert.DeserializeObject<Decimal>(secretFormula);
                    return sFormula;
                }
                else{ return (new Exception("Get formula has failed!")); }

                
            }
        }
    }
}
