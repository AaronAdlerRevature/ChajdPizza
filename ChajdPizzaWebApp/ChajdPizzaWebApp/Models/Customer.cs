using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Models
{
    public class Customer
    {
        public int ID { get; set; }

        public string UserName { get; set; }

        public string Name { get; set; }
        
        public string Street { get; set; }
        
        public string City { get; set; }

        public int StateID { get; set; }

        public State State { get; set; }

        public int ZipCode { get; set; }
    }
}
