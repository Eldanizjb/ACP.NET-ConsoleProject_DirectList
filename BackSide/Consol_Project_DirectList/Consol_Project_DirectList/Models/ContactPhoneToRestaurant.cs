using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Consol_Project_DirectList.Models
{
    public class ContactPhoneToRestaurant
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("RestaurantContactPhone")]
        public int RestaurantContactPhoneId { get; set; }
        public RestaurantContactPhone RestaurantContactPhone { get; set; }


        [ForeignKey("Restaurant")]
        public int RestaurantId { get; set; }
        public Restaurant Restaurant { get; set; }
    }
}
