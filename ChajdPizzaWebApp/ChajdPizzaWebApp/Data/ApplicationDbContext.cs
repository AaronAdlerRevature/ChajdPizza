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

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            // State Codes.
            modelBuilder.Entity<State>().HasData(new State() { ID = 1, Name = "Alabama", Abbreviation = "AL" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 2, Name = "Alaska", Abbreviation = "AK" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 3, Name = "Arizona", Abbreviation = "AZ" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 4, Name = "Arkansas", Abbreviation = "AR" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 5, Name = "California", Abbreviation = "CA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 6, Name = "Colorado", Abbreviation = "CO" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 7, Name = "Connecticut", Abbreviation = "CT" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 8, Name = "Delaware", Abbreviation = "DE" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 9, Name = "Florida", Abbreviation = "FL" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 10, Name = "Georgia", Abbreviation = "GA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 11, Name = "Hawaii", Abbreviation = "HI" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 12, Name = "Idaho", Abbreviation = "ID" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 13, Name = "Illinois", Abbreviation = "IL" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 14, Name = "Indiana", Abbreviation = "IN" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 15, Name = "Iowa", Abbreviation = "IA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 16, Name = "Kansas", Abbreviation = "KS" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 17, Name = "Kentucky", Abbreviation = "KY" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 18, Name = "Louisiana", Abbreviation = "LA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 19, Name = "Maine", Abbreviation = "ME" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 20, Name = "Maryland", Abbreviation = "MD" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 21, Name = "Massachusetts", Abbreviation = "MA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 22, Name = "Michigan", Abbreviation = "MI" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 23, Name = "Minnesota", Abbreviation = "MN" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 24, Name = "Mississippi", Abbreviation = "MS" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 25, Name = "Missouri", Abbreviation = "MO" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 26, Name = "Montana", Abbreviation = "MT" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 27, Name = "Nebraska", Abbreviation = "NE" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 28, Name = "Nevada", Abbreviation = "NV" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 29, Name = "New Hampshire", Abbreviation = "NH" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 30, Name = "New Jersey", Abbreviation = "NJ" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 31, Name = "New Mexico", Abbreviation = "NM" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 32, Name = "New York", Abbreviation = "NY" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 33, Name = "North Carolina", Abbreviation = "NC" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 34, Name = "North Dakota", Abbreviation = "ND" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 35, Name = "Ohio", Abbreviation = "OH" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 36, Name = "Oklahoma", Abbreviation = "OK" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 37, Name = "Oregon", Abbreviation = "OR" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 38, Name = "Pennsylvania", Abbreviation = "PA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 39, Name = "Rhode Island", Abbreviation = "RI" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 40, Name = "South Carolina", Abbreviation = "SC" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 41, Name = "South Dakota", Abbreviation = "SD" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 42, Name = "Tennessee", Abbreviation = "TN" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 43, Name = "Texas", Abbreviation = "TX" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 44, Name = "Utah", Abbreviation = "UT" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 45, Name = "Vermont", Abbreviation = "VT" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 46, Name = "Virginia", Abbreviation = "VA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 47, Name = "Washington", Abbreviation = "WA" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 48, Name = "West Virginia", Abbreviation = "WV" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 49, Name = "Wisconsin", Abbreviation = "WI" });
            modelBuilder.Entity<State>().HasData(new State() { ID = 50, Name = "Wyoming", Abbreviation = "WY" });
        }

        public DbSet<Orders> Orders { get; set; }
        public DbSet<SecretFormula> SecretFormula { get; set; }
        public DbSet<Size> Size { get; set; }
        public DbSet<SpecialtyPizza> SpecialtyPizzas { get; set; }
        public DbSet<Toppings> Toppings { get; set; }
        public DbSet<ChajdPizzaWebApp.Models.Customer> Customer { get; set; }

        public DbSet<OrderDetail> OrderDetails { get; set; }


    }
}
