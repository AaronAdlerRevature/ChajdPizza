using ChajdPizzaWebApp.Controllers;
using ChajdPizzaWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using UnitTests.Data_Objects;

namespace UnitTests
{
    [TestClass]
    public class Test_PizzaTypesApiController
    {
        [TestMethod]
        public void GetSizes()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizes();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<Size> testList = new List<Size>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 3);

            Assert.AreEqual(testList[0].Id, 1);
            Assert.AreEqual(testList[0].BaseSize, "Small");
            Assert.AreEqual(testList[0].S_Price, 5.99M);
            
            Assert.AreEqual(testList[1].Id, 2);
            Assert.AreEqual(testList[1].BaseSize, "Medium");
            Assert.AreEqual(testList[1].S_Price, 7.99M);
            
            Assert.AreEqual(testList[2].Id, 3);
            Assert.AreEqual(testList[2].BaseSize, "Large");
            Assert.AreEqual(testList[2].S_Price, 9.99M);

            #endregion
        }

        [TestMethod]
        public void GetSizes_EmptyDataList()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo(false);
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizes();
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSize_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSize(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Size testData = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testData.Id, 1);
            Assert.AreEqual(testData.BaseSize, "Small");
            Assert.AreEqual(testData.S_Price, 5.99M);

            #endregion
        }

        [TestMethod]
        public void GetSize_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSize(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSize_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSize(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Size testData = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testData.Id, 1);
            Assert.AreNotEqual(testData.BaseSize, "Small");
            Assert.AreNotEqual(testData.S_Price, 5.99M);

            #endregion
        }
    }
}