using ChajdPizzaWebApp.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Data
{
    public class PizzaTypeDbContext : DbContext
    {
        public PizzaTypeDbContext()
        {

        }

        public PizzaTypeDbContext(DbContextOptions<PizzaTypeDbContext> options)
          : base(options)
        {

        }

        public DbSet<SecretFormula> SecretFormula { get; set; }
        public DbSet<Size> Size { get; set; }
        public DbSet<SpecialtyPizza> SpecialtyPizzas { get; set; }
        public DbSet<Toppings> Toppings { get; set; }
    }
}
