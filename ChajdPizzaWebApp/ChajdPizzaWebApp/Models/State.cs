using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Models
{
    public class State
    {
        public int ID { get; set; }

        public string Name { get; set; }

        [StringLength(2)]
        public string Abbreviation { get; set; }
    }
}
