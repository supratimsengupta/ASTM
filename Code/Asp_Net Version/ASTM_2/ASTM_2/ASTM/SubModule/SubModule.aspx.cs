using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASTM.SubModule
{
    public partial class SubModule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ModuleID"] != null)
                {
                    SqlDataSource1.SelectParameters[0].DefaultValue = Request.QueryString["ModuleID"].ToString();
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Syllabus")
            {
                Response.Redirect("~/Syllabus/Default.aspx?SubModuleID=" + e.CommandArgument);
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton linkButton = e.Row.FindControl("lnkSyllabus") as LinkButton;
                linkButton.CommandArgument = e.Row.Cells[0].Text;
            }
        }

    }
}