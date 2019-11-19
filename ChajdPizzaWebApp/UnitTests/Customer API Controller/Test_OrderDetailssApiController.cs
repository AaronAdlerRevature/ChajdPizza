using ChajdPizzaWebApp.Controllers;
using ChajdPizzaWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using UnitTests.Data_Objects;

namespace UnitTests
{
    [TestClass]
    public class Test_OrderDetailsApiController
    {
        [TestMethod]
        public void GetOrderDetails()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrderDetails();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<OrderDetail> testList = new List<OrderDetail>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 3);
            Assert.AreEqual(testList[0].OrderId, 1);
            Assert.AreEqual(testList[1].Price, 12.99);
            Assert.AreEqual(testList[2].OrderId, 2);

            #endregion
        }

      
    }
}
