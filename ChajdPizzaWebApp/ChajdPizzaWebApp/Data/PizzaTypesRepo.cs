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

    }
}
