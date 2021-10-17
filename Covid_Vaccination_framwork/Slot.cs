using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Covid_Vaccination_framwork
{
    public class Slot
    {
        public int SlotId { get; set; }
        public string Time { get; set; }
        public string Doseno { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Pinno { get; set; }
        public int Month { get; set; }
        public int Day { get; set; }
        public string VaccineType { get; set; }
        public User User { get; set; }
        public string status { get; set; }
    }
}