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
        List<OrderDetail> orderDetails = null;

        public OrderDetailsRepo()
        {
            orderDetails = new List<OrderDetail>();

            orderDetails.Add(new OrderDetail()
            {
                Id = 1,
                OrderId = 1,
                Price = 7.99,
                SizeId = 1,
                SpecialRequest = "Special A",
                ToppingsCount = 2,
                ToppingsSelected = "TopA,TopB",
            });

            orderDetails.Add(new OrderDetail()
            {
                Id = 2,
                OrderId = 1,
                Price = 12.99,
                SizeId = 2,
                SpecialRequest = "Special B",
                ToppingsCount = 4,
                ToppingsSelected = "TopA,TopB,TopC,TopD",
            });

            orderDetails.Add(new OrderDetail()
            {
                Id = 3,
                OrderId = 2,
                Price = 8.99,
                SizeId = 3,
                SpecialRequest = "Special C",
                ToppingsCount = 1,
                ToppingsSelected = "TopA",
            });
        }


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
