using Microsoft.AspNetCore.Authorization;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChajdPizzaWebApp.Models
{
    public class Orders
    {
        public int Id { get; set; }
        [Required]
        public int CustomerId { get; set; }
        [Column(TypeName = "decimal(20,2)")]
        [Range(0.0, 1000000.0)]
        public decimal NetPrice { get; set; }
        [Required]
        public bool isCompleted { get; set; }
        public DateTime TimePlaced { get; set; }
        public string DeliveryAddress { get; set; }
        public virtual Customer Customer { get; set; }
        public List<OrderDetail> OrderDetails { get; set; }
    }
}
