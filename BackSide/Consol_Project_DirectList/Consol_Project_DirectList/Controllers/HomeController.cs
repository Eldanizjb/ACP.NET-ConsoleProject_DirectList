using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.Models;
using Consol_Project_DirectList.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.Controllers
{
    public class HomeController : Controller
    {

        private readonly AppDbContext _context;

        public HomeController(AppDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            VmHome model = new VmHome
            {
               
            };

            //HttpContext.Session.SetString("IsAlive", "s;kfjng;frvjskdfnb");
            //CookieOptions options = new CookieOptions()
            //{
            //    Expires = DateTime.Now.AddYears(1)
            //};

            //Response.Cookies.Append("card", "1-2", options);

            return View(model);
        }
    }
}
