using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.Areas.admin.Controllers
{

[Area("admin")]
[Authorize(Roles = "Moderator")]
public class SosialController : Controller
{
    private readonly AppDbContext _context;

    public SosialController(AppDbContext context)
    {
        _context = context;
    }
    public IActionResult Index()
    {
        List<Sosial> model = _context.Sosial.ToList();
        return View(model);
    }

    public IActionResult Create()
    {
        return View();
    }

    [HttpPost]
    public IActionResult Create(Sosial model)
    {
        if (ModelState.IsValid)
        {
            _context.Sosial.Add(model);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        ModelState.AddModelError("", "menim errorum");
        return View(model);
    }

    public IActionResult Update(int id)
    {
        return View(_context.Sosial.Find(id));
    }

    [HttpPost]
    public IActionResult Update(Sosial model)
    {
        if (ModelState.IsValid)
        {
            _context.Sosial.Update(model);
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

        Sosial Sosial = _context.Sosial.Find(id);
        if (Sosial == null)
        {
            HttpContext.Session.SetString("NullDataError", "Can not found the data");
            return RedirectToAction("Index");
        }
        _context.Sosial.Remove(Sosial);
        _context.SaveChanges();
        return RedirectToAction("Index");
    }
}
}

