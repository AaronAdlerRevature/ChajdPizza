using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using ChajdPizzaWebApp.Models;
using System.Security.Claims;
using Microsoft.AspNetCore.Identity;

namespace ChajdPizzaWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger, UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager)
        {
            var x = userManager;

            var g = userManager.FindByNameAsync("GUEST");
            g.Wait();
            var o = g.Result;

            //if (TempData["User"]!= null)
            //{
            //    var me = TempData["User"];

            //    Console.WriteLine(me);
            //}

            if (o == null)
            {

                IdentityUser z = new IdentityUser("GUEST")
                {
                    //Email = "",
                };
                
                var q = userManager.CreateAsync(z, "PASSword1!");

                q.Wait();
                var t = q.Result;

            }
            else
            {
                //if (TempData["User"] != null)
                //{
                //    var me = TempData["User"];

                //    Console.WriteLine(me);
                //}

                //signInManager.SignInAsync(o, false);
                var tu = userManager.CheckPasswordAsync(o, "PASSword1!");
                tu.Wait();
                if (tu.Result)
                {
                    int wwo = 0;
                    wwo = 10;

                    //TempData["USER"] = o.UserName;
                }
                else
                {
                    int wwo = 0;
                    wwo = 10;

                }
            }

            
             _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Deals()
        {
            return View();
        }
        public IActionResult TestingToping()
        {
            return View();
        }
        public IActionResult Menu()
        {
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
