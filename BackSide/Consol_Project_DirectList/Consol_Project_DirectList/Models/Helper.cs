using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Consol_Project_DirectList.Models
{
    public class Helper
    {
        [Key]
        public int Id { get; set; }
        [Column(TypeName = "ntext")]
        public string Content { get; set; }
        public List<Details> Details { get; set; }
        public List<ContactInfo> ContactInfo { get; set; }
        public List<Features> Features { get; set; }

    }
}
