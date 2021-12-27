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
    public List<ContactPost> ContactPost { get; set; }
    public List<Position> Position { get; set; }
    public List<Restaurant> Restaurant { get; set; }
    public List<TagToContactPost> TagToContactPost { get; set; }
    public List<Vacation> Vacation { get; set; }
    }
}
