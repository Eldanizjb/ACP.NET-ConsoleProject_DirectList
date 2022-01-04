using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.Models
{
    public class TagToRestaurant
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("RestaurantTag")]
        public int RestaurantTagId { get; set; }
        public RestaurantTag RestaurantTag { get; set; }


        [ForeignKey("Restaurant")]
        public int RestaurantId { get; set; }
        public Restaurant Restaurant { get; set; }
    }
}
