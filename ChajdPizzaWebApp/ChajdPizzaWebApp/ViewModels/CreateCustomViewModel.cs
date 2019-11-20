using ChajdPizzaWebApp.Models;
using System.Collections.Generic;

namespace ChajdPizzaWebApp.ViewModels
{
    public class CreateCustomViewModel
    {
        public List<Size> Sizes { get; set; }
        public List<Toppings> Toppings { get; set; }

    }
}
