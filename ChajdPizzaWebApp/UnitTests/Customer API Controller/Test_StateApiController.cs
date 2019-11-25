using ChajdPizzaWebApp.Controllers;
using ChajdPizzaWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using UnitTests.Data_Objects;

namespace UnitTests
{
    [TestClass]
    public class Test_StateApiController
    {
        [TestMethod]
        public void GetStates()
        {
            #region ASSIGN

            StateRepo testRepo = new StateRepo();
            StateApiController testController = new StateApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetStates();
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            List<State> testList = new List<State>(result);

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.Count, 4);

            Assert.AreEqual(testList[0].ID, 1);
            Assert.AreEqual(testList[0].Name, "Alaska");
            Assert.AreEqual(testList[0].Abbreviation, "AK");

            Assert.AreEqual(testList[1].ID, 2);
            Assert.AreEqual(testList[1].Name, "Virgina");
            Assert.AreEqual(testList[1].Abbreviation, "VA");

            Assert.AreEqual(testList[2].ID, 3);
            Assert.AreEqual(testList[2].Name, "Florida");
            Assert.AreEqual(testList[2].Abbreviation, "FL");

            Assert.AreEqual(testList[3].ID, 4);
            Assert.AreEqual(testList[3].Name, "Texas");
            Assert.AreEqual(testList[3].Abbreviation, "TX");

            #endregion
        }

        [TestMethod]
        public void GetStates_EmptyDataSet()
        {
            #region ASSIGN

            StateRepo testRepo = new StateRepo(false);
            StateApiController testController = new StateApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetStates();
            taskReturn.Wait();
            var result = taskReturn.Result.Result;

            #endregion

            #region ASSERT

            Assert.IsTrue(result is NotFoundResult);
            Assert.AreEqual((result as NotFoundResult).StatusCode, 404);

            #endregion
        }

        [TestMethod]
        public void GetState_Valid()
        {
            #region ASSIGN

            StateRepo testRepo = new StateRepo();
            StateApiController testController = new StateApiController(testRepo);

            #endregion

            #region ACT

            var taskReturn = testController.GetState(1);
            taskReturn.Wait();
            var result = taskReturn.Result.Value;

            State testList = result;

            #endregion

            #region ASSERT

            Assert.AreEqual(testList.ID, 1);
            Assert.AreEqual(testList.Name, "Alaska");
            Assert.AreEqual(testList.Abbreviation, "AK");

            #endregion
        }
    }
}
