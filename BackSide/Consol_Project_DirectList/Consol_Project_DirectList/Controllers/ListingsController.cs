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
    public class ListingsController : Controller
    {
        private readonly AppDbContext _context;
        private readonly IHttpContextAccessor _httpContext;

        public ListingsController(AppDbContext context, IHttpContextAccessor httpContext)
        {
            _context = context;
            _httpContext = httpContext;
        }
        public IActionResult Index()
        {
            VmListings model = new VmListings()
            {
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "Listings"),
                Sosial = _context.Sosial.ToList(),

                Helpers = _context.Helpers.ToList(),
                Book = _context.Book.ToList(),
                Comment = _context.Comment.ToList(),
                ContactInfo = _context.ContactInfo.ToList(),
                Details = _context.Details.ToList(),
                Features = _context.Features.ToList(),
                Guest = _context.Guest.ToList(),
                KeyPeople = _context.KeyPeople.ToList(),
                Locations = _context.Locations.ToList(),
                Menu = _context.Menu.ToList(),
                Restaurant = _context.Restaurant.ToList(),
                RestaurantCategory = _context.RestaurantCategory.ToList(),
            };
            return View(model);
        }

        public IActionResult Details(int? id)
        {
            VmListings model = new VmListings()
            {
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "ListingsDetails"),
                Helpers = _context.Helpers.ToList(),
                Book = _context.Book.ToList(),
                Comment = _context.Comment.ToList(),
                ContactInfo = _context.ContactInfo.ToList(),
                Details = _context.Details.ToList(),
                Features = _context.Features.ToList(),
                Guest = _context.Guest.ToList(),
                KeyPeople = _context.KeyPeople.ToList(),
                Locations = _context.Locations.ToList(),
                Menu = _context.Menu.ToList(),
                Restaurant = _context.Restaurant.ToList(),
                RestaurantCategory = _context.RestaurantCategory.ToList(),
            };

            return View(model);

        }
    }
}
