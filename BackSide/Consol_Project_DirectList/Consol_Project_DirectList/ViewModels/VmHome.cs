using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Consol_Project_DirectList.Models;

namespace Consol_Project_DirectList.ViewModels
{
    public class VmHome : VmLayout
    {

        public List<Blog> Blog { get; set; }
        public List<Restaurant> Restaurant { get; set; }
        public List<TagToTeamSosial> TagToTeamSosial { get; set; }
        public List<Team> Team { get; set; }
        public List<TeamSosial> TeamSosial { get; set; }
        public List<Vacations> Vacation { get; set; }

    }
}
