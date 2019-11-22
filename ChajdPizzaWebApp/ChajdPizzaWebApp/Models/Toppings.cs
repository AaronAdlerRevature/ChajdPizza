using Microsoft.AspNetCore.Authorization;
using System.ComponentModel.DataAnnotations;

namespace ChajdPizzaWebApp.Models
{
    [Authorize]
    public class Toppings
    {
        [Required, Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
    }
}
