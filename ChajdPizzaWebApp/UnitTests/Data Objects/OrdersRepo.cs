using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.Data_Objects
{
    class OrdersRepo : IOrdersRepo
    {
        public Task<bool> Add(Orders order)
        {
            throw new NotImplementedException();
        }

        public bool OrderExists(int id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Remove(Orders order)
        {
            throw new NotImplementedException();
        }

        public Task<List<Orders>> SelectAll()
        {
            throw new NotImplementedException();
        }

        public Task<Orders> SelectByCustId(int? id)
        {
            throw new NotImplementedException();
        }

        public Task<Orders> SelectById(int? id)
        {
            throw new NotImplementedException();
        }

        public Task<Orders> SelectMultByCustId(int? id, int Oid)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Update(Orders order)
        {
            throw new NotImplementedException();
        }
    }
}
