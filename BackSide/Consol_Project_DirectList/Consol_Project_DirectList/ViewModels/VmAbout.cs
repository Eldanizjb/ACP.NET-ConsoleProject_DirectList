using Consol_Project_DirectList.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.ViewModels
{
    public class VmAbout : VmLayout
    {
        public List<TagToTeamSosial> TagToTeamSosial { get; set; }
        public List<Team> Team { get; set; }
        public List<TeamSosial> TeamSosial { get; set; }
        public List<WorkingProcess> Working { get; set; }


    }
}
