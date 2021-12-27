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
    public class Details
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string Name { get; set; }
        [MaxLength(100)]
        public string Icon { get; set; }
        [NotMapped]
        public IFormFile IconFile { get; set; }

        [ForeignKey("Helpers")]
        public int HelperId { get; set; }
        public Helper Helpers { get; set; }

        [ForeignKey("Locations")]
        public int LocationsId { get; set; }
        public Locations Locations { get; set; }

        [ForeignKey("Menu")]
        public int MenuId { get; set; }
        public Menu Menu { get; set; }

        [ForeignKey("RestaurantI")]
        public int RestaurantId { get; set; }
        public Comment Comment { get; set; }

        public List<Restaurant> Restaurant { get; set; }

    }
}
