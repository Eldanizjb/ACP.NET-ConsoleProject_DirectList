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
using Microsoft.EntityFrameworkCore;

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
            VmHome model = new()
            {
                Sosial = _context.Sosial.ToList(),
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "Home"),
                Vacation = _context.Vacation.ToList(),
                Blog = _context.Blog.OrderByDescending(d => d.CreateDate)
                                  .Take(3).ToList(),
                Team = _context.Team.OrderByDescending(d => d.Id).Include(tt => tt.TagToTeamSosial).ThenInclude(ts => ts.TeamSosial).ToList(),
                Restaurant = _context.Restaurant.Take(6).ToList(),

            };

            //HttpContext.Session.SetString("IsAlive", "s;kfjng;frvjskdfnb");
            //CookieOptions options = new CookieOptions()
            //{
            //    Expires = DateTime.Now.AddYears(1)
            //};

            //Response.Cookies.Append("card", "1-2", options);

            return View(model);
        }
        public IActionResult Privacy()
        {
            return View();
        }
    }
}
