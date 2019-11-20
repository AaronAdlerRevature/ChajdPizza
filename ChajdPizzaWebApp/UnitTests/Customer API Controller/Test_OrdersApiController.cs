using ChajdPizzaWebApp.Controllers;
using ChajdPizzaWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using UnitTests.Data_Objects;

namespace UnitTests
{
    [TestClass]
    public class Test_OrdersApiController
    {
        [TestMethod]
        public void GetOrderDetails()
        {
            #region ASSIGN

            OrdersRepo testRepo = new OrdersRepo();
            OrdersApiController testController = new OrdersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrders();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<Orders> testList = new List<Orders>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 5);

            Assert.AreEqual(testList[0].Id, 1);
            Assert.AreEqual(testList[0].CustomerId, 1);
            Assert.AreEqual(testList[0].NetPrice, 29.99M);
            Assert.IsTrue(testList[0].isCompleted);

            Assert.AreEqual(testList[1].Id, 2);
            Assert.AreEqual(testList[1].CustomerId, 1);
            Assert.AreEqual(testList[1].NetPrice, 49.99M);
            Assert.IsFalse(testList[1].isCompleted);

            Assert.AreEqual(testList[2].Id, 3);
            Assert.AreEqual(testList[2].CustomerId, 2);
            Assert.AreEqual(testList[2].NetPrice, 9.99M);
            Assert.IsTrue(testList[2].isCompleted);

            Assert.AreEqual(testList[3].Id, 4);
            Assert.AreEqual(testList[3].CustomerId, 3);
            Assert.AreEqual(testList[3].NetPrice, 19.99M);
            Assert.IsFalse(testList[3].isCompleted);

            Assert.AreEqual(testList[4].Id, 5);
            Assert.AreEqual(testList[4].CustomerId, 3);
            Assert.AreEqual(testList[4].NetPrice, 39.99M);
            Assert.IsFalse(testList[4].isCompleted);

            #endregion
        }

        [TestMethod]
        public void GetOrderByID_Valid()
        {
            #region ASSIGN

            OrdersRepo testRepo = new OrdersRepo();
            OrdersApiController testController = new OrdersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrders(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            #endregion

            #region ASSERT

            Assert.AreEqual(result.Id, 1);
            Assert.AreEqual(result.CustomerId, 1);
            Assert.AreEqual(result.NetPrice, 29.99M);
            Assert.IsTrue(result.isCompleted);

            #endregion
        }

        [TestMethod]
        public void GetOrderByID_NonExistingID()
        {
            #region ASSIGN

            OrdersRepo testRepo = new OrdersRepo();
            OrdersApiController testController = new OrdersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrders(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetOrderByID_InvalidID()
        {
            #region ASSIGN

            OrdersRepo testRepo = new OrdersRepo();
            OrdersApiController testController = new OrdersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrders(2);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(result.Id, 1);
            Assert.AreNotEqual(result.NetPrice, 29.99M);

            #endregion
        }

        [TestMethod]
        public void GetOrderByCustomerID_Valid()
        {
            #region ASSIGN

            OrdersRepo testRepo = new OrdersRepo();
            OrdersApiController testController = new OrdersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrderByCust(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            #endregion

            #region ASSERT

            Assert.AreEqual(result.Id, 2);
            Assert.AreEqual(result.CustomerId, 1);
            Assert.AreEqual(result.NetPrice, 49.99M);
            Assert.IsFalse(result.isCompleted);

            #endregion
        }

        [TestMethod]
        public void GetOrderByCustomerID_NonExistingCustomerID()
        {
            #region ASSIGN

            OrdersRepo testRepo = new OrdersRepo();
            OrdersApiController testController = new OrdersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrderByCust(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

       
    }
}