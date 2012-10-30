using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASTM.Batch
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiViewBatch.SetActiveView(ViewModify);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiViewBatch.SetActiveView(ViewList);
        }

        protected void GridViewCenter_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                FormView1.PageIndex = (Convert.ToInt32(e.CommandArgument));
                MultiViewBatch.SetActiveView(ViewModify);
                FormView1.ChangeMode(FormViewMode.Edit);
            }

        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "SwitchViewByID":
                    GridView1.DataBind();
                    GridView1.EditIndex = -1;
                    break;
            }
        }

        protected void GridViewCenter_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton linkButton = e.Row.FindControl("LinkEdit") as LinkButton;
                linkButton.CommandArgument = e.Row.RowIndex.ToString();
            }
        }

        protected void LinkEdit_Click(object sender, EventArgs e)
        {
            MultiViewBatch.SetActiveView(ViewModify);
        }
    }
}