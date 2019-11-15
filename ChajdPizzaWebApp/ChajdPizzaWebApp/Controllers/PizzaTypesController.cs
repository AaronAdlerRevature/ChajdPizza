using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ChajdPizzaWebApp.Data;
using ChajdPizzaWebApp.Models;

namespace ChajdPizzaWebApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PizzaTypesController : ControllerBase
    {
        private readonly PizzaTypesRepo _repo;

        public PizzaTypesController(PizzaTypesRepo repo)
        {
            _repo = repo;
        }

        // GET: api/PizzaTypes/sizes
        [HttpGet("sizes/")]
        public async Task<ActionResult<IEnumerable<Size>>> GetSizes()
        {
            try
            {
                var result = await _repo.GetPizzaSizes();

                if (result == null)
                {
                    return NotFound();
                }

                return result.ToList();
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/PizzaTypes/sizes/5
        [HttpGet("sizes/{id}")]
        public async Task<ActionResult<Size>> GetSize(int id)
        {
            try
            {
                var size = await _repo.GetPizzaSize(id);

                if (size == null)
                {
                    return NotFound();
                }

                return size;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();                
            }
        }

        // GET: api/PizzaTypes/sizes/name/5
        [HttpGet("sizes/name/{id}")]
        public async Task<ActionResult<string>> GetSizeName(int id)
        {
            try
            {
                var size = await _repo.GetPizzaSizeName(id);

                if (size == null)
                {
                    return NotFound();
                }

                return size;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/PizzaTypes/sizes/price/5
        [HttpGet("sizes/price/{id}")]
        public async Task<ActionResult<decimal>> GetSizePrice(int id)
        {
            try
            {
                var size = await _repo.GetPizzaSizePrice(id);

                if (size < 0)
                {
                    return NotFound();
                }

                return size;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

       
    }
}
