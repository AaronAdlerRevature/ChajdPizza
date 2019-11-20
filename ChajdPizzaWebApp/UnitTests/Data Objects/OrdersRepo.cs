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
        List<Orders> ordersList = null;

        public OrdersRepo()
        {
            ordersList = new List<Orders>();

            ordersList.Add(new Orders()
            {
                Id = 1,
                CustomerId = 1,
                DeliveryAddress = "123 A Street",
                isCompleted = true,
                NetPrice = 29.99M,
                TimePlaced = DateTime.Now,
            });

            ordersList.Add(new Orders()
            {
                Id = 2,
                CustomerId = 1,
                DeliveryAddress = "123 A Street",
                isCompleted = true,
                NetPrice = 49.99M,
                TimePlaced = DateTime.Now.AddDays(-10),
            });

            ordersList.Add(new Orders()
            {
                Id = 3,
                CustomerId = 2,
                DeliveryAddress = "456 Q Avenue",
                isCompleted = false,
                NetPrice = 9.99M,
                TimePlaced = DateTime.Now,
            });

            ordersList.Add(new Orders()
            {
                Id = 4,
                CustomerId = 3,
                DeliveryAddress = "Sesame Street",
                isCompleted = false,
                NetPrice = 19.99M,
                TimePlaced = DateTime.Now,
            });
            ordersList.Add(new Orders()
            {
                Id = 5,
                CustomerId = 3,
                DeliveryAddress = "Sesame Street",
                isCompleted = false,
                NetPrice = 39.99M,
                TimePlaced = DateTime.Now.AddDays(-7),
            });
        }

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

        public async Task<List<Orders>> SelectAll()
        {
            List<Orders> result = null;

            var query = ordersList.Where(o => o.Id == o.Id);
            if (query.Count()>0)
            {
                result = query.ToList();
                await Task.Delay(10);
            }

            return result;
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
