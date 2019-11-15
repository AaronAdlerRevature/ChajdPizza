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

            var query = _repo.SecretFormula.Where(c => c.Id == c.Id);
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
    }
}
