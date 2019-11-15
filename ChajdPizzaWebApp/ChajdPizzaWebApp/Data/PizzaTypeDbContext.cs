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

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            //modelBuilder.Entity<SecretFormula>().HasData(new SecretFormula() { Id = 1, Price = 1.0M });
            
            //modelBuilder.Entity<Size>().HasData(new Size() { Id = 1, BaseSize = "Small", S_Price = 3.0M });
            //modelBuilder.Entity<Size>().HasData(new Size() { Id = 2, BaseSize = "Medium", S_Price = 5.0M });
            //modelBuilder.Entity<Size>().HasData(new Size() { Id = 3, BaseSize = "Large", S_Price = 7.0M });

            //modelBuilder.Entity<SpecialtyPizza>().HasData(new SpecialtyPizza() { ID = 1, Name = "Special", Description = "Special Pizza", Price = 10.0 });

            //modelBuilder.Entity<Toppings>().HasData(new Toppings() { Id = 1, Name = "Pepperoni" });
        }

        public DbSet<SecretFormula> SecretFormula { get; set; }
        public DbSet<Size> Size { get; set; }
        public DbSet<SpecialtyPizza> SpecialtyPizzas { get; set; }
        public DbSet<Toppings> Toppings { get; set; }
    }
}
