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
    [Authorize(Roles = "Moderator, Customer")]
    public class GuestController : Controller
    {

        private readonly AppDbContext _context;

        public GuestController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            List<Guest> model = _context.Guest.ToList();
            return View(model);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Guest model)
        {
            if (ModelState.IsValid)
            {
                _context.Guest.Add(model);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            ModelState.AddModelError("", "menim errorum");
            return View(model);
        }

        public IActionResult Update(int id)
        {
            return View(_context.Guest.Find(id));
        }

        [HttpPost]
        public IActionResult Update(Guest model)
        {
            if (ModelState.IsValid)
            {
                _context.Guest.Update(model);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            ModelState.AddModelError("", "menim errorum");
            return View(model);
        }

        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                HttpContext.Session.SetString("NullIdError", "Id can not be null");
                return RedirectToAction("Index");
            }

            Guest Guests = _context.Guest.Find(id);
            if (Guests == null)
            {
                HttpContext.Session.SetString("NullDataError", "Can not found the data");
                return RedirectToAction("Index");
            }
            _context.Guest.Remove(Guests);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}