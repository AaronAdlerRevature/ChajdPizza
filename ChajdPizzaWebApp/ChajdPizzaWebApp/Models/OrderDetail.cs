using Microsoft.AspNetCore.Authorization;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChajdPizzaWebApp.Models
{
    [Authorize]
    public class OrderDetail
    {
       
        public int Id { get; set; }

        [Required]
        public int OrdersId { get; set; }

        [Required]
        public int SizeId { get; set; }

        [Display(Name = "Selected Toppings")]
        public string ToppingsSelected { get; set; }

        [Display(Name = "Number of Toppings")]
        public int ToppingsCount { get; set; }

        [Column(TypeName = "decimal(20,2)")]
        [Range(0.0, 1000000.0)]
        public decimal Price { get; set; }

        public string SpecialRequest { get; set; }

        public Orders Orders { get; set; }
        public Size Sizes { get; set; }

    }
}
