using ChajdPizzaWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.ViewModels
{
    public class CreateCustomViewModel
    {
        public List<Size> Sizes { get; set; }
        public List<Toppings> Toppings { get; set; }
        //public List<Toppin selectedToppings { get; set; }
        public int sizeId { get; set; }

    }
}
