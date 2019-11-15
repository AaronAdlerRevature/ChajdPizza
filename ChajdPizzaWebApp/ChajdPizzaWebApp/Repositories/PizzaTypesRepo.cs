using ChajdPizzaWebApp.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Data
{
    public class PizzaTypesRepo
    {
        readonly ApplicationDbContext _context;

        public PizzaTypesRepo()
        {

        }

        public PizzaTypesRepo(ApplicationDbContext ctx)
        {
            _context = ctx;
        }

        public async Task<IEnumerable<SecretFormula>> GetSecretFormulas()
        {
            IEnumerable<SecretFormula> result = null;

            var query = _context.SecretFormula.Where(c => c.Id == c.Id);
            if (query.Count()>0)
            {
                result = await query.ToListAsync();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
            }

            return result;
        }

        public async Task<SecretFormula> GetSecretFormula(int id)
        {
            SecretFormula result = null;

            var query = _context.SecretFormula.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = await query.FirstOrDefaultAsync();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
            }

            return result;
        }

        public async Task<decimal> GetSecretFormulaPrice(int id)
        {
            decimal result = -1;

            var query = _context.SecretFormula.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item.Price;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
            }

            return result;
        }

        public async Task<IEnumerable<Size>> GetPizzaSizes()
        {
            IEnumerable<Size> result = null;

            var query = _context.Size.Where(c => c.Id == c.Id);
            if (query.Count() > 0)
            {
                result = await query.ToListAsync();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public async Task<Size> GetPizzaSize(int id)
        {
            Size result = null;

            var query = _context.Size.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = await query.FirstOrDefaultAsync();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public async Task<string> GetPizzaSizeName(int id)
        {
            string result = null;

            var query = _context.Size.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item.BaseSize;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public async Task<decimal> GetPizzaSizePrice(int id)
        {
            decimal result = -1;

            var query = _context.Size.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item.S_Price;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public async Task<IEnumerable<SpecialtyPizza>> GetSpecialtyPizzas()
        {
            IEnumerable<SpecialtyPizza> result = null;

            var query = _context.SpecialtyPizzas.Where(c => c.ID == c.ID);
            if (query.Count() > 0)
            {
                result = await query.ToListAsync();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public async Task<SpecialtyPizza> GetSpecialtyPizza(int id)
        {
            SpecialtyPizza result = null;

            var query = _context.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                result = await query.FirstOrDefaultAsync();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public async Task<double> GetSpecialtyPizzaPrice(int id)
        {
            double result = 0;

            var query = _context.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item.Price;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public async Task<string> GetSpecialtyPizzaName(int id)
        {
            string result = "";

            var query = _context.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item.Name;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public async Task<string> GetSpecialtyPizzaDescription(int id)
        {
            string result = "";

            var query = _context.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item.Description;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public async Task<IEnumerable<Toppings>> GetToppings()
        {
            IEnumerable<Toppings> result = null;

            var query = _context.Toppings.Where(c => c.Id == c.Id);
            if (query.Count() > 0)
            {
                result = await query.ToListAsync();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN TOPPINGS!");
            }

            return result;
        }

        public async Task<Toppings> GetTopping(int id)
        {
            Toppings result = null;

            var query = _context.Toppings.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN TOPPINGS!");
            }

            return result;
        }

        public async Task<string> GetToppingName(int id)
        {
            string result = null;

            var query = _context.Toppings.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                var item = await query.FirstOrDefaultAsync();
                result = item.Name;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN TOPPINGS!");
            }

            return result;
        }
    }
}
