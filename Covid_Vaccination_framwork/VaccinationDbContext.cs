using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Covid_Vaccination_framwork
{
    public class VaccinationDbContext : DbContext
    {
        public VaccinationDbContext() : base("name = VaccinationString")
        {

        }

        public DbSet<User> Users { get; set; }
        public DbSet<Slot> Slots { get; set; }
        public DbSet<FAQ> FAQs { get; set; }
    }
}