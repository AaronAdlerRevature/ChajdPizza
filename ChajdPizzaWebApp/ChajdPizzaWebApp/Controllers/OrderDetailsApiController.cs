using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ChajdPizzaWebApp.Data;
using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories;
using ChajdPizzaWebApp.Repositories.Interfaces;

namespace ChajdPizzaWebApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderDetailsApiController : ControllerBase
    {
        private readonly IOrderDetailsRepo _repo;

        public OrderDetailsApiController(IOrderDetailsRepo repo)
        {
            _repo = repo;
        }

        // GET: api/OrderDetailsApi
        [HttpGet]
        public async Task<ActionResult<IEnumerable<OrderDetail>>> GetOrderDetails()
        {
            return await _repo.SelectAll();
        }

        // GET: api/OrderDetailsApi/5
        [HttpGet("{id}")]
        public async Task<ActionResult<OrderDetail>> GetOrderDetail(int id)
        {
            var orderDetail = await _repo.SelectById(id);

            if (orderDetail == null)
            {
                return NotFound();
            }

            return orderDetail;
        }

        [Route("Customers/DetailsOfOrder/{orderId}")]
        public async Task<ActionResult<List<OrderDetail>>> GetDetailsOfOrder(int orderId)
        {
            var orderDetails = await _repo.SelectOrderAllDetails(orderId);
            if(orderDetails == null)
            {
                return NotFound();
            }
            return orderDetails;
        }

        // PUT: api/OrderDetailsApi/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutOrderDetail(int id, OrderDetail orderDetail)
        {
            if (id != orderDetail.Id)
            {
                return BadRequest();
            }


            try
            {
                await _repo.Update(orderDetail);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!OrderDetailExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/OrderDetailsApi
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPost]
        public async Task<ActionResult<OrderDetail>> PostOrderDetail(OrderDetail orderDetail)
        {
            await _repo.Add(orderDetail);
            

            return CreatedAtAction("GetOrderDetail", new { id = orderDetail.Id }, orderDetail);
        }

        // DELETE: api/OrderDetailsApi/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<OrderDetail>> DeleteOrderDetail(int id)
        {
            var orderDetail = await _repo.SelectById(id);
            if (orderDetail == null)
            {
                return NotFound();
            }

            await _repo.Remove(orderDetail);

            return orderDetail;
        }

        private bool OrderDetailExists(int id)
        {
            return _repo.OrderDetailExists(id);
        }
    }
}
