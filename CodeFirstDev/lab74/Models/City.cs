using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace lab74.Models
{
    public class City
    {
        [Key]
        public int CityId { get; set; }
        [Required]
        [StringLength(255)]
        public string CityName { get; set; }

        public virtual string ProvinceCode { get; set; }

        public virtual Province Province { get; set; }
    }
}