using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Models
{
    public class Orders
    {
        public int Id { get; set; }
        [Required]
        public int Customer_id { get; set; }
        public decimal NetPrice { get; set; }
        [Required]
        public bool isCompleted { get; set; }
        public DateTime TimePlaced { get; set; }
        public string DeliveryAddress { get; set; }
        public virtual Customer Customer { get; set; }
        public List<OrderDetail> OrderDetails { get; set; }
    }
}
