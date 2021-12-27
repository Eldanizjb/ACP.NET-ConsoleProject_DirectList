using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;



namespace Consol_Project_DirectList.Controllers
{
    public class AboutController : Controller
    {
        private readonly AppDbContext _context;

        public AboutController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            VmAbout model = new VmAbout()
            {
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "About"),
                Sosial = _context.Sosial.ToList(),

                Position = _context.Position.ToList(),
                TagToContactPost =_context.TagToContactPost.ToList(),
                ContactPost = _context.ContactPost.ToList(),
                Working = _context.Working.ToList()
            };
            return View(model);
        }
    }
}
