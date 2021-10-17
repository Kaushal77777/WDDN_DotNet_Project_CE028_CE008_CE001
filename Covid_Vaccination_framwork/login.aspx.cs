using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid_Vaccination_framwork
{
    public partial class login : System.Web.UI.Page
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
            string input_phoneno = contact.Text;
            string input_password = password.Text;
            User u1 = db.Users.Where(u => u.Phoneno == input_phoneno).FirstOrDefault<User>();
            if(u1 != null)
            {
                if (u1.Password == input_password)
                {
                    Session["Userid"] = u1.Id;
                    Response.Redirect("slotbook.aspx");
                }
                else
                {
                    errmsg.Text = "Invalid Credentials";
                }
            }
            else
            {
                errmsg.Text = "Invalid Credentials";
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