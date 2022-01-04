using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Consol_Project_DirectList.Models
{
    public class AdministrationToRestaurant
    {
        [Key]
        public int Id { get; set; }
        
        [ForeignKey("RestaurantAdministration")]
        public int RestaurantAdministrationId { get; set; }
        public RestaurantAdministration RestaurantAdministration { get; set; }


        [ForeignKey("Restaurant")]
        public int RestaurantId { get; set; }
        public Restaurant Restaurant { get; set; }

    }
}
