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
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using System.IO;

namespace Consol_Project_DirectList.Areas.admin.Controllers
{
    [Area("admin")]
    [Authorize(Roles = "Moderator")]
    public class TeamController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IWebHostEnvironment _webHostEnvironment;

        public TeamController(AppDbContext context, IWebHostEnvironment webHostEnvironment)
        {
            _context = context;
            _webHostEnvironment = webHostEnvironment;
        }
        public IActionResult Index()
        {
            return View(_context.Team.OrderByDescending(o => o.Id).Include(u => u.TagToTeamSosial).ThenInclude(c => c.TeamSosial).ToList());
        }

        public IActionResult Create()
        {
            ViewBag.TeamSosial = _context.TeamSosial.ToList();
            return View();
        }

        [HttpPost]
        public IActionResult Create(Team model)
        {
            if (ModelState.IsValid)
            {
                if (model.ImageFile.ContentType == "image/jpeg" || model.ImageFile.ContentType == "image/png")
                {
                    if (model.ImageFile.Length <= 2097152)
                    {
                        string fileName = Guid.NewGuid() + "-" + model.ImageFile.FileName;
                        string filePath = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", fileName);

                        using (var stream = new FileStream(filePath, FileMode.Create))
                        {
                            model.ImageFile.CopyTo(stream);
                        }

                        model.Image = fileName;
                        model.Id = 1;
                        _context.Team.Add(model);
                        _context.SaveChanges();

                        //Create Tag to blog
                        if (model.TagToTeamId != null && model.TagToTeamId.Count > 0)
                        {
                            foreach (var item in model.TagToTeamId)
                            {
                                TagToTeamSosial tagToSosial = new();
                                tagToSosial.TeamSosialId = item;
                                tagToSosial.Id = model.Id;
                                _context.TagToTeamSosial.Add(tagToSosial);
                                _context.SaveChanges();
                            }
                        }
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ModelState.AddModelError("", "You can only upload max 3 mb file!");
                        ViewBag.TeamSosial = _context.TeamSosial.ToList();
                        return View(model);
                    }
                }
                else
                {
                    ModelState.AddModelError("", "You can only upload image file!");
                    ViewBag.TeamSosial = _context.TeamSosial.ToList();
                    return View(model);
                }
            }
            else
            {
                ViewBag.TeamSosial = _context.TeamSosial.ToList();
                return View(model);
            }
        }


        public IActionResult Update(int? id)
        {
            Team model = _context.Team.Include(tb => tb.TagToTeamSosial).ThenInclude(t => t.TeamSosial).FirstOrDefault(b => b.Id == id);
            model.TagToTeamId = _context.TagToTeamSosial.Where(tb => tb.Id == id).Select(a => a.TeamSosialId).ToList();
            ViewBag.TeamSosial = _context.TeamSosial.ToList();
            return View(_context.Team.Find(id));
        }

        [HttpPost]
        public IActionResult Update(Team model)
        {
            if (ModelState.IsValid)
            {
                if (model.ImageFile != null)
                {
                    if (model.ImageFile.ContentType == "image/jpeg" || model.ImageFile.ContentType == "image/png")
                    {
                        if (model.ImageFile.Length <= 3145728)
                        {
                            string oldImagePath = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", model.Image);
                            if (System.IO.File.Exists(oldImagePath))
                            {
                                System.IO.File.Delete(oldImagePath);
                            }

                            string fileName = Guid.NewGuid() + "-" + model.ImageFile.FileName;
                            string filePath = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", fileName);

                            using (var stream = new FileStream(filePath, FileMode.Create))
                            {
                                model.ImageFile.CopyTo(stream);
                            }

                            model.Image = fileName;

                            _context.Team.Update(model);
                            _context.SaveChanges();

                            //Delete old data
                            List<TagToTeamSosial> tagToSosials = _context.TagToTeamSosial.Where(tb => tb.TeamId == model.Id).ToList();
                            foreach (var item in tagToSosials)
                            {
                                _context.TagToTeamSosial.Remove(item);
                            }
                            _context.SaveChanges();
                            //Create Tag to blog
                            if (model.TagToTeamId != null && model.TagToTeamId.Count > 0)
                            {
                                foreach (var item in model.TagToTeamId)
                                {
                                    TagToTeamSosial tagToSosial = new ();
                                    tagToSosial.TeamSosialId = item;
                                    tagToSosial.Id = model.Id;
                                    _context.TagToTeamSosial.Add(tagToSosial);
                                }
                                _context.SaveChanges();

                            }
                            return RedirectToAction("index");
                        }
                        else
                        {
                            ModelState.AddModelError("", "You can only upload max 3 mb file!");
                            ViewBag.TeamSosial = _context.TeamSosial.ToList();
                            return View(model);
                        }
                    }
                    else
                    {
                        ModelState.AddModelError("", "You can only upload image file!");
                        ViewBag.TeamSosial = _context.TeamSosial.ToList();
                        return View(model);
                    }
                }
                else
                {
                    _context.Team.Update(model);
                    _context.SaveChanges();
                    return RedirectToAction("index");
                }
            }
            else
            {
                ViewBag.TeamSosial = _context.TeamSosial.ToList();

                return View(model);
            }
        }

        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                ///
            }

            Team team = _context.Team.Find(id);

            if (team == null)
            {
                ///
            }

            //Delete old image
            if (!string.IsNullOrEmpty(team.Image))
            {
                string oldImagePath = Path.Combine(_webHostEnvironment.WebRootPath, "Uploads", team.Image);
                if (System.IO.File.Exists(oldImagePath))
                {
                    System.IO.File.Delete(oldImagePath);
                }
            }

       

            _context.Team.Remove(team);
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
