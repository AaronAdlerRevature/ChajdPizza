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

            Assert.AreEqual(testList[0].Id, 1);
            Assert.AreEqual(testList[0].OrdersId, 1);
            Assert.AreEqual(testList[0].Price, 7.99M);
            Assert.AreEqual(testList[0].SizeId, 1);
            Assert.AreEqual(testList[0].SpecialRequest, "Special A");
            Assert.AreEqual(testList[0].ToppingsCount, 2);
            Assert.AreEqual(testList[0].ToppingsSelected, "TopA,TopB");

            Assert.AreEqual(testList[1].Id, 2);
            Assert.AreEqual(testList[1].OrdersId, 1);
            Assert.AreEqual(testList[1].Price, 12.99M);
            Assert.AreEqual(testList[1].SizeId, 2);
            Assert.AreEqual(testList[1].SpecialRequest, "Special B");
            Assert.AreEqual(testList[1].ToppingsCount, 4);
            Assert.AreEqual(testList[1].ToppingsSelected, "TopA,TopB,TopC,TopD");

            Assert.AreEqual(testList[2].Id, 3);
            Assert.AreEqual(testList[2].OrdersId, 2);
            Assert.AreEqual(testList[2].Price, 8.99M);
            Assert.AreEqual(testList[2].SizeId, 3);
            Assert.AreEqual(testList[2].SpecialRequest, "Special C");
            Assert.AreEqual(testList[2].ToppingsCount, 1);
            Assert.AreEqual(testList[2].ToppingsSelected, "TopA");

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

            Assert.AreEqual(testResult.Id, 1);
            Assert.AreEqual(testResult.OrdersId, 1);
            Assert.AreEqual(testResult.Price, 7.99M);
            Assert.AreEqual(testResult.SizeId, 1);
            Assert.AreEqual(testResult.SpecialRequest, "Special A");
            Assert.AreEqual(testResult.ToppingsCount, 2);
            Assert.AreEqual(testResult.ToppingsSelected, "TopA,TopB");

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
        public void GetOrderDetailByID_InvalidID()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetOrderDetail(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            OrderDetail testResult = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testResult.Id, 1);
            Assert.AreNotEqual(testResult.OrdersId, 1);
            Assert.AreNotEqual(testResult.Price, 7.99M);
            Assert.AreNotEqual(testResult.SizeId, 1);
            Assert.AreNotEqual(testResult.SpecialRequest, "Special A");
            Assert.AreNotEqual(testResult.ToppingsCount, 2);
            Assert.AreNotEqual(testResult.ToppingsSelected, "TopA,TopB");

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

            List<OrderDetail> testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 2);

            Assert.AreEqual(testList[0].Id, 1);
            Assert.AreEqual(testList[0].OrdersId, 1);
            Assert.AreEqual(testList[0].Price, 7.99M);
            Assert.AreEqual(testList[0].SizeId, 1);
            Assert.AreEqual(testList[0].SpecialRequest, "Special A");
            Assert.AreEqual(testList[0].ToppingsCount, 2);
            Assert.AreEqual(testList[0].ToppingsSelected, "TopA,TopB");

            Assert.AreEqual(testList[1].Id, 2);
            Assert.AreEqual(testList[1].OrdersId, 1);
            Assert.AreEqual(testList[1].Price, 12.99M);
            Assert.AreEqual(testList[1].SizeId, 2);
            Assert.AreEqual(testList[1].SpecialRequest, "Special B");
            Assert.AreEqual(testList[1].ToppingsCount, 4);
            Assert.AreEqual(testList[1].ToppingsSelected, "TopA,TopB,TopC,TopD");

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
            Assert.AreNotEqual(testResult[0].OrdersId, 1);
            Assert.AreNotEqual(testResult[0].Price, 7.99M);
            Assert.AreNotEqual(testResult[0].SizeId, 1);
            Assert.AreNotEqual(testResult[0].SpecialRequest, "Special A");
            Assert.AreNotEqual(testResult[0].ToppingsCount, 2);
            Assert.AreNotEqual(testResult[0].ToppingsSelected, "TopA,TopB");

            #endregion
        }

        [TestMethod]
        public void PutOrderDetail_Valid()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);
            OrderDetail testData = new OrderDetail()
            {
                Id = 1,
                OrdersId = 1,
                Price = 8.99M,
                SizeId = 3,
                SpecialRequest = "Special ABC",
                ToppingsCount = 3,
                ToppingsSelected = "TopA,TopB,TopC",
            };

            #endregion

            #region ACT

            var taskReturn = testController.PutOrderDetail(1, testData);
            taskReturn.Wait();
            var result = taskReturn.Result;

            testData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NoContentResult);
            Assert.AreEqual((result as NoContentResult).StatusCode, 204);

            Assert.AreEqual(testData.Id, 1);
            Assert.AreEqual(testData.OrdersId, 1);
            Assert.AreEqual(testData.Price, 8.99M);
            Assert.AreEqual(testData.SizeId, 3);
            Assert.AreEqual(testData.SpecialRequest, "Special ABC");
            Assert.AreEqual(testData.ToppingsCount, 3);
            Assert.AreEqual(testData.ToppingsSelected, "TopA,TopB,TopC");

            #endregion
        }

        [TestMethod]
        public void PutOrderDetail_InvalidID()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);
            OrderDetail testData = new OrderDetail()
            {
                Id = 1,
                OrdersId = 1,
                Price = 7.99M,
                SizeId = 3,
                SpecialRequest = "Special A",
                ToppingsCount = 3,
                ToppingsSelected = "TopA,TopB,TopC",
            };

            #endregion

            #region ACT

            var taskReturn = testController.PutOrderDetail(2, testData);
            taskReturn.Wait();
            var result = taskReturn.Result;

            testData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is BadRequestResult);
            Assert.AreEqual((result as BadRequestResult).StatusCode, 400);

            Assert.AreEqual(testData.Id, 1);
            Assert.AreEqual(testData.OrdersId, 1);
            Assert.AreEqual(testData.Price, 7.99M);
            Assert.AreEqual(testData.SizeId, 1);
            Assert.AreEqual(testData.SpecialRequest, "Special A");
            Assert.AreEqual(testData.ToppingsCount, 2);
            Assert.AreEqual(testData.ToppingsSelected, "TopA,TopB");

            #endregion
        }

        [TestMethod]
        public void PostOrderDetail_Valid()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);
            OrderDetail testData = new OrderDetail()
            {
                Id = 4,
                OrdersId = 3,
                Price = 11.99M,
                SizeId = 2,
                SpecialRequest = "Special D",
                ToppingsCount = 1,
                ToppingsSelected = "TopA",
                Orders = null,
                Sizes = null
            };

            #endregion

            #region ACT

            var taskReturn = testController.PostOrderDetail(testData);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            testData = null;
            testData = testRepo.SelectById(4).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is CreatedAtActionResult);
            Assert.AreEqual((result as CreatedAtActionResult).StatusCode, 201);
            Assert.AreEqual((result as CreatedAtActionResult).RouteValues["id"], 4);

            var testReturn = ((result as CreatedAtActionResult).Value as OrderDetail);
            Assert.AreEqual(testReturn.Id, 4);
            Assert.AreEqual(testReturn.OrdersId, 3);
            Assert.AreEqual(testReturn.SizeId, 2);
            Assert.AreEqual(testReturn.Price, 11.99M);
            Assert.AreEqual(testReturn.SpecialRequest, "Special D");
            Assert.AreEqual(testReturn.ToppingsCount, 1);
            Assert.AreEqual(testReturn.ToppingsSelected, "TopA");

            Assert.AreEqual(testData.Id, 4);
            Assert.AreEqual(testData.OrdersId, 3);
            Assert.AreEqual(testData.SizeId, 2);
            Assert.AreEqual(testData.Price, 11.99M);
            Assert.AreEqual(testData.SpecialRequest, "Special D");
            Assert.AreEqual(testData.ToppingsCount, 1);
            Assert.AreEqual(testData.ToppingsSelected, "TopA");

            #endregion
        }

        [TestMethod]
        public void DeleteOrderDetail_Valid()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.DeleteOrderDetail(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;
            var resultReturn = taskReturn.Result.Value;

            var testData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.IsNull(result);

            Assert.IsNotNull(resultReturn);
            Assert.AreEqual(resultReturn.Id, 1);
            Assert.AreEqual(resultReturn.OrdersId, 1);
            Assert.AreEqual(resultReturn.Price, 7.99M);
            Assert.AreEqual(resultReturn.SizeId, 1);
            Assert.AreEqual(resultReturn.SpecialRequest, "Special A");
            Assert.AreEqual(resultReturn.ToppingsCount, 2);
            Assert.AreEqual(resultReturn.ToppingsSelected, "TopA,TopB");

            Assert.IsNull(testData);

            #endregion
        }

        [TestMethod]
        public void DeleteOrderDetail_NonExistingID()
        {
            #region ASSIGN

            OrderDetailsRepo testRepo = new OrderDetailsRepo();
            OrderDetailsApiController testController = new OrderDetailsApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.DeleteOrderDetail(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;
            var resultReturn = taskReturn.Result.Value;

            var testData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.IsNotNull(result);
            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            Assert.IsNull(resultReturn);

            Assert.IsNotNull(testData);
            Assert.AreEqual(testData.Id, 1);
            Assert.AreEqual(testData.OrdersId, 1);
            Assert.AreEqual(testData.Price, 7.99M);
            Assert.AreEqual(testData.SizeId, 1);
            Assert.AreEqual(testData.SpecialRequest, "Special A");
            Assert.AreEqual(testData.ToppingsCount, 2);
            Assert.AreEqual(testData.ToppingsSelected, "TopA,TopB");

            #endregion
        }
    }
}
