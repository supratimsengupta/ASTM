using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASTM.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            
            
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            TxtUserName.Text = "";
            txtPassword.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (TxtUserName.Text == "admin" && txtPassword.Text == "admin")
            {
                Response.Redirect("~/Dashboard/Dashboard.aspx");
            }
            else if (TxtUserName.Text == "staff" && txtPassword.Text == "staff")
            {
                Response.Redirect("~/Dashboard/CenterDashboard.aspx");
            }
            else {
                Response.Write("");
            }
        }
    }
}