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

namespace ChajdPizzaWebApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrdersApiController : ControllerBase
    {
        private readonly OrderRepo _repo;

        public OrdersApiController(OrderRepo repo)
        {
            _repo = repo;
        }

        // GET: api/OrdersApi
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Order>>> GetOrders()
        {
            return await _repo.SelectAll();
        }

        // GET: api/OrdersApi/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Order>> GetOrdersModel(int id)
        {
            var order = await _repo.SelectById(id);

            if (order == null)
            {
                return NotFound();
            }

            return order;
        }

        // PUT: api/OrdersApi/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutOrdersModel(int id, Order order)
        {
            if (id != order.Id)
            {
                return BadRequest();
            }

            

            try
            {
                await _repo.Update(order);
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!OrderExists(id))
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

        // POST: api/OrdersApi
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPost]
        public async Task<ActionResult<Order>> PostOrdersModel(Order order)
        {
            await _repo.Add(order);

            return CreatedAtAction("GetOrdersModel", new { id = order.Id }, order);
        }

        // DELETE: api/OrdersApi/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Order>> DeleteOrdersModel(int id)
        {
            var order = await _repo.SelectById(id);
            if (order == null)
            {
                return NotFound();
            }

            await _repo.Remove(order);
            

            return order;
        }

        private bool OrderExists(int id)
        {
            return _repo.OrderExists(id);
        }
    }
}
