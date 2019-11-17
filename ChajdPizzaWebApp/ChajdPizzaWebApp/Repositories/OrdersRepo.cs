using ChajdPizzaWebApp.Data;
using ChajdPizzaWebApp.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Repositories
{
    public class OrdersRepo
    {
        private ApplicationDbContext _context;
        public OrdersRepo(ApplicationDbContext ctx)
        {
            _context = ctx;
        }
        public async Task<Orders> SelectById(int? id)
        {
            var account = await _context.Orders.FirstOrDefaultAsync(o => o.Id == id);
            return account;
        }
       
        public async Task<List<Orders>> SelectAll()
        {
            var orders = await _context.Orders.ToListAsync();
            return orders;
        }
        public async Task<bool> Add(Orders order)
        {

            _context.Add(order);
            await _context.SaveChangesAsync();
            return true;
        }
        public async Task<bool> Update(Orders order)
        {
            _context.Update(order);
            await _context.SaveChangesAsync();
            return true;
        }
        public async Task<bool> Remove(Orders order)
        {
            _context.Remove(order);
            await _context.SaveChangesAsync();
            return true;
        }
        public bool OrderExists(int id)
        {
            return _context.Orders.Any(e => e.Id == id);
        }
    }
}
