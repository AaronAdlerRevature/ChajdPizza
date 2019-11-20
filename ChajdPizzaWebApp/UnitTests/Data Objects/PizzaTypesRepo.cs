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

        public PizzaTypesRepo()
        {

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

        public Task<IEnumerable<Size>> GetPizzaSizes()
        {
            throw new NotImplementedException();
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
