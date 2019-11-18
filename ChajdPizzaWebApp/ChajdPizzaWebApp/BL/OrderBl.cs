using ChajdPizzaWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.BL
{
    public class OrderBl
    {
        public Object CheckOpenOrder(IEnumerable<Orders> orders)
        {
            Orders order = new Orders();
            int count = 0;
            foreach (var item in orders)
            {
                if (item.isCompleted == false)
                {
                    order = item;
                    count++;
                }
            }
            if (count > 1)
            {
                Exception e = new Exception("Multiple open orders found for customer.");
                return (e);
            }
            else if (count == 1)
            {
                return (order);
            }
            else { return null; }
        }

        public void CreateNewOrder(int CustomerId)
        {


        }


    }
}
