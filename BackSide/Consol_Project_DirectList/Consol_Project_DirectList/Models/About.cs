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
    public class About
    {
        [Key]
        public int Id { get; set; }
        [Column(TypeName = "ntext")]
        public string Text { get; set; }

        public List<Details> Details { get; set; }
        public List<ContactInfo> ContactInfo { get; set; }
        public List<Features> Features { get; set; }





    }
}
