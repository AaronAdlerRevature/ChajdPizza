using System;
using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;

namespace ChajdPizzaWebApp.Controllers
{
    public class OrderDetailsController : Controller
    {
        private readonly IOrderDetailsRepo _repo;

        public OrderDetailsController(IOrderDetailsRepo repo)
        {
            _repo = repo;
        }

        // GET: OrderDetails
        public async Task<IActionResult> Index()
        {
            var orderDetails = await _repo.SelectAll();
            return View(orderDetails);
        }

        // GET: OrderDetails/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var orderDetail = await _repo.SelectOrderAllDetails(id);
            if (orderDetail == null)
            {
                return NotFound();
            }

            return View(orderDetail);
        }

        //[Route("DetailsOfOrder")]
        public async Task<IActionResult> DetailsOfOrder()
        {
            //if(ordersId != null)
            string returnUrl = Url.Content("~/");
            if (User.Identity.Name != null)
            {
                ViewBag.OrderId = await ReturnOrderId(User.Identity.Name);
                return View();
                
            }
            else if (Request.Cookies.ContainsKey("GuestName"))
            {
                string guestName = Request.Cookies["GuestName"];
                ViewBag.OrderId = await ReturnOrderId(guestName);
                return View();
            }
            else
            {
                return LocalRedirect(returnUrl);
            }
        }

        private async Task<int> ReturnOrderId(string username)
        {
            Customer customer = new Customer();
            Orders order = new Orders();

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://chajdpizza.azurewebsites.net/api/");

                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage customerInfo = await client.GetAsync("CustomersApi/ByUser/" + username);
                if (customerInfo.IsSuccessStatusCode)
                {
                    var customerRes = customerInfo.Content.ReadAsStringAsync().Result;

                    customer = JsonConvert.DeserializeObject<Customer>(customerRes);
                }
                else if (!customerInfo.IsSuccessStatusCode) { return 0; }
                var custId = customer.Id;

                client.DefaultRequestHeaders.Clear();
                client.DefaultRequestHeaders.Accept.Add
                    (new MediaTypeWithQualityHeaderValue("application/json"));
                    HttpResponseMessage orderInfo = await client.GetAsync("OrdersApi/ByCust/" + custId);
                if(orderInfo.IsSuccessStatusCode)
                {
                    var orderRes = orderInfo.Content.ReadAsStringAsync().Result;
                    order = JsonConvert.DeserializeObject<Orders>(orderRes);
                }
                else if (!orderInfo.IsSuccessStatusCode) { return 0; }

                int orderId = order.Id;

                return orderId;
            }
            
        }

        // GET: OrderDetails/Create
        public IActionResult Create()
        {

           //ViewData["OrdersId"] = new SelectList(_context.Orders, "Id", "Id");


            //ViewData["SizeId"] = new SelectList(_context.Size, "Id", "BaseSize");
            return View();
        }

        // POST: OrderDetails/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,OrdersId,SizeId,ToppingsSelected,ToppingsCount,Price,SpecialRequest")] OrderDetail orderDetail)
        {
            if (ModelState.IsValid)
            {
                await _repo.Add(orderDetail);

                return RedirectToAction(nameof(Index));
            }
            //ViewData["OrdersId"] = new SelectList(_context.Orders, "Id", "Id", orderDetail.OrdersId);
            //ViewData["SizeId"] = new SelectList(_context.Size, "Id", "BaseSize", orderDetail.SizeId);
            return View(orderDetail);
        }

        // GET: OrderDetails/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var orderDetail = await _repo.SelectById(id);
            if (orderDetail == null)
            {
                return NotFound();
            }
            //ViewData["OrdersId"] = new SelectList(_repo.SelectById(id), "Id", "Id", orderDetail.OrdersId);
            //ViewData["SizeId"] = new SelectList(_context.Size, "Id", "BaseSize", orderDetail.SizeId);
            return View(orderDetail);
        }

        // POST: OrderDetails/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,OrdersId,SizeId,ToppingsSelected,ToppingsCount,Price,SpecialRequest")] OrderDetail orderDetail)
        {
            if (id != orderDetail.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    await _repo.Update(orderDetail);

                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OrderDetailExists(orderDetail.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            //ViewData["OrdersId"] = new SelectList(_context.Orders, "Id", "Id", orderDetail.OrdersId);
            //ViewData["SizeId"] = new SelectList(_context.Size, "Id", "BaseSize", orderDetail.SizeId);
            return View(orderDetail);
        }

        // GET: OrderDetails/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var orderDetail = await _repo.SelectById(id);
            if (orderDetail == null)
            {
                return NotFound();
            }

            return View(orderDetail);
        }

        // POST: OrderDetails/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var orderDetail = await _repo.SelectById(id);
            await _repo.Remove(orderDetail);

            return RedirectToAction(nameof(Index));
        }

        private bool OrderDetailExists(int id)
        {
            return _repo.OrderDetailExists(id);
        }
    }
}
