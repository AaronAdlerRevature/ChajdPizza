using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
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
                OrdersId = 1,
                Price = 7.99M,
                SizeId = 1,
                SpecialRequest = "Special A",
                ToppingsCount = 2,
                ToppingsSelected = "TopA,TopB",
            });

            orderDetails.Add(new OrderDetail()
            {
                Id = 2,
                OrdersId = 1,
                Price = 12.99M,
                SizeId = 2,
                SpecialRequest = "Special B",
                ToppingsCount = 4,
                ToppingsSelected = "TopA,TopB,TopC,TopD",
            });

            orderDetails.Add(new OrderDetail()
            {
                Id = 3,
                OrdersId = 2,
                Price = 8.99M,
                SizeId = 3,
                SpecialRequest = "Special C",
                ToppingsCount = 1,
                ToppingsSelected = "TopA",
            });
        }


        public async Task<bool> Add(OrderDetail orderDetail)
        {
            bool result = false;

            orderDetails.Add(orderDetail);
            await Task.Delay(10);
            result = true;

            return result;
        }

        public bool OrderDetailExists(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<bool> Remove(OrderDetail orderDetail)
        {
            bool result = false;

            if (orderDetails.Contains(orderDetail))
            {
                orderDetails.Remove(orderDetail);
                result = false;
                await Task.Delay(10);
            }

            return result;
        }

        public async Task<List<OrderDetail>> SelectAll()
        {
            List<OrderDetail> result = null;

            var query = orderDetails.Where(o => o.Id == o.Id);
            await Task.Delay(10);
            if (query.Count()>0)
            {
                result = query.ToList();
            }

            return result;
        }

        public async Task<OrderDetail> SelectById(int? id)
        {
            OrderDetail result = null;

            var query = orderDetails.Where(o => o.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<List<OrderDetail>> SelectOrderAllDetails(int? orderId)
        {
            List<OrderDetail> result = null;

            var query = orderDetails.Where(o => o.OrdersId == orderId);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.ToList();
            }

            return result;
        }

        public async Task<bool> Update(OrderDetail orderDetail)
        {
            bool isGood = false;

            OrderDetail result = null;

            var query = orderDetails.Where(o => o.Id == orderDetail.Id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
                result.Id = orderDetail.Id;
                result.OrdersId = orderDetail.OrdersId;
                result.Price = orderDetail.Price;
                result.SizeId = orderDetail.SizeId;
                result.SpecialRequest = orderDetail.SpecialRequest;
                result.ToppingsCount = orderDetail.ToppingsCount;
                result.ToppingsSelected = orderDetail.ToppingsSelected;

                isGood = true;
            }

            return isGood;
        }
    }
}
