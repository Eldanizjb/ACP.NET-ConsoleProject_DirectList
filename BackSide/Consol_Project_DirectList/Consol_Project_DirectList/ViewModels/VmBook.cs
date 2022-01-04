using Consol_Project_DirectList.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.ViewModels
{
    public class VmBook : VmLayout
    {
        public Order Order { get; set; }
        public Restaurant Restaurant { get; set; }
        public Comment Comment { get; set; }
    }
}
