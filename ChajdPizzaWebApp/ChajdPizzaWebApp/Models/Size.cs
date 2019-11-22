using Microsoft.AspNetCore.Authorization;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChajdPizzaWebApp.Models
{
    [Authorize]
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
