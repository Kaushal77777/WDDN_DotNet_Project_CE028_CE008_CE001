using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid_Vaccination_framwork
{
    public partial class slotbook : System.Web.UI.Page
    {
        VaccinationDbContext db = new VaccinationDbContext();
        User logedinUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Userid"] != null)
            {
                int logedinUserId = Int32.Parse(Session["Userid"].ToString());
                logedinUser = db.Users.Where(c => c.Id == logedinUserId).FirstOrDefault();
                navuser.Text = "Welcome " + logedinUser.Name;
            }
            else
            {
                navuser.Text = "Please Login";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Userid"] != null)
            {
                Slot s = new Slot();
                s.City = city.Text;
                s.State = state.Text;
                s.Pinno = pinno.Text;
                s.Doseno = doseno.SelectedValue;
                s.Day = Int32.Parse(dropdown_date.SelectedValue);
                s.Month = Int32.Parse(dropdown_month.SelectedValue);
                s.Time = dropdown_time.SelectedValue;
                s.VaccineType = dropdown_vaccinetype.SelectedValue;
                s.User = logedinUser;
                s.status = "Booked";
                db.Slots.Add(s);
                db.SaveChanges();
                Response.Redirect("status.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void logoutbutton_Click(object sender, EventArgs e)
        {
            navuser.Text = "Please Login";
            Session.Clear();
            Session.Abandon();
        }
    }
}