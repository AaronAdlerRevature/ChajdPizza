using System.ComponentModel.DataAnnotations;

namespace ChajdPizzaWebApp.Models
{
    public class Customer
    {
        [Required, Key]
        public int Id { get; set; }

        public string UserName { get; set; }

        public string Name { get; set; }

        public string Street { get; set; }

        public string City { get; set; }

        public int StateID { get; set; }

        public State State { get; set; }

        public int ZipCode { get; set; }
    }
}
