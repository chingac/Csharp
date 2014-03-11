using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;


namespace MvcLab
{
    [MetadataType(typeof(RegionMetadata))]
    public partial class Region
    {
    }
    public class RegionMetadata
    {
        [Required]
        [StringLength(20, ErrorMessage = "The {0} must be between {2} and {1} characters.", MinimumLength = 1)]
        [Display(Name = "Rgn Desc")]
        public string RegionDescription { get; set; }

    }

}