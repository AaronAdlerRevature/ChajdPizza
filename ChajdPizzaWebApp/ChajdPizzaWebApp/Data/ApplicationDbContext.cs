using System;
using System.Collections.Generic;
using System.Text;
using ChajdPizzaWebApp.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace ChajdPizzaWebApp.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Order> Orders { get; set; }
        public DbSet<SecretFormula> SecretFormula { get; set; }
        public DbSet<Size> Size { get; set; }
        public DbSet<SpecialtyPizza> SpecialtyPizzas { get; set; }
        public DbSet<Toppings> Toppings { get; set; }


    }
}
