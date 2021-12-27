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
    public class Menu
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string Name { get; set; }
        [MaxLength(500)]
        public string Detail { get; set; }
        [Column(TypeName = "money")]
        public decimal Price { get; set; }
        [ForeignKey("Details")]
        public int? DetailsId { get; set; }
        public Details Details { get; set; }


    }
}
