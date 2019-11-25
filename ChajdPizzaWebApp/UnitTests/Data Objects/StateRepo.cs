using ChajdPizzaWebApp.Models;
using ChajdPizzaWebApp.Repositories.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace UnitTests.Data_Objects
{
    class StateRepo : IStateRepo
    {
        public Task<State> GetState(int id)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetStateAbbrevation(int id)
        {
            throw new NotImplementedException();
        }

        public Task<string> GetStateName(int id)
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<State>> GetStates()
        {
            throw new NotImplementedException();
        }
    }
}
