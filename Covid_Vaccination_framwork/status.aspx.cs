using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Covid_Vaccination_framwork
{
    public partial class status : System.Web.UI.Page
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
                namefromdb.Text = logedinUser.Name;
                adharnodb.Text = logedinUser.Adharno;
                emaildb.Text = logedinUser.Email;
                contactdb.Text = logedinUser.Phoneno;
                var status = (from r in db.Slots where r.User.Id == logedinUserId select r.status).FirstOrDefault<string>();
                if (status == null)
                {
                    status = "Pending";
                }
                bookstatusdb.Text = status;
            }
            else
            {
                navuser.Text = "Please Login";
            }
        }

        protected void logoutbutton_Click(object sender, EventArgs e)
        {
            namefromdb.Text = null;
            adharnodb.Text = null;
            emaildb.Text = null;
            contactdb.Text = null;
            bookstatusdb.Text = null;
            Session.Clear();
            Session.Abandon();
        }
    }
}