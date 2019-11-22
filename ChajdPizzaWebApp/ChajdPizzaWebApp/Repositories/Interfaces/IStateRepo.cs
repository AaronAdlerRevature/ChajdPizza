using ChajdPizzaWebApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ChajdPizzaWebApp.Repositories.Interfaces
{
    public interface IStateRepo
    {
        public Task<IEnumerable<State>> GetStates();

        public Task<State> GetState(int id);

        public Task<string> GetStateName(int id);

        public Task<string> GetStateAbbrevation(int id);
    }
}
