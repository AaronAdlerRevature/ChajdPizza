using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.Data_Objects
{
    class OrderDetailsRepo : IOrderDetailsRepo
    {
        public Task<bool> Add(OrderDetail orderDetail)
        {
            throw new NotImplementedException();
        }

        public bool OrderDetailExists(int id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Remove(OrderDetail orderDetail)
        {
            throw new NotImplementedException();
        }

        public Task<List<OrderDetail>> SelectAll()
        {
            throw new NotImplementedException();
        }

        public Task<OrderDetail> SelectById(int? id)
        {
            throw new NotImplementedException();
        }

        public Task<List<OrderDetail>> SelectOrderAllDetails(int? orderId)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Update(OrderDetail orderDetail)
        {
            throw new NotImplementedException();
        }
    }
}
