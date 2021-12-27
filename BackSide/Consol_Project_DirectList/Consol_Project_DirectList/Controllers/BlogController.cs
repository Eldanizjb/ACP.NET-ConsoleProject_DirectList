using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

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
            VmBlog model = new VmBlog()
            {
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "Blog"),
                Sosial = _context.Sosial.ToList(),

                Blog = _context.Blog.ToList(),
                Comenter = _context.Comenter.ToList(),
                Comment = _context.Comment.ToList(),
                CustomUser = _context.CustomUser.ToList()

    };

            return View(model);
        }

        public IActionResult Details(int? id)
        {
            VmBlog model = new VmBlog()
            {
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "BlogDetails"),
                Blog = _context.Blog.ToList(),
                Comenter = _context.Comenter.ToList(),
                Comment = _context.Comment.ToList(),
                CustomUser = _context.CustomUser.ToList()
            };

            return View(model);

        }
    }
}
