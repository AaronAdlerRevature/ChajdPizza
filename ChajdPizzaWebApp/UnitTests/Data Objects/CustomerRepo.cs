using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTests.Data_Objects
{
    class CustomerRepo : ICustomerRepo
    {
        List<Customer> customerList;

        public CustomerRepo()
        {
            customerList = new List<Customer>();

            customerList.Add(new Customer()
            {
                Id = 1,
                Name = "John Doe",
                UserName= "MyEmail@Email.com",
                Street = "123 A Street",
                City = "Here",
                StateID = 1,
                ZipCode = 10000,
            });

            customerList.Add(new Customer()
            {
                Id = 2,
                Name = "Mary Sue",
                UserName = "HerEmail@Email.com",
                Street = "345 B Avenue",
                City = "There",
                StateID = 2,
                ZipCode = 20000,
            });
        }

        public Task<bool> Add(Customer customer)
        {
            throw new NotImplementedException();
        }

        public bool CustomerExists(int id)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Put(Customer customer)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Remove(Customer customer)
        {
            throw new NotImplementedException();
        }

        public async Task<List<Customer>> SelectAll()
        {
            var result = new List<Customer>(customerList);
            await Task.Delay(10);

            return result;
        }

        public async Task<Customer> SelectById(int? id)
        {
            var result = customerList.Where(c => c.Id == id).FirstOrDefault();
            await Task.Delay(10);

            return result;
        }

        public Task<Customer> SelectByUser(string Username)
        {
            throw new NotImplementedException();
        }

        public Task<bool> Update(Customer customer)
        {
            throw new NotImplementedException();
        }
    }
}
