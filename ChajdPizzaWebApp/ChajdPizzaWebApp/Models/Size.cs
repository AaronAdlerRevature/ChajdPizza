using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Models
{
    public class Size
    {
        [Required]
        public int Id { get; set; }
        [Required]
        public string BaseSize { get; set; }
        [Required, Column(TypeName = "decimal(18,2)")]
        public decimal S_Price { get; set; }
    }
}
