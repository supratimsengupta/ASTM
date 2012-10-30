using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASTM.Module
{
    public partial class Module : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["CourseID"] != null)
                {
                    SqlDataSource1.SelectParameters[0].DefaultValue = Request.QueryString["CourseID"].ToString();
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Module")
            {
                Response.Redirect("~/SubModule/SubModule.aspx?ModuleID=" + e.CommandArgument);
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton linkButton = e.Row.FindControl("lnkSubModule") as LinkButton;
                linkButton.CommandArgument = e.Row.Cells[1].Text;
            }
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

    }
}