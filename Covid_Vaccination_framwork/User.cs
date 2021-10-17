using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Covid_Vaccination_framwork
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Adharno { get; set; }
        public string Phoneno { get; set; }
        public string Password { get; set; }
        public string Gender { get; set; }
        public int Bday { get; set; }
        public int Bmonth { get; set; }
        public int Byear { get; set; }

    }
}