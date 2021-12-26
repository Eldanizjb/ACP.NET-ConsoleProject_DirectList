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
    public class TagToContactPost
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Position")]
        public int PositionId { get; set; }
        public Position Position { get; set; }


        [ForeignKey("ContactPost")]
        public int ContactPostId { get; set; }
        public ContactPost ContactPost { get; set; }
    }
}
