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
        List<State> allStates = null;


        StateRepo()
        {
            allStates = new List<State>();

            allStates.Add(new State()
            {
                ID = 1,
                Name = "Alaska",
                Abbreviation="AK",
            }); 
            allStates.Add(new State()
            {
                ID = 2,
                Name = "Virgina",
                Abbreviation="VA",
            }); 
            allStates.Add(new State()
            {
                ID = 3,
                Name = "Florida",
                Abbreviation="FL",
            }); 
            allStates.Add(new State()
            {
                ID = 4,
                Name = "Texas",
                Abbreviation="TX",
            }); 
        }

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
