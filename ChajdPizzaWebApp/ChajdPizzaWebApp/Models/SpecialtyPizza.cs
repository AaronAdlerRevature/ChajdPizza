using Microsoft.AspNetCore.Authorization;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChajdPizzaWebApp.Models
{
    public class SpecialtyPizza
    {
        public int ID { get; set; }

        public string Name { get; set; }

        [Column(TypeName = "decimal(20,2)")]
        [Range(0.0, 1000000.0)]
        public decimal Price { get; set; }

        public string Description { get; set; }
    }
}
