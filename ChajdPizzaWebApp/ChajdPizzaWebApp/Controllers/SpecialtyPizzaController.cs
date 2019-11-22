using ChajdPizzaWebApp.BL;
using ChajdPizzaWebApp.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Controllers
{
    [Authorize]
    public class SpecialtyPizzaController : Controller
    {
        OrderBl Orderlogic = new OrderBl();

        [HttpGet]
       // [Authorize]
        public async Task<IActionResult> Order(int? id)
        {
            if (id is null)
            {
                return NotFound();
            }

            //Get Username, CallApis
            var Username = User.Identity.Name;
            var ApiResponse = Orderlogic.GetPizzaOrder(Username, id);

            if(ApiResponse is Exception)
            {
                return View("../Shared/ShowException", ApiResponse);
            }
            else
            {
                return View("../Orders/SpecialtyPizzaOrder", ApiResponse);
            }
        }

        [HttpPost, AutoValidateAntiforgeryToken]
        public async Task<IActionResult> OrderSubmit([Bind("Id,OrdersId,SizeId,ToppingsSelected,ToppingsCount,Price,SpecialRequest")] OrderDetail orderDetail)//
        {
            if (ModelState.IsValid)
            {

                var ApiResponse = Orderlogic.PostPizzaOrder(orderDetail);

                if (ApiResponse is Exception)
                {
                    return View("../Shared/ShowException", ApiResponse);
                }
                else
                {
                    return View("../Orders/PizzaConfirmation", ApiResponse);
                }
            }
            return View("../Shared/ShowException", new Exception("There was an issue with your order. {Expression of sadness}.\nModel was not valid."));
        }
    }
}