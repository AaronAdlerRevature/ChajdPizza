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
            Assert.AreEqual(testList[0].Name, "John Doe");

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

            #endregion

            #region ASSERT

            Assert.AreEqual(result.Name, "John Doe");
            Assert.AreEqual(result.UserName, "MyEmail@Email.com");

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

            #endregion

            #region ASSERT

            Assert.AreNotEqual(result.Name, "John Doe");
            Assert.AreNotEqual(result.UserName, "MyEmail@Email.com");

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

            #endregion

            #region ASSERT

            Assert.AreEqual(result.Name, "John Doe");
            Assert.AreEqual(result.Id, 1);

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

            #endregion

            #region ASSERT

            Assert.AreNotEqual(result.Id, 1);
            Assert.AreNotEqual(result.Name, "John Doe");

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
            var resultData = resultStatus as CreatedAtActionResult;
            Customer checkData = testRepo.SelectById(3).Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(resultStatus is CreatedAtActionResult);
            Assert.AreEqual(resultData.StatusCode, 201);
            Assert.AreEqual(resultData.RouteValues["id"], 3);

            Assert.AreEqual(checkData.Name, "Jane Doe");
            Assert.AreEqual(checkData.City, "NoWhere");
            Assert.AreEqual(checkData.Id, 3);

            #endregion
        }
    }
}
