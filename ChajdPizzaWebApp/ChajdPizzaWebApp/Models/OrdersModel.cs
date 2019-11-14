using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Models
{
    public class OrdersModel
    {
        public int Customer_id { get; set; }
        public decimal NetPrice { get; set; }
        public bool isCompleted { get; set; }
        public string DeliveryAddress { get; set; }

    }
}
