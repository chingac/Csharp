namespace lab74.Migrations
{
    using lab74.Models;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<lab74.DataContext.LocationContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(lab74.DataContext.LocationContext context)
        {
           
            context.Provinces.AddOrUpdate(x => x.ProvinceCode , new Province { ProvinceCode = "BC", ProvinceName = "British Columbia" });
            context.Provinces.AddOrUpdate(x => x.ProvinceCode , new Province { ProvinceCode = "AB" , ProvinceName = "Alberta" });

            context.SaveChanges();

            context.Cities.AddOrUpdate(x => x.CityId , new City { CityName = "Surrey" ,ProvinceCode = context.Provinces.Find("BC").ProvinceCode });
            context.Cities.AddOrUpdate(x => x.CityId , new City { CityName = "Richmond" , ProvinceCode = context.Provinces.Find("BC").ProvinceCode});
            context.Cities.AddOrUpdate(x => x.CityId, new City { CityName = "Calgary", ProvinceCode = context.Provinces.Find("AB").ProvinceCode });

            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
        }
    }
}
