using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Consol_Project_DirectList.Models;

namespace Consol_Project_DirectList.ViewModels
{
    public class VmBlog : VmLayout
    {
        public List<Blog> Blog { get; set; }
        public List<Comenter> Comenter { get; set; }
        public List<Comment> Comment { get; set; }
        public List<CustomUser> CustomUser { get; set; }
       
    }
}
