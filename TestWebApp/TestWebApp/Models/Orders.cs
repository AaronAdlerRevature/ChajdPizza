using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TestWebApp.Models
{
    public class Orders
    {
        public int Id { get; set; }
        public List<Customer> customers { get; set; }
        public List<pizza> pizzas { get; set; }
    }
}
