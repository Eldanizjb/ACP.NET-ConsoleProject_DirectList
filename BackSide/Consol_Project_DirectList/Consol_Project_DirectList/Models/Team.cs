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
    public class Team
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string Image { get; set; }
        [NotMapped]
        public IFormFile ImageFile { get; set; }
        [MaxLength(100)]
        public string Fullname { get; set; }
        [MaxLength(100)]
        public string Position { get; set; }
        public List<TagToTeamSosial> TagToTeamSosial { get; set; }
        public List<TeamSosial> TeamSosial { get; set; }
        [NotMapped]
        public List<int> TagToTeamId { get; set; }


    }
}
