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
    public class Comenter
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string MainImage { get; set; }
        [NotMapped]
        public IFormFile MainImageFile { get; set; }

        [MaxLength(250)]
        public string Name { get; set; }
        [MaxLength(250)]
        public string Surname { get; set; }
        [MaxLength(250)]
        public string Fullname { get; set; }
        [MaxLength(250)]
        public string Email { get; set; }
        [MaxLength(1000)]
        public string Content { get; set; }
        public DateTime CreateDate { get; set; }

        public List<Comment> Comment { get; set; }


    }
}
