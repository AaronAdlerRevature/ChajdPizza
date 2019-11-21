using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.Data_Objects
{
    class PizzaTypesRepo : IPizzaTypesRepo
    {
        List<Size> sizeList = null;
        List<SpecialtyPizza> specialtyPizzaList = null;
        List<Toppings> toppingList = null;

        public PizzaTypesRepo(bool canFill=true)
        {
            if (canFill)
            {
                sizeList = new List<Size>();

                sizeList.Add(new Size()
                {
                    Id = 1,
                    BaseSize = "Small",
                    S_Price = 5.99M,
                });
                sizeList.Add(new Size()
                {
                    Id = 2,
                    BaseSize = "Medium",
                    S_Price = 7.99M,
                });
                sizeList.Add(new Size()
                {
                    Id = 3,
                    BaseSize = "Large",
                    S_Price = 9.99M,
                });

                specialtyPizzaList = new List<SpecialtyPizza>();

                specialtyPizzaList.Add(new SpecialtyPizza()
                {
                    ID = 1,
                    Name = "Special A",
                    Description = "TopA,TopB,TopC",
                    Price = 10.99M,
                });
                specialtyPizzaList.Add(new SpecialtyPizza()
                {
                    ID = 2,
                    Name = "Special B",
                    Description = "TopC,TopE",
                    Price = 9.99M,
                });
                specialtyPizzaList.Add(new SpecialtyPizza()
                {
                    ID = 3,
                    Name = "Special C",
                    Description = "TopA,TopB,TopC,TopD,TopE",
                    Price = 13.99M,
                });

                toppingList = new List<Toppings>();

                toppingList.Add(new Toppings()
                {
                    Id = 1,
                    Name = "TopA",
                });
                toppingList.Add(new Toppings()
                {
                    Id = 2,
                    Name = "TopB",
                });
                toppingList.Add(new Toppings()
                {
                    Id = 3,
                    Name = "TopC",
                });
                toppingList.Add(new Toppings()
                {
                    Id = 4,
                    Name = "TopD",
                });
                toppingList.Add(new Toppings()
                {
                    Id = 5,
                    Name = "TopE",
                });
            }
        }

        public async Task<Size> GetPizzaSize(int id)
        {
            Size result = null;

            var query = sizeList.Where(s => s.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<string> GetPizzaSizeName(int id)
        {
            string result = null;

            var query = sizeList.Where(s => s.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().BaseSize;
            }

            return result;
        }

        public async Task<decimal> GetPizzaSizePrice(int id)
        {
            decimal result = -1M;

            var query = sizeList.Where(s => s.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().S_Price;
            }

            return result;
        }

        public async Task<IEnumerable<Size>> GetPizzaSizes()
        {
            IEnumerable<Size> result = null;

            var query = sizeList.Where(s => s.Id == s.Id);
            await Task.Delay(10);
            if (query .Count() > 0)
            {
                result = query;
            }

            return result;
        }

        public Task<SecretFormula> GetSecretFormula(int id)
        {
            throw new NotImplementedException();
        }

        public Task<decimal> GetSecretFormulaPrice(int id)
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<SecretFormula>> GetSecretFormulas()
        {
            throw new NotImplementedException();
        }

        public async Task<SpecialtyPizza> GetSpecialtyPizza(int id)
        {
            SpecialtyPizza result = null;

            var query = specialtyPizzaList.Where(s => s.ID == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<string> GetSpecialtyPizzaDescription(int id)
        {
            string result = null;

            var query = specialtyPizzaList.Where(s => s.ID == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Description;
            }

            return result;
        }

        public async Task<string> GetSpecialtyPizzaName(int id)
        {
            string result = null;

            var query = specialtyPizzaList.Where(s => s.ID == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Name;
            }

            return result;
        }

        public async Task<decimal> GetSpecialtyPizzaPrice(int id)
        {
            decimal result = -1M;

            var query = specialtyPizzaList.Where(s => s.ID == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Price;
            }

            return result;
        }

        public async Task<IEnumerable<SpecialtyPizza>> GetSpecialtyPizzas()
        {
            IEnumerable<SpecialtyPizza> result = null;

            var query = specialtyPizzaList.Where(s => s.ID == s.ID);
            await Task.Delay(10);
            if (query.Count()>0)
            {
                result = query;
            }

            return result;
        }

        public async Task<Toppings> GetTopping(int id)
        {
            Toppings result = null;

            var query = toppingList.Where(t => t.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<string> GetToppingName(int id)
        {
            string result = null;

            var query = toppingList.Where(t => t.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault().Name;
            }

            return result;
        }

        public async Task<IEnumerable<Toppings>> GetToppings()
        {
            IEnumerable<Toppings> result = null;

            var query = toppingList.Where(t => t.Id == t.Id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query;
            }

            return result;
        }
    }
}