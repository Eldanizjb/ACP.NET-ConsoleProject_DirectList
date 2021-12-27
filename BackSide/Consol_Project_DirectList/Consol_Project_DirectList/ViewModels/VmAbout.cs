using Consol_Project_DirectList.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.ViewModels
{
    public class VmAbout : VmLayout
    {
         public List<Position> Position { get; set; }
         public List<TagToContactPost> TagToContactPost { get; set; }
         public List<ContactPost> ContactPost { get; set; }
         public List<Working> Working { get; set; }
    }
}
