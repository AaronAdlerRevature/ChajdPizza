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

        public async Task<State> GetState(int id)
        {
            State result = null;

            var query = allStates.Where(s => s.ID == id);
            await Task.Delay(10);
            if (query.Count() > 0)
            {
                result = query.FirstOrDefault();
            }

            return result;
        }

        public async Task<string> GetStateAbbrevation(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<string> GetStateName(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<IEnumerable<State>> GetStates()
        {
            IEnumerable<State> result = null;

            var query = allStates.Where(s => s.ID == s.ID);
            await Task.Delay(10);
            if (query.Count()>0)
            {
                result = query;
            }

            return result;
        }
    }
}
