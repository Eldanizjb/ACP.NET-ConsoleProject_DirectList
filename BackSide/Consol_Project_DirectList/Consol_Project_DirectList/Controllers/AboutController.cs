using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

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
            VmAbout model = new()
            {
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "About"),
                Sosial = _context.Sosial.ToList(),
                Working = _context.Working.ToList(),
                Team = _context.Team.OrderByDescending(d => d.Id).Include(tt => tt.TagToTeamSosial).ThenInclude(ts => ts.TeamSosial).ToList(),
            };
            return View(model);
        }
    }
}
