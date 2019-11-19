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

        [TestMethod]
        public void GetOrderDetailByID_Valid()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrderDetail(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            OrderDetail testResult = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testResult.OrderId, 1);
            Assert.AreEqual(testResult.SizeId, 1);
            Assert.AreEqual(testResult.SpecialRequest, "Special A");

            #endregion
        }

        [TestMethod]
        public void GetOrderDetailByID_NonExistingID()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrderDetail(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetOrderDetailByID_InValid()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrderDetail(2);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            OrderDetail testResult = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testResult.OrderId, 2);
            Assert.AreNotEqual(testResult.SizeId, 1);
            Assert.AreNotEqual(testResult.SpecialRequest, "Special A");

            #endregion
        }

        [TestMethod]
        public void GetOrderDetailsByOrderID_Valid()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetDetailsOfAnOrder(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<OrderDetail> testResult = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testResult.Count, 2);
            Assert.AreEqual(testResult[0].Id, 1);
            Assert.AreEqual(testResult[0].SpecialRequest, "Special A");
            Assert.AreEqual(testResult[0].Price, 7.99);
            Assert.AreEqual(testResult[0].ToppingsCount, 2);
            Assert.AreEqual(testResult[1].Id, 2);
            Assert.AreEqual(testResult[1].SpecialRequest, "Special B");
            Assert.AreEqual(testResult[1].Price, 12.99);
            Assert.AreEqual(testResult[1].ToppingsCount, 4);

            #endregion
        }

        [TestMethod]
        public void GetOrderDetailsByOrderID_NonExistingID()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetDetailsOfAnOrder(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);
            
            #endregion
        }

        [TestMethod]
        public void GetOrderDetailsByOrderID_InvalidID()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetDetailsOfAnOrder(2);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<OrderDetail> testResult = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testResult.Count, 2);
            Assert.AreNotEqual(testResult[0].Id, 1);
            Assert.AreNotEqual(testResult[0].SpecialRequest, "Special A");
            Assert.AreNotEqual(testResult[0].Price, 7.99);
            Assert.AreNotEqual(testResult[0].ToppingsCount, 2);

            #endregion
        }

        [TestMethod]
        public void PutOrderDetail_Valid()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);
            OrderDetail testData = testRepo.SelectById(1).Result;

            #endregion

            #region ACT

            testData.SizeId = 3;
            testData.ToppingsCount = 3;
            testData.ToppingsSelected += ",TopC";

            var taskReturn = testController.PutOrderDetail(1, testData);
            taskReturn.Wait();
            var result = taskReturn.Result;

            testData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NoContentResult);
            Assert.AreEqual((result as NoContentResult).StatusCode, 204);

            Assert.AreEqual(testData.Id, 1);
            Assert.AreEqual(testData.SizeId, 3);
            Assert.AreEqual(testData.ToppingsCount, 3);
            Assert.AreEqual(testData.ToppingsSelected, "TopA,TopB,TopC");

            #endregion
        }
    }
}
