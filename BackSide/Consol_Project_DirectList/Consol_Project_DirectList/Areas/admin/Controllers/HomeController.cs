using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.Areas.Admin.Controllers
{
    [Area("admin")]
   [Authorize(Roles = "Moderator, Customer")]
    public class HomeController : Controller
    {
        private readonly AppDbContext _context;

        public HomeController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            VmLayout model = new VmLayout()
            {
                Sosial = _context.Sosial.ToList(),
                Setting = _context.Setting.FirstOrDefault()
            };
            return View(model);
        }
    }
}
