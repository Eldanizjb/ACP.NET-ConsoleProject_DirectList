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
    public class Comment
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string MainImage { get; set; }
        [NotMapped]
        public IFormFile MainImageFile { get; set; }
        [MaxLength(100)]
        public string Name { get; set; }
        [MaxLength(100)]
        public string Surname { get; set; }
        [MaxLength(250)]
        public string Email { get; set; }
        [MaxLength(500)]
        public string Subject { get; set; }
        [MaxLength(1000)]
        public string Content { get; set; }
        public DateTime CreateDate { get; set; }

        [ForeignKey("ParentComment")]
        public int CommentId { get; set; }
        public Comment ParentComment { get; set; }

        [ForeignKey("Comenter")]
        public int ComenterId { get; set; }
        public Comenter Comenter { get; set; }
       
        [ForeignKey("Blog")]
        public int BlogId { get; set; }
        public Blog Blog { get; set; }

        public List<Details> Details { get; set; }




    }
}
