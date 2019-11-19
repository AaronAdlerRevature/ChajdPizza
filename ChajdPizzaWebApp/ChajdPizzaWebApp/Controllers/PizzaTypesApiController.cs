using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ChajdPizzaWebApp.Data;
using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;

namespace ChajdPizzaWebApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PizzaTypesAPIController : ControllerBase
    {
        private readonly IPizzaTypesRepo _repo;

        public PizzaTypesAPIController(IPizzaTypesRepo repo)
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

        // GET: api/Special
        [HttpGet("special/")]
        public async Task<ActionResult<IEnumerable<SpecialtyPizza>>> GetSpecialtyPizzas()
        {
            try
            {
                var result = await _repo.GetSpecialtyPizzas();

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

        // GET: api/Special/5
        [HttpGet("special/{id}")]
        public async Task<ActionResult<SpecialtyPizza>> GetSpecialtyPizza(int id)
        {
            try
            {
                var result = await _repo.GetSpecialtyPizza(id);

                if (result == null)
                {
                    return NotFound();
                }

                return result;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/Special/price/5
        [HttpGet("special/price/{id}")]
        public async Task<ActionResult<decimal>> GetSpecialtyPizzaPrice(int id)
        {
            try
            {
                var result = await _repo.GetSpecialtyPizzaPrice(id);

                if (result < 0)
                {
                    return NotFound();
                }

                return Convert.ToDecimal(result);
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/Special/name/5
        [HttpGet("special/name/{id}")]
        public async Task<ActionResult<string>> GetSpecialtyPizzaName(int id)
        {
            try
            {
                var result = await _repo.GetSpecialtyPizzaName(id);

                if (result == null)
                {
                    return NotFound();
                }

                return result;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/Special/desc/5
        [HttpGet("special/desc/{id}")]
        public async Task<ActionResult<string>> GetSpecialtyPizzaDescription(int id)
        {
            try
            {
                var result = await _repo.GetSpecialtyPizzaDescription(id);

                if (result == null)
                {
                    return NotFound();
                }

                return result;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/Toppings
        [HttpGet("toppings/")]
        public async Task<ActionResult<IEnumerable<Toppings>>> GetToppings()
        {
            try
            {
                var result = await _repo.GetToppings();

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

        // GET: api/Toppings/5
        [HttpGet("toppings/{id}")]
        public async Task<ActionResult<Toppings>> GetTopping(int id)
        {
            try
            {
                var result = await _repo.GetTopping(id);

                if (result == null)
                {
                    return NotFound();
                }

                return result;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/Toppings/name/5
        [HttpGet("toppings/name/{id}")]
        public async Task<ActionResult<string>> GetToppingName(int id)
        {
            try
            {
                var result = await _repo.GetToppingName(id);

                if (result == null)
                {
                    return NotFound();
                }

                return result;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/sf
        [HttpGet("sf/")]
        public async Task<ActionResult<IEnumerable<SecretFormula>>> GetSecretFormulas()
        {
            try
            {
                var result = await _repo.GetSecretFormulas();

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

        // GET: api/sf/5
        [HttpGet("sf/{id}")]
        public async Task<ActionResult<SecretFormula>> GetSecretFormula(int id)
        {
            try
            {
                var result = await _repo.GetSecretFormula(id);

                if (result == null)
                {
                    return NotFound();
                }

                return result;
            }
            catch (Exception WTF)
            {
                // Log error.
                Console.WriteLine(WTF);
                return NotFound();
            }
        }

        // GET: api/sf/price/5
        [HttpGet("sf/price/{id}")]
        public async Task<ActionResult<decimal>> GetSecretFormulaPrice(int id)
        {
            try
            {
                var result = await _repo.GetSecretFormulaPrice(id);

                if (result == null)
                {
                    return NotFound();
                }

                return result;
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
