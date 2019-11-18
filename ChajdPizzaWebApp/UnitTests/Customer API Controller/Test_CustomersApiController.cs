using ChajdPizzaWebApp.Controllers;
using ChajdPizzaWebApp.Models;
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
    }
}
