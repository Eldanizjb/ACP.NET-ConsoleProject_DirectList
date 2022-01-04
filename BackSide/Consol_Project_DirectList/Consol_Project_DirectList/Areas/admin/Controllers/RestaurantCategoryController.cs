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
    public class RestaurantCategoryController : Controller
    {
        private readonly AppDbContext _context;

        public RestaurantCategoryController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            List<RestaurantCategory> model = _context.RestaurantCategory.ToList();
            return View(model);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(RestaurantCategory model)
        {
            if (ModelState.IsValid)
            {
                _context.RestaurantCategory.Add(model);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            ModelState.AddModelError("", "menim errorum");
            return View(model);
        }

        public IActionResult Update(int id)
        {
            return View(_context.RestaurantCategory.Find(id));
        }

        [HttpPost]
        public IActionResult Update(RestaurantCategory model)
        {
            if (ModelState.IsValid)
            {
                _context.RestaurantCategory.Update(model);
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

            RestaurantCategory restaurantCategory = _context.RestaurantCategory.Find(id);
            if (restaurantCategory == null)
            {
                HttpContext.Session.SetString("NullDataError", "Can not found the data");
                return RedirectToAction("Index");
            }
            _context.RestaurantCategory.Remove(restaurantCategory);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}

