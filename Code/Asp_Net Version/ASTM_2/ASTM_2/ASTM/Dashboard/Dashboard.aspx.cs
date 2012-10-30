using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASTM.Dashboard
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Labeldate.Text = DateTime.Now.ToString();
                PanelInquiry.Visible = false;
                PanelEnrollment.Visible = false;
                PanelCollection.Visible = false;

                PanelBilling.Visible = false;

                PanelYInquiry.Visible = false;
                PanelYEnrollment.Visible = false;
                PanelYCollection.Visible = false;
                PanelYBilling.Visible = false;

                dropdownyear.Items.FindByText("2012-2013").Selected = true;
                DropDownMonth.Items.FindByText("October").Selected = true;
            }
        }
        protected void LinkButtonMinquiry_Click(object sender, EventArgs e)
        {
            PanelInquiry.Visible = true;
            PanelEnrollment.Visible = false;
            PanelCollection.Visible = false;
            PanelBilling.Visible = false;

            PanelYInquiry.Visible = false;
            PanelYEnrollment.Visible = false;
            PanelYCollection.Visible = false;
            PanelYBilling.Visible = false;

        }
        protected void LinkButtonMEnrollment_Click(object sender, EventArgs e)
        {
            PanelInquiry.Visible = false;
            PanelEnrollment.Visible = true;
            PanelCollection.Visible = false;
            PanelBilling.Visible = false;

            PanelYInquiry.Visible = false;
            PanelYEnrollment.Visible = false;
            PanelYCollection.Visible = false;
            PanelYBilling.Visible = false;

        }
        protected void LinkButtonMCollection_Click(object sender, EventArgs e)
        {
            PanelInquiry.Visible = false;
            PanelEnrollment.Visible = false;
            PanelCollection.Visible = true;
            PanelBilling.Visible = false;

            PanelYInquiry.Visible = false;
            PanelYEnrollment.Visible = false;
            PanelYCollection.Visible = false;
            PanelYBilling.Visible = false;
        }
        protected void LinkButtonMBilling_Click(object sender, EventArgs e)
        {
            PanelInquiry.Visible = false;
            PanelEnrollment.Visible = false;
            PanelCollection.Visible = false;
            PanelBilling.Visible = true;

            PanelYInquiry.Visible = false;
            PanelYEnrollment.Visible = false;
            PanelYCollection.Visible = false;
            PanelYBilling.Visible = false;
        }
        protected void LinkButtonYInquiry_Click(object sender, EventArgs e)
        {
            PanelInquiry.Visible = false;
            PanelEnrollment.Visible = false;
            PanelCollection.Visible = false;

            PanelBilling.Visible = false;


            PanelYInquiry.Visible = true;
            PanelYEnrollment.Visible = false;
            PanelYCollection.Visible = false;
            PanelYBilling.Visible = false;

        }
        protected void LinkButtonYEnrollment_Click(object sender, EventArgs e)
        {
            PanelInquiry.Visible = false;
            PanelEnrollment.Visible = false;
            PanelCollection.Visible = false;
            PanelBilling.Visible = false;


            PanelYInquiry.Visible = false;
            PanelYEnrollment.Visible = true;
            PanelYCollection.Visible = false;
            PanelYBilling.Visible = false;

        }
        protected void LinkButtonYCollection_Click(object sender, EventArgs e)
        {

            PanelInquiry.Visible = false;
            PanelEnrollment.Visible = false;
            PanelCollection.Visible = false;
            PanelBilling.Visible = false;

            PanelYInquiry.Visible = false;
            PanelYEnrollment.Visible = false;
            PanelYCollection.Visible = true;
            PanelYBilling.Visible = false;

        }
        protected void LinkButtoYBilling_Click(object sender, EventArgs e)
        {
            PanelInquiry.Visible = false;
            PanelEnrollment.Visible = false;
            PanelCollection.Visible = false;

            PanelBilling.Visible = false;

            PanelYInquiry.Visible = false;
            PanelYEnrollment.Visible = false;
            PanelYCollection.Visible = false;
            PanelYBilling.Visible = true;

        }
        protected void dropdownyear_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dropdownyear.SelectedValue == "2011-2012")
            {
                PanelAllprevyear.Visible = true;
                PanelCurrent.Visible = false;
                PanelAll.Visible = false;
            }
            else if (dropdownyear.SelectedValue == "2012-2013")
            {
                PanelAllprevyear.Visible = false;
                PanelCurrent.Visible = true;
                PanelAll.Visible = false;
            }
            else
            {
                PanelAllprevyear.Visible = false;
                PanelCurrent.Visible = false;
                PanelAll.Visible = true;
            }
        }
        protected void LinkButtonMinquiry1_Click(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            PanelAllCenter.Visible = true;
        }
        protected void LinkButtonMHO_Inquiry_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdmissionInquiryList.aspx");

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            PanelAllCenter.Visible = false;
        }
        protected void lnkLogOff_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        // Response.Redirect("~/Studentlist.aspx");


        protected void LinkButtonMEnrollment1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Studentlist.aspx");
        }
    }
}