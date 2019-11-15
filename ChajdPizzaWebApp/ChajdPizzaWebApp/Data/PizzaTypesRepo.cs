using ChajdPizzaWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Data
{
    public class PizzaTypesRepo
    {
        readonly PizzaTypeDbContext _repo;

        public PizzaTypesRepo()
        {

        }

        public PizzaTypesRepo(PizzaTypeDbContext repo)
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
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
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
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
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
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
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
                throw new NullReferenceException("EMPTY QUERY IN SECRET FORMULA!");
            }

            return result;
        }
    }
}
