using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Consol_Project_DirectList.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace Consol_Project_DirectList.Data
{
    public class AppDbContext : IdentityDbContext
    {
        public AppDbContext(DbContextOptions options) : base(options)
        {

        }
        public DbSet<AdministrationToRestaurant> AdministrationToRestaurant { get; set; }
        public DbSet<Banner> Banner { get; set; }
        public DbSet<Blog> Blog { get; set; }
        public DbSet<Comenter> Comenter { get; set; }
        public DbSet<Comment> Comment { get; set; }
        public DbSet<ContactPhoneToRestaurant> ContactPhoneToRestaurant { get; set; }
        public DbSet<CustomUser> CustomUser { get; set; }
        public DbSet<FeatureToRestaurant> FeatureToRestaurant { get; set; }
        public DbSet<Guest> Guest { get; set; }
        public DbSet<MenuToRestaurant> MenuToRestaurant { get; set; }
        public DbSet<Message> Message { get; set; }
        public DbSet<Order> Order { get; set; }
        public DbSet<Restaurant> Restaurant { get; set; }
        public DbSet<RestaurantAdministration> RestaurantAdministration { get; set; }
        public DbSet<RestaurantCategory> RestaurantCategory { get; set; }
        public DbSet<RestaurantContactPhone> RestaurantContactPhone { get; set; }
        public DbSet<RestaurantFeatures> RestaurantFeatures { get; set; }
        public DbSet<RestaurantMenu> RestaurantMenu { get; set; }
        public DbSet<RestaurantTag> RestaurantTag { get; set; }
        public DbSet<Setting> Setting { get; set; }
        public DbSet<Sosial> Sosial { get; set; }
        public DbSet<TagToRestaurant> TagToRestaurant { get; set; }
        public DbSet<TagToTeamSosial> TagToTeamSosial { get; set; }
        public DbSet<Team> Team { get; set; }
        public DbSet<TeamSosial> TeamSosial { get; set; }
        public DbSet<Vacations> Vacation { get; set; }
        public DbSet<WorkingProcess> Working { get; set; }
    }
}
