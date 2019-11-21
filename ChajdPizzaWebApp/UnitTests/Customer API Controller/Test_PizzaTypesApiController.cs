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

        [TestMethod]
        public void GetSizeName_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizeName(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testData = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testData, "Small");

            #endregion
        }

        [TestMethod]
        public void GetSizeName_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizeName(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSizeName_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizeName(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testData = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testData, "Small");

            #endregion
        }

        [TestMethod]
        public void GetSizePrice_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizePrice(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            decimal testData = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testData, 5.99M);

            #endregion
        }

        [TestMethod]
        public void GetSizePrice_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizePrice(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404); 

            #endregion
        }

        [TestMethod]
        public void GetSizePrice_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSizePrice(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            decimal testData = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testData, 5.99M);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzas()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzas();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<SpecialtyPizza> testList = new List<SpecialtyPizza>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 3);

            Assert.AreEqual(testList[0].ID, 1);
            Assert.AreEqual(testList[0].Name, "Special A");
            Assert.AreEqual(testList[0].Description, "TopA,TopB,TopC");
            Assert.AreEqual(testList[0].Price, 10.99M);

            Assert.AreEqual(testList[1].ID, 2);
            Assert.AreEqual(testList[1].Name, "Special B");
            Assert.AreEqual(testList[1].Description, "TopC,TopE");
            Assert.AreEqual(testList[1].Price, 9.99M);

            Assert.AreEqual(testList[2].ID, 3);
            Assert.AreEqual(testList[2].Name, "Special C");
            Assert.AreEqual(testList[2].Description, "TopA,TopB,TopC,TopD,TopE");
            Assert.AreEqual(testList[2].Price, 13.99M);


            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzas_EmptyDataList()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo(false);
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzas();
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaByID_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizza(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            SpecialtyPizza testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.ID, 1);
            Assert.AreEqual(testList.Name, "Special A");
            Assert.AreEqual(testList.Description, "TopA,TopB,TopC");
            Assert.AreEqual(testList.Price, 10.99M);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaByID_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizza(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaByID_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizza(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            SpecialtyPizza testList = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testList.ID, 1);
            Assert.AreNotEqual(testList.Name, "Special A");
            Assert.AreNotEqual(testList.Description, "TopA,TopB,TopC");
            Assert.AreNotEqual(testList.Price, 10.99M);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaPrice_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaPrice(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            decimal testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList, 10.99M);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaPrice_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaPrice(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaPrice_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaPrice(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            decimal testList = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testList, 10.99M);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaName_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaName(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList, "Special A");

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaName_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaName(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaName_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaName(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testList = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testList, "Special A");

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaDescription_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaDescription(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList, "TopA,TopB,TopC");

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaDescription_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaDescription(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetSpecialtyPizzaDescription_Invalid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSpecialtyPizzaDescription(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testList = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testList, "TopA,TopB,TopC");

            #endregion
        }

        [TestMethod]
        public void GetToppings()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetToppings();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<Toppings> testList = new List<Toppings>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 5);

            Assert.AreEqual(testList[0].Id, 1);
            Assert.AreEqual(testList[0].Name, "TopA");

            Assert.AreEqual(testList[1].Id, 2);
            Assert.AreEqual(testList[1].Name, "TopB");

            Assert.AreEqual(testList[2].Id, 3);
            Assert.AreEqual(testList[2].Name, "TopC");

            Assert.AreEqual(testList[3].Id, 4);
            Assert.AreEqual(testList[3].Name, "TopD");

            Assert.AreEqual(testList[4].Id, 5);
            Assert.AreEqual(testList[4].Name, "TopE");


            #endregion
        }

        [TestMethod]
        public void GetToppings_EmptyDataList()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo(false);
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetToppings();
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetTopping_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetTopping(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Toppings testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Id, 1);
            Assert.AreEqual(testList.Name, "TopA");

            #endregion
        }

        [TestMethod]
        public void GetTopping_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetTopping(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetTopping_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetTopping(3);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Toppings testList = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testList.Id, 1);
            Assert.AreNotEqual(testList.Name, "TopA");

            #endregion
        }

        [TestMethod]
        public void GetToppingName_Valid()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetToppingName(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList, "TopA");

            #endregion
        }

        [TestMethod]
        public void GetToppingName_NonExistingID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetToppingName(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetToppingName_InvalidID()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetToppingName(5);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            string testList = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testList, "TopA");

            #endregion
        }

        [TestMethod]
        public void GetSecretFormulas()
        {
            #region ASSIGN

            PizzaTypesRepo testRepo = new PizzaTypesRepo();
            PizzaTypesAPIController testController = new PizzaTypesAPIController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetSecretFormulas();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<SecretFormula> testList = new List<SecretFormula>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 2);

            Assert.AreEqual(testList[0].Id, 1);
            Assert.AreEqual(testList[0].Price, 1.50M);

            Assert.AreEqual(testList[1].Id, 2);
            Assert.AreEqual(testList[1].Price, 5.00M);


            #endregion
        }
    }
}