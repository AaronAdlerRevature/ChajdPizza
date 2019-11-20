using System.ComponentModel.DataAnnotations;

namespace ChajdPizzaWebApp.Models
{
    public class State
    {
        [Key]
        public int ID { get; set; }

        public string Name { get; set; }

        [StringLength(2)]
        public string Abbreviation { get; set; }
    }
}
