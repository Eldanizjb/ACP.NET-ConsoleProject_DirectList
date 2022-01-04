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
    public class RestaurantMenuController : Controller
    {
        private readonly AppDbContext _context;

        public RestaurantMenuController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            List<RestaurantMenu> model = _context.RestaurantMenu.ToList();
            return View(model);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(RestaurantMenu model)
        {
            if (ModelState.IsValid)
            {
                _context.RestaurantMenu.Add(model);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            ModelState.AddModelError("", "menim errorum");
            return View(model);
        }

        public IActionResult Update(int id)
        {
            return View(_context.RestaurantMenu.Find(id));
        }

        [HttpPost]
        public IActionResult Update(RestaurantMenu model)
        {
            if (ModelState.IsValid)
            {
                _context.RestaurantMenu.Update(model);
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

            RestaurantMenu restaurantMenu = _context.RestaurantMenu.Find(id);
            if (restaurantMenu == null)
            {
                HttpContext.Session.SetString("NullDataError", "Can not found the data");
                return RedirectToAction("Index");
            }
            _context.RestaurantMenu.Remove(restaurantMenu);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}

