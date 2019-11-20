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
            }
        }

        public Task<Size> GetPizzaSize(int id)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetPizzaSizeName(int id)
        {
            throw new NotImplementedException();
        }

        public Task<decimal> GetPizzaSizePrice(int id)
        {
            throw new NotImplementedException();
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

        public Task<SpecialtyPizza> GetSpecialtyPizza(int id)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetSpecialtyPizzaDescription(int id)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetSpecialtyPizzaName(int id)
        {
            throw new NotImplementedException();
        }

        public Task<double> GetSpecialtyPizzaPrice(int id)
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<SpecialtyPizza>> GetSpecialtyPizzas()
        {
            throw new NotImplementedException();
        }

        public Task<Toppings> GetTopping(int id)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetToppingName(int id)
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<Toppings>> GetToppings()
        {
            throw new NotImplementedException();
        }
    }
}
