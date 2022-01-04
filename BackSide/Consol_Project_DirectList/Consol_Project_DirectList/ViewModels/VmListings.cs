using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Consol_Project_DirectList.Models;

namespace Consol_Project_DirectList.ViewModels
{
    public class VmListings : VmLayout
    {
        public List<AdministrationToRestaurant> AdministrationToRestaurant { get; set; }
        public List<RestaurantAdministration> RestaurantAdministration { get; set; }
        public Comenter Commenter { get; set; }
        public List<Comment> Comments { get; set; }
        public Comment Comment { get; set; }
        public List<Restaurant> Restaurants { get; set; }
        public Restaurant Restaurant { get; set; }
        public Order Order { get; set; }
        public List<Guest> Guest { get; set; }
        public List<ContactPhoneToRestaurant> ContactPhoneToRestaurant { get; set; }
        public List<FeatureToRestaurant> FeatureToRestaurant { get; set; }
        public List<MenuToRestaurant> MenuToRestaurantcations { get; set; }
        public List<RestaurantMenu> RestaurantMenu { get; set; }
        public List<RestaurantCategory> RestaurantCategory { get; set; }
        public List<RestaurantContactPhone> RestaurantContactPhone { get; set; }
        public List<RestaurantFeatures> RestaurantFeatures { get; set; }
        public List<RestaurantTag> RestaurantTag { get; set; }
        public List<TagToRestaurant> TagToRestaurant { get; set; }
        public VmSearch Search { get; set; }
        public List<string> AddToCart { get; set; }
    }
}
