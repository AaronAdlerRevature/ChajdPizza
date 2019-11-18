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
        SignInManager<IdentityUser> _signInManager;
        UserManager<IdentityUser> _userManager;

        public HomeController(ILogger<HomeController> logger, UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager)
        {
            _logger = logger;
            _signInManager = signInManager;
            _userManager = userManager;

            if (User != null)
            {

            }
            else
            {
                var g = _userManager.FindByNameAsync("GUEST");
                g.Wait();
                var o = g.Result;

                if (o == null)
                {
                    IdentityUser z = new IdentityUser("GUEST")
                    {
                        Email = "g@g.g",
                        EmailConfirmed = true,
                        NormalizedEmail = "G@G.G"
                    };

                    var q = _userManager.CreateAsync(z, "PASSword1!");
                    q.Wait();
                    var t = q.Result;

                }
                else
                {
                    var tu = _userManager.CheckPasswordAsync(o, "PASSword1!");
                    tu.Wait();
                }
            }
        }

        public IActionResult Index()
        {
            CheckIfUserLoggedIn();
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

        private void CheckIfUserLoggedIn()
        {
            if (User.Identity.IsAuthenticated)
            {
                if (Request.Cookies.ContainsKey("GuestID"))
                {
                    string guestID = Request.Cookies["GuestID"];
                    Response.Cookies.Delete("GuestID");
                    Response.Cookies.Delete("GuestName");
                    // Update current currentlogin order for guest order. 

                }
            }
            else
            {
                if (Request.Cookies.ContainsKey("GuestName"))
                {

                }
                else
                {
                    Response.Cookies.Append("GuestID", "1");
                    Response.Cookies.Append("GuestName", "Guest");
                }
            }
        }
    }
}