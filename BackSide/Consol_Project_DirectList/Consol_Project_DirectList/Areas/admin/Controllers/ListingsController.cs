using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.Areas.admin.Controllers
{
    [Area("Admin")]
   [Authorize(Roles = "Moderator")]
    public class ListingsController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
