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

        public async Task<bool> Put(Customer customer)
        {
            bool result = false;

            var query = customerList.Where(c => c.Id == customer.Id);
            await Task.Delay(10);
            if (query.Count()>0)
            {
                Customer currentCustomer = query.FirstOrDefault();
                currentCustomer.Id = customer.Id;
                currentCustomer.Name= customer.Name;
                currentCustomer.UserName = customer.UserName;
                currentCustomer.Street = customer.Street;
                currentCustomer.City = customer.City;
                currentCustomer.StateID = customer.StateID;
                currentCustomer.ZipCode = customer.ZipCode;
            }
            //else
            //{
            //    throw new DbUpdateConcurrencyException("NO RESULTS!");
            //}

            return result;
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
            Customer result = null;

            var query = customerList.Where(c => c.Id == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<Customer> SelectByUser(string Username)
        {
            Customer result = null;

            var query = customerList.Where(c => c.UserName == Username);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public Task<bool> Update(Customer customer)
        {
            throw new NotImplementedException();
        }
    }
}
