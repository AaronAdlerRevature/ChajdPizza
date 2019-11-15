using ChajdPizzaWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Data
{
    public class PizzaTypesRepo
    {
        readonly ApplicationDbContext _repo;

        public PizzaTypesRepo()
        {

        }

        public PizzaTypesRepo(ApplicationDbContext repo)
        {
            _repo = repo;
        }

        public IEnumerable<SecretFormula> GetSecretFormulas()
        {
            IEnumerable<SecretFormula> result = null;

            var query = _repo.SecretFormula.Where(c => c.Id == c.Id);
            if (query.Count()>0)
            {
                result = query;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
            }

            return result;
        }

        public SecretFormula GetSecretFormula(int id)
        {
            SecretFormula result = null;

            var query = _repo.SecretFormula.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
            }

            return result;
        }

        public IEnumerable<Size> GetPizzaSizes()
        {
            IEnumerable<Size> result = null;

            var query = _repo.Size.Where(c => c.Id == c.Id);
            if (query.Count() > 0)
            {
                result = query;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public Size GetPizzaSize(int id)
        {
            Size result = null;

            var query = _repo.Size.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public string GetPizzaSizeName(int id)
        {
            string result = null;

            var query = _repo.Size.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().BaseSize;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public decimal GetPizzaSizePrice(int id)
        {
            decimal result = 0;

            var query = _repo.Size.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().S_Price;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN PIZZA SIZE!");
            }

            return result;
        }

        public IEnumerable<SpecialtyPizza> GetSpecialtyPizzas()
        {
            IEnumerable<SpecialtyPizza> result = null;

            var query = _repo.SpecialtyPizzas.Where(c => c.ID == c.ID);
            if (query.Count() > 0)
            {
                result = query;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public SpecialtyPizza GetSpecialtyPizza(int id)
        {
            SpecialtyPizza result = null;

            var query = _repo.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public double GetSpecialtyPizzaPrice(int id)
        {
            double result = 0;

            var query = _repo.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Price;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public string GetSpecialtyPizzaName(int id)
        {
            string result = "";

            var query = _repo.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Name;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public string GetSpecialtyPizzaDescription(int id)
        {
            string result = "";

            var query = _repo.SpecialtyPizzas.Where(c => c.ID == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Description;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN SPECIALTY PIZZA!");
            }

            return result;
        }

        public IEnumerable<Toppings> GetToppings()
        {
            IEnumerable<Toppings> result = null;

            var query = _repo.Toppings.Where(c => c.Id == c.Id);
            if (query.Count() > 0)
            {
                result = query;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN TOPPINGS!");
            }

            return result;
        }

        public Toppings GetTopping(int id)
        {
            Toppings result = null;

            var query = _repo.Toppings.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN TOPPINGS!");
            }

            return result;
        }

        public string GetToppingName(int id)
        {
            string result = null;

            var query = _repo.Toppings.Where(c => c.Id == id);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Name;
            }
            else
            {
                throw new NullReferenceException("EMPTY QUERY IN TOPPINGS!");
            }

            return result;
        }
    }
}
