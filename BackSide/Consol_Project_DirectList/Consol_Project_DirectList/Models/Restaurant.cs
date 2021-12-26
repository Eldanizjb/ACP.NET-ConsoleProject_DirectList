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
        [NotMapped]
        public IFormFile IconFile { get; set; }
        [MaxLength(250)]
        public string Adresses { get; set; }
        [MaxLength(50)]
        public string Order { get; set; }
        public DateTime CreateDate { get; set; }


        [ForeignKey("RestaurantCategory")]
        public int CategoryId { get; set; }
        public RestaurantCategory RestaurantCategory { get; set; }

        [ForeignKey("Details")]
        public int DetailsId { get; set; }
        public Details Details { get; set; }

        [ForeignKey("KeyPeople")]
        public int KeyPeopleId { get; set; }
        public KeyPeople KeyPeople { get; set; }

        public List<Book> Book { get; set; }


    }

}
