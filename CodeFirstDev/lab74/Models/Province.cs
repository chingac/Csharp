using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace lab74.Models
{
    public class Province
    {
        [Key]
        public string ProvinceCode { get; set; }
        [Required]
        [StringLength(255)]
        public string ProvinceName { get; set; }
        public virtual List<City> Cities { get; set; }
    }
}