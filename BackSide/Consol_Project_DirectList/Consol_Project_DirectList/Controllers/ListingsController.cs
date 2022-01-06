using Consol_Project_DirectList.Data;
using Consol_Project_DirectList.Models;
using Consol_Project_DirectList.ViewModels;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DirectList.Controllers
{
    public class ListingsController : Controller
    {

        private readonly AppDbContext _context;

        public ListingsController(AppDbContext context)
        {
            _context = context;
        }
        public IActionResult Index(VmSearch search)
        {
            List<Restaurant> restaurants = _context.Restaurant.Include(tr => tr.TagToRestaurant).ThenInclude(t => t.RestaurantTag)
                                                           .Include(fr => fr.FeatureToRestaurants).ThenInclude(f => f.RestaurantFeatures)
                                                           .Include(mr => mr.MenuToRestaurants).ThenInclude(m => m.RestaurantMenu)
                                                           .Include(rc => rc.Comments)
                                                         .ToList();


            string oldData = Request.Cookies["cart"];

            List<string> cartList = null;

            if (!string.IsNullOrEmpty(oldData))
            {
                cartList = oldData.Split("-").ToList();
            }

            List<Restaurant> restaurants1 = new();

            if (cartList != null)
            {
                foreach (var item in cartList)
                {
                    Restaurant restaurant = _context.Restaurant.FirstOrDefault(i => i.Id.ToString() == item);

                    if (restaurant != null)
                    {
                        restaurants1.Add(restaurant);
                    }
                }
            }

            VmListings Listings = new ()
            {
                Sosial = _context.Sosial.ToList(),
                Setting = _context.Setting.FirstOrDefault(),
                Restaurants = restaurants,
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "Restaurant"),
            };
            Listings.Restaurants = _context.Restaurant.Include(bc => bc.Orders)
                                    .Where(b => (search.searchData != null ? b.Name.Contains(search.searchData) : true)).ToList();
            return View(Listings);
        }

        public IActionResult Restaurants(int? id)
        {
            Restaurant restaurant1 = null;
            List<Comment> restaurantComments = _context.Comment.OrderByDescending(bc => bc.CreateDate).Where(i => i.RestaurantId == id).ToList();
            if (id != null)
            {
                restaurant1 = _context.Restaurant.Find(id);
            }


            Setting setting = _context.Setting.FirstOrDefault();
            List<Sosial> sosials = _context.Sosial.ToList();
            Restaurant restaurant = _context.Restaurant.Include(tr => tr.TagToRestaurant).ThenInclude(t => t.RestaurantTag)
                                                            .Include(fr => fr.FeatureToRestaurants).ThenInclude(f => f.RestaurantFeatures)
                                                            .Include(mr => mr.ContactPhoneToRestaurant).ThenInclude(m => m.RestaurantContactPhone)
                                                            .Include(mr => mr.MenuToRestaurants).ThenInclude(m => m.RestaurantMenu)
                                                            .Include(a => a.AdministrationToRestaurant).ThenInclude(m => m.RestaurantAdministration)
                                                            .Include(rc => rc.Comments)
                                                            .FirstOrDefault(i => i.Id == id);
            VmBook restaurantt = new ()
            {
                Sosial = sosials,
                Setting = setting,
                Restaurant = restaurant,
                Banner = _context.Banner.FirstOrDefault(b => b.Page == "Restaurant"),
                Comment = _context.Comment.FirstOrDefault()
            };


            return View(restaurantt);
        }

        public IActionResult Reserve()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Reserve(VmBook model)
        {
            Setting setting = _context.Setting.FirstOrDefault();
            List<Sosial> sosials = _context.Sosial.ToList();

            VmBook vmBook = new ()
            {
                Sosial = sosials,
                Setting = setting
            };

            if (ModelState.IsValid)
            {
                if (DateTime.Now <= model.Order.CreateDate)
                {

                    model.Order.RestaurantId = model.Restaurant.Id;
                    _context.Order.Add(model.Order);
                    _context.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {

                }
            }

            return View("Index", model);
        }


        public IActionResult AddToCart(int? id)
        {
            string oldData = Request.Cookies["cart"];
            string newData = null;
            if (string.IsNullOrEmpty(oldData))
            {
                newData = id.ToString();
            }
            else
            {
                List<string> cartArr = oldData.Split("-").ToList();
                if (cartArr.Any(a => a == id.ToString()))
                {
                    cartArr.Remove(id.ToString());
                    newData = string.Join("-", cartArr);
                }
                else
                {
                    newData = oldData + "-" + id;
                }
            }

            CookieOptions options = new ()
            {
                Expires = DateTime.Now.AddYears(1)
            };
            Response.Cookies.Append("cart", newData, options);

            return RedirectToAction("Index");

        }

        [HttpPost]
        public IActionResult Comment(VmListings model)
        {
            Setting setting = _context.Setting.FirstOrDefault();
            List<Sosial> sosials = _context.Sosial.ToList();
            List<Restaurant> restaurants = _context.Restaurant.ToList();


            VmListings vmRestaurant = new ()
            {
                Sosial = sosials,
                Setting = setting,
                Comment = model.Comment,
                Restaurant = model.Restaurant,
                Restaurants = restaurants
            };


            if (ModelState.IsValid)
            {
                model.Comment.CreateDate = DateTime.Now;
                _context.Comment.Add(model.Comment);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }

            return View("Index", vmRestaurant);
        }
    }
}
