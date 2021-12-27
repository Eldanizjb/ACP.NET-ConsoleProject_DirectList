using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Consol_Project_DirectList.Models;

namespace Consol_Project_DirectList.ViewModels
{
    public class VmListings : VmLayout
    {
    public List<Helper> Helpers { get; set; }
    public List<Book> Book { get; set; }
    public List<Comment> Comment { get; set; }
    public List<ContactInfo> ContactInfo { get; set; }
    public List<Details> Details { get; set; }
    public List<Features> Features { get; set; }
    public List<Guest> Guest { get; set; }
    public List<KeyPeople> KeyPeople { get; set; }
    public List<Locations> Locations { get; set; }
    public List<Menu> Menu { get; set; }
    public List<Restaurant> Restaurant { get; set; }
    public List<RestaurantCategory> RestaurantCategory { get; set; }
    }
}
