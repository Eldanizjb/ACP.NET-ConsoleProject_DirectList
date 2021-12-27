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
    public class Setting
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(100)]
        public string Logo { get; set; }
        [NotMapped]
        public IFormFile LogoFile { get; set; }
        [MaxLength(500)]
        public string SiteInfo { get; set; }
        [MaxLength(500)]
        public string Adresses { get; set; }
        [MaxLength(30)]
        public string Phone { get; set; }
        [MaxLength(100)]
        public string Email { get; set; }
        [MaxLength(250)]
        public string Image { get; set; }
        [NotMapped]
        public IFormFile ImageFile { get; set; }
        [MaxLength(500)]
        public string Qoal { get; set; }
        [MaxLength(500)]
        public string ContactInfo { get; set; }
    }
}
