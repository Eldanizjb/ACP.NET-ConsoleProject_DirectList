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
    public class TeamSosial
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(50)]
        public string Icon { get; set; }
        [NotMapped]
        public IFormFile IconFile { get; set; }
        [MaxLength(50)]
        public string Name { get; set; }
        [MaxLength(250)]
        public string Link { get; set; }

        [ForeignKey("Team")]
        public int? TeamId { get; set; }
        public Team Team { get; set; }

        public List<TagToTeamSosial> TagToTeamSosial { get; set; }

    }
}
