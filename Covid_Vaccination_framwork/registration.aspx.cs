using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid_Vaccination_framwork
{
    public partial class registration : System.Web.UI.Page
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
            VaccinationDbContext db = new VaccinationDbContext();
            User u = new User();
            u.Name = name.Text;
            u.Adharno = adhar.Text;
            u.Email = email.Text;
            u.Phoneno = contact.Text;
            u.Gender = gender.SelectedValue;
            u.Bday = Int32.Parse(dropdown_date.SelectedValue);
            u.Bmonth = Int32.Parse(dropdown_month.SelectedValue);
            u.Byear = Int32.Parse(dropdown_year.SelectedValue);
            u.Password = password.Text;
            db.Users.Add(u);
            db.SaveChanges();
            Response.Redirect("login.aspx");
        }

        protected void logoutbutton_Click(object sender, EventArgs e)
        {
            navuser.Text = "Please Login";
            Session.Clear();
            Session.Abandon();
        }
    }
}