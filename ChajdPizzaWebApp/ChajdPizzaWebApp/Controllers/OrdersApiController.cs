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
    public class OrdersApiController : ControllerBase
    {
        private readonly IOrdersRepo _repo;

        public OrdersApiController(IOrdersRepo repo)
        {
            _repo = repo;
        }

        // GET: api/OrdersApi
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Orders>>> GetOrders()
        {
            return await _repo.SelectAll();
        }

        // GET: api/OrdersApi/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Orders>> GetOrders(int id)
        {
            var order = await _repo.SelectById(id);

            if (order == null)
            {
                return NotFound();
            }

            return order;
        }

        [HttpGet("ByCust/{id}")]
        public async Task<ActionResult<Orders>> GetOrderByCust(int id)
        {
            var order = await _repo.SelectByCustId(id);

            if (order == null)
            {
                return NotFound();
            }

            return order;
        }
        [HttpGet("CheckMultByCust/{id}")]
        public async Task<ActionResult<int>> CheckMultOpenOrders(int id)
        {
            var order = await _repo.SelectByCustId(id);

            if (order == null)
            {
                return 0;
            }

            var multOrder = await _repo.SelectMultByCustId(id, order.Id);
            if (multOrder is null)
            {
                return 1;
            }
            else { return 2; }
        }




        // PUT: api/OrdersApi/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutOrder(int id, Orders order)
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
        public async Task<ActionResult<Orders>> PostOrder(Orders order)
        {
            await _repo.Add(order);

            return CreatedAtAction("GetOrdersModel", new { id = order.Id }, order);
        }

        // DELETE: api/OrdersApi/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Orders>> DeleteOrder(int id)
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
