using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Consol_Project_DirectList.Models
{
    public class Features
    {
        [Key]
        public int Id { get; set; }
        [MaxLength(250)]
        public string Name { get; set; }

        [ForeignKey("Helpers")]
        public int HelperId { get; set; }
        public Helper Helpers { get; set; }
    }
}
