using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace StatSports.Models
{
    public class Team
    {

        [Key]
        [Display(Name = "Team ID")]
        public int ID { get; set; }

        [Required]
        [Display(Name = "Team Name")]
        [StringLength(40, ErrorMessage = "Name should be 1 to 40 char in lenght")]
        public string team_Name { get; set; }

        [Required]
        [Display(Name = "Team Abbreviation")]
        [StringLength(3, ErrorMessage = "Abbreviation should be 3 char in lenght")]
        public string team_Abb { get; set; }

        [Required]
        [Display(Name = "City")]
        [StringLength(35, ErrorMessage = "City should be at most 35 char in lenght")]
        public string team_City { get; set; }

        [Required]
        [Display(Name = "State")]
        [StringLength(35, ErrorMessage = "State should be at most 35 char in lenght")]
        public string team_State { get; set; }

        [Required]
        [Display(Name = "Stadium")]
        public string stadium { get; set; }

        [Required]
        [Display(Name = "League")]
        [StringLength(2, ErrorMessage = "League should be NL or AL")]
        public string league { get; set; }

        [Required]
        [Display(Name = "Division")]
        public string div { get; set; }



    }
}
