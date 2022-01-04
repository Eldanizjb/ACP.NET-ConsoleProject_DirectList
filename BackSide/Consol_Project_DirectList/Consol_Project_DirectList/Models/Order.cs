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
    public class Order
    {
        [Key]
        public int Id { get; set; }

        [MaxLength(30)]
        public string Name { get; set; }
        public byte GuestCount { get; set; }


        [MaxLength(30)]
        public string Surname { get; set; }
        public DateTime CreateDate { get; set; }
        public DateTime OrderDate { get; set; }

        [MaxLength(20)]
        public string IdentityCard { get; set; }

        [MaxLength(30)]
        public string Phone { get; set; }

        [ForeignKey("Guest")]
        public int? GuestId { get; set; }
        public Guest Guest { get; set; }

        [ForeignKey("Restaurant")]
        public int? RestaurantId { get; set; }
        public Restaurant Restaurant { get; set; }
        


    }
}
