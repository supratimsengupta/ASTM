using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASTM.Syllabus
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["SubModuleID"] != null)
                {
                    SqlDataSource1.SelectParameters[0].DefaultValue = Request.QueryString["SubModuleID"].ToString();
                }
            }
        }
    }
}