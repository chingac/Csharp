using lab74.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace lab74.DataContext
{
    public class LocationContext : DbContext
    {
        public LocationContext()
            : base("DefaultConnection")
        {

        }

        public DbSet<City> Cities { get; set; }
        public DbSet<Province> Provinces { get; set; }
    }
}