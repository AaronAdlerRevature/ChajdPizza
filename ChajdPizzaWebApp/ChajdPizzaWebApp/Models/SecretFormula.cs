using Microsoft.AspNetCore.Authorization;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ChajdPizzaWebApp.Models
{
    [Authorize]
    public class SecretFormula
    {
        [Required]
        public int Id { get; set; }
        [Required, Column(TypeName = "decimal(18,2)")]
        public decimal Price { get; set; }
    }
}
