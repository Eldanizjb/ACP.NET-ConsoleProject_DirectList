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
    public class Vacation
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(100)]
        public string Icon { get; set; }
        [NotMapped]
        public IFormFile IconFile { get; set; }
        [MaxLength(100)]
        public string Title { get; set; }
        [MaxLength(500)]
        public string Content { get; set; }
      
    }
}
