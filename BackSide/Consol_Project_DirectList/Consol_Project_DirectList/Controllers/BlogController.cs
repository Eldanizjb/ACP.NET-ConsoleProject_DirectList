using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace Consol_Project_DirectList.Controllers
{
    public class BlogController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IHttpContextAccessor _httpContext;

        public BlogController(AppDbContext context, IHttpContextAccessor httpContext)
        {
            _context = context;
            _httpContext = httpContext;
        }
        public IActionResult Index()
        {
            VmBlog model = new();
            model.Banner = _context.Banner.FirstOrDefault(b => b.Page == "Blog");
            model.Sosial = _context.Sosial.Take(4).ToList();
            model.Blog = _context.Blog.Include(c => c.CustomUser).Take(3).ToList();
            return View(model);
        }

        public IActionResult Details(int? id)
        {
            VmBlog model = new();
            if (model != null)
            {
                ViewBag.Blogin = _context.Blog.Take(3).OrderByDescending(b => b.CreateDate).ToList();
                model.Banner = _context.Banner.FirstOrDefault(b => b.Page == "BlogDetails");
                model.Sosial = _context.Sosial.Take(4).ToList();
                model.Blogin = _context.Blog.Include(cu => cu.CustomUser).Include(c => c.Comment).ThenInclude(cr => cr.Comenter).FirstOrDefault(b => b.Id == id);
                return View(model);
            }
            return RedirectToAction("Index");
        }
    }

}
