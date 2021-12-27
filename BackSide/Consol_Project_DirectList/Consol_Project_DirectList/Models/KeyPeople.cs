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
    public class KeyPeople
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string MainImage { get; set; }
        [NotMapped]
        public IFormFile MainImageFile { get; set; }
        [MaxLength(250)]
        public string Fullname { get; set; }

        [MaxLength(30)]
        public string Phone { get; set; }
        [MaxLength(50)]
        public string Logins { get; set; }
        [MaxLength(50)]
        public string Email { get; set; }
        public List<Details> Details { get; set; }

    }
}
