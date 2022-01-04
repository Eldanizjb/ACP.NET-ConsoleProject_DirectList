using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;


namespace Consol_Project_DirectList.Models
{
    public class Restaurant
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(100)]
        public string Name { get; set; }
        [MaxLength(100)]
        public string Image { get; set; }
        [NotMapped]
        public IFormFile ImageFile { get; set; }
        [MaxLength(250)]
        public string SmallImage { get; set; }
        [NotMapped]
        public IFormFile SmallImageFile { get; set; }
        [MaxLength(100)]
        public string Icon { get; set; }
        [Column(TypeName = "ntext")]
        public string About { get; set; }
        [NotMapped]
        public IFormFile IconFile { get; set; }
        public short Capacity { get; set; }
        [MaxLength(250)]
        public string Website { get; set; }
        [MaxLength(500)]
        public string Location { get; set; }
        [MaxLength(2000)]
        public string Locationlink { get; set; }
        [MaxLength(250)]
        public string Adresses { get; set; }
        [MaxLength(50)]
        public string Order { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime OpeningTime { get; set; }
        public DateTime ClosingTime { get; set; }

        public List<AdministrationToRestaurant> AdministrationToRestaurant { get; set; }
        public List<Comment> Comments { get; set; }
        public List<ContactPhoneToRestaurant> ContactPhoneToRestaurant { get; set; }
        public List<TagToRestaurant> TagToRestaurant { get; set; }
        public List<FeatureToRestaurant> FeatureToRestaurants { get; set; }
        public List<MenuToRestaurant> MenuToRestaurants { get; set; }
        public List<Order> Orders { get; set; }


        [NotMapped]
        public List<int> TagToRestaurantId { get; set; }
        [NotMapped]
        public List<int> MenuToRestaurantId { get; set; }
        [NotMapped]
        public List<int> FeatureToRestaurantId { get; set; }
        [NotMapped]
        public List<int> RestaurantTag { get; set; }
        [NotMapped]
        public List<int> RestaurantFeatures { get; set; }

    }

}
