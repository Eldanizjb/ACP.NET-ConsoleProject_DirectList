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

        public DbSet<Helper> Helpers { get; set; }
        public DbSet<Banner> Banner { get; set; }
        public DbSet<Blog> Blog { get; set; }
        public DbSet<Book> Book { get; set; }
        public DbSet<Comenter> Comenter { get; set; }
        public DbSet<Comment> Comment { get; set; }
        public DbSet<ContactInfo> ContactInfo { get; set; }
        public DbSet<ContactPost> ContactPost { get; set; }
        public DbSet<CustomUser> CustomUser { get; set; }
        public DbSet<Details> Details { get; set; }
        public DbSet<Features> Features { get; set; }
        public DbSet<Guest> Guest { get; set; }
        public DbSet<KeyPeople> KeyPeople { get; set; }
        public DbSet<Locations> Locations { get; set; }
        public DbSet<Menu> Menu { get; set; }
        public DbSet<Message> Message { get; set; }
        public DbSet<Position> Position { get; set; }
        public DbSet<Restaurant> Restaurant { get; set; }
        public DbSet<RestaurantCategory> RestaurantCategory { get; set; }
        public DbSet<Setting> Setting { get; set; }
        public DbSet<Sosial> Sosial { get; set; }
        public DbSet<TagToContactPost> TagToContactPost { get; set; }
        public DbSet<Vacation> Vacation { get; set; }
        public DbSet<Working> Working { get; set; }
    }
}
