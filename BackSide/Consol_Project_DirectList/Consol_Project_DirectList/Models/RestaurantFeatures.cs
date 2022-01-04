using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Consol_Project_DirectList.Models
{
    public class RestaurantFeatures
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string Name { get; set; }

        public List<FeatureToRestaurant> FeatureToRestaurant { get; set; }

    }
}
