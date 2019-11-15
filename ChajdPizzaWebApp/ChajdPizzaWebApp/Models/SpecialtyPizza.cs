using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Models
{
    public class SpecialtyPizza
    {
        public int ID { get; set; }

        public string Name { get; set; }

        [DataType(DataType.Currency)]
        [Range(0.0,1000000.0)]
        public float Price { get; set; }

        public string Description { get; set; }
    }
}
