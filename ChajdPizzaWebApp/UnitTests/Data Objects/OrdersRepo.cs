using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
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
            });

            ordersList.Add(new Orders()
            {
                Id = 2,
                CustomerId = 1,
                isCompleted = false,
                NetPrice = 49.99M,
            });

            ordersList.Add(new Orders()
            {
                Id = 3,
                CustomerId = 2,
                isCompleted = true,
                NetPrice = 9.99M,
            });

            ordersList.Add(new Orders()
            {
                Id = 4,
                CustomerId = 3,
                isCompleted = false,
                NetPrice = 19.99M,
            });
            ordersList.Add(new Orders()
            {
                Id = 5,
                CustomerId = 3,
                isCompleted = false,
                NetPrice = 39.99M,
            });
        }

        public async Task<bool> Add(Orders order)
        {
            bool result = false;

            ordersList.Add(order);
            await Task.Delay(10);
            result = true;

            return result;
        }

        public bool OrderExists(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<bool> Remove(Orders order)
        {
            bool result = false;

            if (ordersList.Contains(order))
            {
                ordersList.Remove(order);
                await Task.Delay(10);
                result = true;
            }

            return result;
        }

        public async Task<List<Orders>> SelectAll()
        {
            List<Orders> result = null;

            var query = ordersList.Where(o => o.Id == o.Id);
            if (query.Count() > 0)
            {
                result = query.ToList();
                await Task.Delay(10);
            }

            return result;
        }

        public async Task<Orders> SelectByCustId(int? id)
        {
            Orders result = null;

            var query = ordersList.Where(o => o.CustomerId == id && !o.isCompleted);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<Orders> SelectById(int? id)
        {
            Orders result = null;

            var query = ordersList.Where(o => o.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<Orders> SelectMultByCustId(int? id, int Oid)
        {
            Orders result = null;

            var query = ordersList.Where(o => o.CustomerId == id && o.isCompleted == false && o.Id != Oid);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<bool> Update(Orders order)
        {
            bool result = false;
            Orders currentOrder = null;

            var query = ordersList.Where(o => o.Id == order.Id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                currentOrder = query.FirstOrDefault();

                currentOrder.Id = order.Id;
                currentOrder.CustomerId = order.CustomerId;
                currentOrder.DeliveryAddress = order.DeliveryAddress;
                currentOrder.isCompleted = order.isCompleted;
                currentOrder.NetPrice = order.NetPrice;
                currentOrder.TimePlaced = order.TimePlaced;

                result = true;
            }

            return result;
        }
    }
}
