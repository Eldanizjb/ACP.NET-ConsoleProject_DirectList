using Microsoft.AspNetCore.Mvc;
//using Consol_Project_DirectList.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
//using Consol_Project_DirectList.ViewModels;
//using Microsoft.EntityFrameworkCore;



namespace Consol_Project_DirectList.Controllers
{
    public class AboutController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
