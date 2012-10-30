using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASTM.Courses
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Module")
            { 
                    Response.Redirect("~/Module/module.aspx?CourseID=" + e.CommandArgument);
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton linkButton = e.Row.FindControl("lnkModules") as LinkButton;
                linkButton.CommandArgument =  e.Row.Cells[0].Text;
            }
        }



    }
}