using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.Models;
using Consol_Project_DirectList.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace Consol_Project_DirectList.Areas.admin.Controllers
{
    [Area("admin")]
    [Authorize(Roles = "Moderator")]
    public class TeamSosialController : Controller
    {
        readonly AppDbContext _context;

        public TeamSosialController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View(_context.TeamSosial.ToList());
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(TeamSosial model)
        {
            if (ModelState.IsValid)
            {
                _context.TeamSosial.Add(model);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                ModelState.AddModelError("", "Not Value");
                return View(model);
            }
        }

        public IActionResult Update(int id)
        {
            return View(_context.TeamSosial.Find(id));
        }

        [HttpPost]
        public IActionResult Update(TeamSosial model)
        {
            if (ModelState.IsValid)
            {
                _context.TeamSosial.Update(model);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return View(model);
            }
        }
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                HttpContext.Session.SetString("NullIdError", "Id can not be null");
                return RedirectToAction("Index");
            }

            TeamSosial TeamSosial = _context.TeamSosial.Find(id);
            if (TeamSosial == null)
            {
                HttpContext.Session.SetString("NullDataError", "Can not found the data");
                return RedirectToAction("Index");
            }
            _context.TeamSosial.Remove(TeamSosial);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
