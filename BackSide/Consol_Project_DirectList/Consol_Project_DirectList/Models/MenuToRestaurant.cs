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
    public class MenuToRestaurant
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("RestaurantMenu")]
        public int RestaurantMenuId { get; set; }
        public RestaurantMenu RestaurantMenu { get; set; }


        [ForeignKey("Restaurant")]
        public int RestaurantId { get; set; }
        public Restaurant Restaurant { get; set; }

    }
}
