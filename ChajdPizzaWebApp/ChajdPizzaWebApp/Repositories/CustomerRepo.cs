using ChajdPizzaWebApp.Data;
using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Repositories
{
    public class CustomerRepo : ICustomerRepo
    {
        private ApplicationDbContext _context;
        public CustomerRepo(ApplicationDbContext ctx)
        {
            _context = ctx;
        }
        public async Task<Customer> SelectById(int? id)
        {
            var account = await _context.Customer.FirstOrDefaultAsync(o => o.Id == id);
            return account;
        }

        public async Task<Customer> SelectByUser(string Username)
        {
            var account = await _context.Customer.FirstOrDefaultAsync(o => o.UserName == Username);
            return account;
        }

        public async Task<List<Customer>> SelectAll()
        {
            var customers = await _context.Customer.ToListAsync();
            return customers;
        }
        public async Task<bool> Add(Customer customer)
        {

            _context.Add(customer);
            await _context.SaveChangesAsync();
            return true;
        }
        public async Task<bool> Put(Customer customer)
        {
            _context.Entry(customer).State = EntityState.Modified;
            await _context.SaveChangesAsync();
            return true;
        }
        public async Task<bool> Update(Customer customer)
        {
            _context.Update(customer);
            await _context.SaveChangesAsync();
            return true;
        }
        public async Task<bool> Remove(Customer customer)
        {
            _context.Remove(customer);
            await _context.SaveChangesAsync();
            return true;
        }


        public bool CustomerExists(int id)
        {
            return _context.Customer.Any(e => e.Id == id);
        }
    }
}
