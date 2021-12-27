using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.Controllers
{
    public class ContactController : Controller
    {
        private readonly AppDbContext _context;

        public ContactController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            VmContact model = new VmContact()
            {
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "Contact"),
                Sosial = _context.Sosial.ToList(),

                Message = _context.Message.ToList(),
            };   
            return View(model);
        }
    }
}
