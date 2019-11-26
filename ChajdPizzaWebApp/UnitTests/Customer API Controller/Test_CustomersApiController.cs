using ChajdPizzaWebApp.Controllers;
using ChajdPizzaWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using UnitTests.Data_Objects;

namespace UnitTests
{
    [TestClass]
    public class Test_CustomersApiController
    {
        [TestMethod]
        public void GetCustomers()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetCustomer();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<Customer> testList = new List<Customer>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 2);
            
            Assert.AreEqual(testList[0].Id, 1);
            Assert.AreEqual(testList[0].Name, "John Doe");
            Assert.AreEqual(testList[0].UserName, "MyEmail@Email.com");
            Assert.AreEqual(testList[0].Street, "123 A Street");
            Assert.AreEqual(testList[0].City, "Here");
            Assert.AreEqual(testList[0].StateID, 1);
            Assert.AreEqual(testList[0].ZipCode, 10000);

            Assert.AreEqual(testList[1].Id, 2);
            Assert.AreEqual(testList[1].Name, "Mary Sue");
            Assert.AreEqual(testList[1].UserName, "HerEmail@Email.com");
            Assert.AreEqual(testList[1].Street, "345 B Avenue");
            Assert.AreEqual(testList[1].City, "There");
            Assert.AreEqual(testList[1].StateID, 2);
            Assert.AreEqual(testList[1].ZipCode, 20000);
            
            #endregion
        }

        [TestMethod]
        public void GetCustomersByID_Valid()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetCustomer(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Customer testData = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testData.Id, 1);
            Assert.AreEqual(testData.Name, "John Doe");
            Assert.AreEqual(testData.UserName, "MyEmail@Email.com");
            Assert.AreEqual(testData.Street, "123 A Street");
            Assert.AreEqual(testData.City, "Here");
            Assert.AreEqual(testData.StateID, 1);
            Assert.AreEqual(testData.ZipCode, 10000);

            #endregion
        }

        [TestMethod]
        public void GetCustomersByID_NonExistentUser()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetCustomer(0);
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetCustomersByID_IncorrectID()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetCustomer(2);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Customer testData = result;

            #endregion

            #region ASSERT
           
            Assert.AreNotEqual(testData.Id, 1);
            Assert.AreNotEqual(testData.Name, "John Doe");
            Assert.AreNotEqual(testData.UserName, "MyEmail@Email.com");
            Assert.AreNotEqual(testData.Street, "123 A Street");
            Assert.AreNotEqual(testData.City, "Here");
            Assert.AreNotEqual(testData.StateID, 1);
            Assert.AreNotEqual(testData.ZipCode, 10000);

            #endregion
        }

        [TestMethod]
        public void GetCustomersByUserName_Valid()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetCustomerByUser("MyEmail@Email.com");
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Customer testData = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testData.Id, 1);
            Assert.AreEqual(testData.Name, "John Doe");
            Assert.AreEqual(testData.UserName, "MyEmail@Email.com");
            Assert.AreEqual(testData.Street, "123 A Street");
            Assert.AreEqual(testData.City, "Here");
            Assert.AreEqual(testData.StateID, 1);
            Assert.AreEqual(testData.ZipCode, 10000);

            #endregion
        }

        [TestMethod]
        public void GetCustomersByUserName_NonExistentUser()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetCustomerByUser("AOL@AOL.com");
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetCustomersByUserName_InvalidUser()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetCustomerByUser("HerEmail@Email.com");
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            Customer testData = result;

            #endregion

            #region ASSERT

            Assert.AreNotEqual(testData.Id, 1);
            Assert.AreNotEqual(testData.Name, "John Doe");
            Assert.AreNotEqual(testData.UserName, "MyEmail@Email.com");
            Assert.AreNotEqual(testData.Street, "123 A Street");
            Assert.AreNotEqual(testData.City, "Here");
            Assert.AreNotEqual(testData.StateID, 1);
            Assert.AreNotEqual(testData.ZipCode, 10000);

            #endregion
        }

        [TestMethod]
        public void PutCustomer_Valid()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);
            Customer testData = new Customer()
            {
                Id = 1,
                Name = "Jane Doe",
                UserName = "MyEmail@Email.com",
                Street = "123 A Street",
                City = "There",
                StateID = 1,
                ZipCode = 10000,
            };

            #endregion

            #region ACT

            var taskReturn = testController.PutCustomer(1, testData);
            taskReturn.Wait();
            var result = taskReturn.Result;
            Customer resultData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NoContentResult);
            Assert.AreEqual((result as NoContentResult).StatusCode, 204);

            Assert.AreEqual(resultData.Name, "Jane Doe");
            Assert.AreEqual(resultData.City, "There");

            #endregion
        }

        [TestMethod]
        public void PutCustomer_InvalidID()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);
            Customer testData = new Customer()
            {
                Id = 1,
                Name = "Jane Doe",
                UserName = "MyEmail@Email.com",
                Street = "123 A Street",
                City = "There",
                StateID = 1,
                ZipCode = 10000,
            };

            #endregion

            #region ACT

            var taskReturn = testController.PutCustomer(2, testData);
            taskReturn.Wait();
            var result = taskReturn.Result;
            Customer resultData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is BadRequestResult);
            Assert.AreEqual((result as BadRequestResult).StatusCode, 400);

            Assert.AreEqual(resultData.Name, "John Doe");
            Assert.AreEqual(resultData.City, "Here");

            #endregion
        }

        //[TestMethod]
        //public void PutCustomer_NonExistingCustomer()
        //{
        //    #region ASSIGN
        //    CustomerRepo testRepo = new CustomerRepo();
        //    CustomersApiController testController = new CustomersApiController(testRepo);
        //    Customer testData = new Customer()
        //    {
        //        Id = 0,
        //        Name = "Jane Doe",
        //        UserName = "MyEmail@Email.com",
        //        Street = "123 A Street",
        //        City = "There",
        //        StateID = 1,
        //        ZipCode = 10000,
        //    };
        //    #endregion
        //    #region ACT
        //    var taskReturn = testController.PutCustomer(0, testData);
        //    taskReturn.Wait();
        //    var result = taskReturn.Result;
        //    Customer resultData = testRepo.SelectById(1).Result;
        //    #endregion
        //    #region ASSERT
        //    Assert.IsTrue(result is NotFoundResult);
        //    Assert.AreEqual(resultData.Name, "John Doe");
        //    Assert.AreEqual(resultData.City, "Here");
        //    #endregion
        //}

        [TestMethod]
        public void PostCustomer_Valid()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);
            Customer testData = new Customer()
            {
                Id = 3,
                Name = "Jane Doe",
                UserName = "SomeEmail@Email.com",
                Street = "999 Q Street",
                City = "NoWhere",
                StateID = 3,
                ZipCode = 30000,
            };

            #endregion

            #region ACT

            var taskReturn = testController.PostCustomer(testData);
            taskReturn.Wait();
            var resultStatus = taskReturn.Result.Result;
            Customer checkData = testRepo.SelectById(3).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(resultStatus is CreatedAtActionResult);
            Assert.AreEqual((resultStatus as CreatedAtActionResult).StatusCode, 201);
            Assert.AreEqual((resultStatus as CreatedAtActionResult).RouteValues["id"], 3);

            Assert.AreEqual(checkData.Id, 3);
            Assert.AreEqual(checkData.Name, "Jane Doe");
            Assert.AreEqual(checkData.UserName, "SomeEmail@Email.com");
            Assert.AreEqual(checkData.Street, "999 Q Street");
            Assert.AreEqual(checkData.City, "NoWhere");
            Assert.AreEqual(checkData.StateID, 3);
            Assert.AreEqual(checkData.ZipCode, 30000);

            #endregion
        }

        [TestMethod]
        public void DeleteCustomer_Valid()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.DeleteCustomer(1);
            taskReturn.Wait();
            var resultData = taskReturn.Result.Value;

            Customer checkData = testRepo.SelectById(1).Result;

            #endregion

            #region ASSERT

            Assert.AreEqual(resultData.Id, 1);
            Assert.AreEqual(resultData.Name, "John Doe");
            Assert.AreEqual(resultData.UserName, "MyEmail@Email.com");
            Assert.AreEqual(resultData.Street, "123 A Street");
            Assert.AreEqual(resultData.City, "Here");
            Assert.AreEqual(resultData.StateID, 1);
            Assert.AreEqual(resultData.ZipCode, 10000);

            Assert.IsNull(checkData);

            #endregion
        }

        [TestMethod]
        public void DeleteCustomer_NonExistingCustomer()
        {
            #region ASSIGN

            CustomerRepo testRepo = new CustomerRepo();
            CustomersApiController testController = new CustomersApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.DeleteCustomer(0);
            taskReturn.Wait();
            var resultStatus = taskReturn.Result.Result;
            var checkData = testRepo.SelectAll().Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(resultStatus is NotFoundResult);
            Assert.AreEqual((resultStatus as NotFoundResult).StatusCode, 404);

            Assert.AreEqual(checkData.Count, 2);

            Assert.AreEqual(checkData[0].Id, 1);
            Assert.AreEqual(checkData[0].Name, "John Doe");
            Assert.AreEqual(checkData[0].UserName, "MyEmail@Email.com");
            Assert.AreEqual(checkData[0].Street, "123 A Street");
            Assert.AreEqual(checkData[0].City, "Here");
            Assert.AreEqual(checkData[0].StateID, 1);
            Assert.AreEqual(checkData[0].ZipCode, 10000);

            Assert.AreEqual(checkData[1].Id, 2);
            Assert.AreEqual(checkData[1].Name, "Mary Sue");
            Assert.AreEqual(checkData[1].UserName, "HerEmail@Email.com");
            Assert.AreEqual(checkData[1].Street, "345 B Avenue");
            Assert.AreEqual(checkData[1].City, "There");
            Assert.AreEqual(checkData[1].StateID, 2);
            Assert.AreEqual(checkData[1].ZipCode, 20000);

            #endregion
        }
    }
}
