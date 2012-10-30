<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="Dashboard.aspx.cs" Inherits="ASTM.Dashboard.Dashboard" %>
<asp:Content ID="c1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    .auto-style1
    {
        height: 15px;
    }
    .auto-style2
    {
        height: 20px;
    }
    .auto-style3
    {
        font-size: large;
    }
</style>

</asp:Content>
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:95%;" align="center">
            <tr>
                <td width="15%" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td width="15%" colspan="3" class="auto-style2">
                <div class="clear hideSkiplink" id="menucontrol" runat="server">
                     <div class="loginDisplay" id="divWelcome" runat="server">
                                    &nbsp;
                                    <asp:LinkButton ID="lnkLogOff" runat="server" CausesValidation="false" PostBackUrl="~/Login/Login.aspx" OnClick="lnkLogOff_Click"
                                        Text="Log Off"></asp:LinkButton>
                                </div>
                                </div>
                      </td>
                                
            </tr>
            <tr>
                <td align="center" class="auto-style3" colspan="3" valign="top">
                    <strong>DASHBOARD</strong></td>
            </tr>
            <tr>
                <td align="center" colspan="3" valign="top" height="10px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    Date<strong> : </strong>
                    <asp:Label ID="Labeldate" runat="server"></asp:Label>
                </td>
                <td align="left">
                    &nbsp;</td>
                <td align="right" class="style2" valign="top">
                    Welcome<strong> Admin !&nbsp; </strong>
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="right" class="style2" valign="top">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp;</td>
                <td align="left">
                    &nbsp;</td>
                <td align="right" class="style2" valign="top">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left" colspan="3">
                    <asp:Panel ID="PanelDashboard" runat="server" Width="100%" BorderWidth="1px">
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td align="left">
                                    <strong>&nbsp;Year - Month : </strong>
                                    <asp:DropDownList ID="dropdownyear" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="dropdownyear_SelectedIndexChanged">
                                        <asp:ListItem>2012-2013</asp:ListItem>
                                        <asp:ListItem>2011-2012</asp:ListItem>
                                        <asp:ListItem>All</asp:ListItem>
                                    </asp:DropDownList>
                                    &nbsp;-
                                    <asp:DropDownList ID="DropDownMonth" runat="server">
                                        <asp:ListItem>January</asp:ListItem>
                                        <asp:ListItem>February</asp:ListItem>
                                        <asp:ListItem>March</asp:ListItem>
                                        <asp:ListItem>April</asp:ListItem>
                                        <asp:ListItem>May</asp:ListItem>
                                        <asp:ListItem>June</asp:ListItem>
                                        <asp:ListItem>July</asp:ListItem>
                                        <asp:ListItem>August</asp:ListItem>
                                        <asp:ListItem>September</asp:ListItem>
                                        <asp:ListItem>October</asp:ListItem>
                                        <asp:ListItem>November</asp:ListItem>
                                        <asp:ListItem>December</asp:ListItem>
                                        <asp:ListItem>All</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width="10px">
                                    &nbsp;</td>
                                <td valign="top">
                                    <asp:Panel ID="PanelCurrent" runat="server" BorderColor="#6666FF" 
                                        BorderStyle="Solid" BorderWidth="2px">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td class="style1" bgcolor="#003162" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                </td>
                                                <td class="style4" bgcolor="#003162" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Enquiries</td>
                                                <td class="style4" bgcolor="#003162" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Enrollments</td>
                                                <td class="style4" bgcolor="#003162" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Collection</td>
                                                <td class="style4" bgcolor="#003162" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Billing</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    MTD</td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMinquiry" runat="server" 
                                                        onclick="LinkButtonMinquiry_Click">24</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMEnrollment" runat="server" 
                                                        onclick="LinkButtonMEnrollment_Click">20</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMCollection" runat="server" 
                                                        onclick="LinkButtonMCollection_Click">20000</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMBilling" runat="server" 
                                                        onclick="LinkButtonMBilling_Click">30000</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    YTD</td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYInquiry" runat="server" 
                                                        onclick="LinkButtonYInquiry_Click">140</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYEnrollment" runat="server" 
                                                        onclick="LinkButtonYEnrollment_Click">100</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYCollection" runat="server" 
                                                        onclick="LinkButtonYCollection_Click">25000000</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtoYBilling" runat="server" 
                                                        onclick="LinkButtoYBilling_Click">3000000</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelAllprevyear" runat="server" BorderColor="#6666FF" 
                                        BorderStyle="Solid" BorderWidth="2px" Visible="False">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td bgcolor="#003162" class="style1" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                </td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Enquiries</td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Enrollments</td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Collection</td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Billing</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    MTD</td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMinquiry1" runat="server" 
                                                        onclick="LinkButtonMinquiry1_Click">74</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMEnrollment0" runat="server" 
                                                        onclick="LinkButtonMEnrollment_Click">50</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMCollection0" runat="server" 
                                                        onclick="LinkButtonMCollection_Click">2000000</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMBilling0" runat="server" 
                                                        onclick="LinkButtonMBilling_Click">3000000</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    YTD</td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYInquiry0" runat="server" 
                                                        onclick="LinkButtonYInquiry_Click">340</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYEnrollment0" runat="server" 
                                                        onclick="LinkButtonYEnrollment_Click">300</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYCollection0" runat="server" 
                                                        onclick="LinkButtonYCollection_Click">75000000</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtoYBilling0" runat="server" 
                                                        onclick="LinkButtoYBilling_Click">10000000</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelAll" runat="server" BorderColor="#6666FF" 
                                        BorderStyle="Solid" BorderWidth="2px" Visible="False">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td bgcolor="#003162" class="style1" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                </td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Enquiries</td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Enrollments</td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Collection</td>
                                                <td bgcolor="#003162" class="style4" align="center" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    Billing</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    MTD</td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMinquiry5" runat="server" 
                                                        onclick="LinkButtonMinquiry1_Click">98</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMEnrollment4" runat="server" 
                                                        onclick="LinkButtonMEnrollment_Click">70</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMCollection4" runat="server" 
                                                        onclick="LinkButtonMCollection_Click">2020000</asp:LinkButton>
                                                </td>
                                                <td bgcolor="Silver">
                                                    <asp:LinkButton ID="LinkButtonMBilling4" runat="server" 
                                                        onclick="LinkButtonMBilling_Click">3030000</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    YTD</td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYInquiry4" runat="server" 
                                                        onclick="LinkButtonYInquiry_Click">480</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYEnrollment4" runat="server" 
                                                        onclick="LinkButtonYEnrollment_Click">400</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtonYCollection4" runat="server" 
                                                        onclick="LinkButtonYCollection_Click">10000000</asp:LinkButton>
                                                </td>
                                                <td bgcolor="#DDDDDD">
                                                    <asp:LinkButton ID="LinkButtoYBilling4" runat="server" 
                                                        onclick="LinkButtoYBilling_Click">13000000</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td width="10px">
                                    &nbsp;</td>
                                <td>
                                    <asp:Panel ID="PanelInquiry" runat="server" BorderWidth="1px">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="style3" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    E<strong>nquiry</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Head Office</td>
                                                <td bgcolor="#DFDFDF">
                                                    10</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="Silver">
                                                    10</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Delhi - Noida</td>
                                                <td bgcolor="#DFDFDF">
                                                    4</td>
                                            </tr>
                                            <tr>
                                                <td class="style1">
                                                    Total</td>
                                                <td class="style1">
                                                    24</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelEnrollment" runat="server">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="style3" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    <strong>Enrollment</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Head Office</td>
                                                <td bgcolor="Silver">
                                                    8</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="#DFDFDF">
                                                    9</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Delhi - Noida</td>
                                                <td bgcolor="Silver">
                                                    3</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Total</td>
                                                <td>
                                                    20</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelCollection" runat="server">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="auto-style1" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    <strong>Collection</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Head Office</td>
                                                <td bgcolor="#DFDFDF">
                                                    8000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="Silver">
                                                    8000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Delhi - Noida</td>
                                                <td bgcolor="#DFDFDF">
                                                    4000</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Total</td>
                                                <td>
                                                    20000</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelBilling" runat="server">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="style3" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    <strong>Billing</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Head Office</td>
                                                <td bgcolor="Silver">
                                                    15000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="#DFDFDF">
                                                    10000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Delhi - Noida</td>
                                                <td bgcolor="Silver">
                                                    5000</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Total</td>
                                                <td>
                                                    30000</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>



                                    <asp:Panel ID="PanelYInquiry" runat="server" BorderWidth="1px">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="style3" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    E<strong>nquiry</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Head Office</td>
                                                <td bgcolor="#DFDFDF">
                                                    80</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="Silver">
                                                    30</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Delhi - Noida</td>
                                                <td bgcolor="#DFDFDF">
                                                    30</td>
                                            </tr>
                                            <tr>
                                                <td class="style1">
                                                    Total</td>
                                                <td class="style1">
                                                    140</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelYEnrollment" runat="server">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="style3" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    <strong>Enrollment</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Head Office</td>
                                                <td bgcolor="Silver">
                                                    70</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="#DFDFDF">
                                                    20</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Delhi - Noida</td>
                                                <td bgcolor="Silver">
                                                    10</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Total</td>
                                                <td>
                                                    100</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelYCollection" runat="server">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="style3" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    <strong>Collection</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Head Office</td>
                                                <td bgcolor="#DFDFDF">
                                                    15000000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="Silver">
                                                    8000000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Delhi - Noida</td>
                                                <td bgcolor="#DFDFDF">
                                                    2000000</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Total</td>
                                                <td>
                                                    25000000</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                    <asp:Panel ID="PanelYBilling" runat="server">
                                        <table border="1px" style="width:100%;">
                                            <tr>
                                                <td align="center" colspan="2" bgcolor="#003162" class="style3" 
                                                    style="background-color: #000000; color: #FFFFFF;">
                                                    <strong>Billing</strong></td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Head Office</td>
                                                <td bgcolor="Silver">
                                                    17000000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="#DFDFDF">
                                                    Mumbai - Bandra</td>
                                                <td bgcolor="#DFDFDF">
                                                    100000</td>
                                            </tr>
                                            <tr>
                                                <td bgcolor="Silver">
                                                    Delhi - Noida</td>
                                                <td bgcolor="Silver">
                                                    300000</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Total</td>
                                                <td>
                                                    3000000</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td width="10px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="ButtonViewAll" runat="server" Text="View All Center Details" 
                                        onclick="Button1_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td colspan="4">
                                <asp:Panel ID="PanelAllCenter"  Visible="false" runat="server" 
                                        HorizontalAlign="Center" BorderWidth="2px">
                                    <table border="1px" style="width:100%;">
                                        <tr>
                                            <td bgcolor="#003162" class="style1" 
                                                style="background-color: #000000; color: #FFFFFF;">
                                            </td>
                                            <td bgcolor="#003162" class="style4" 
                                                style="background-color: #000000; color: #FFFFFF;">
                                                Enquiries</td>
                                            <td bgcolor="#003162" class="style4" 
                                                style="background-color: #000000; color: #FFFFFF;">
                                                Enrollments</td>
                                            <td bgcolor="#003162" class="style4" 
                                                style="background-color: #000000; color: #FFFFFF;">
                                                Collection</td>
                                            <td bgcolor="#003162" class="style4" 
                                                style="background-color: #000000; color: #FFFFFF;">
                                                Billing</td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                Head Office</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                MTD</td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton ID="LinkButtonMHO_Inquiry" runat="server" 
                                                    onclick="LinkButtonMHO_Inquiry_Click">10</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton ID="LinkButtonMEnrollment1" runat="server">8</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton ID="LinkButtonMCollection1" runat="server" 
                                                    onclick="LinkButtonMCollection_Click">8000</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton ID="LinkButtonMBilling1" runat="server" 
                                                    onclick="LinkButtonMBilling_Click">15000</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                YTD</td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton ID="LinkButtonYInquiry1" runat="server" 
                                                    onclick="LinkButtonYInquiry_Click" Enabled="False">140</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton ID="LinkButtonYEnrollment1" runat="server" 
                                                    onclick="LinkButtonYEnrollment_Click" Enabled="False">100</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton ID="LinkButtonYCollection1" runat="server" 
                                                    onclick="LinkButtonYCollection_Click" Enabled="False">25000000</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton ID="LinkButtoYBilling1" runat="server" 
                                                    onclick="LinkButtoYBilling_Click" Enabled="False">3000000</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                               <a href="CenterDashboard.aspx"> Mumbai - Bandra </a></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                MTD</td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton ID="LinkButtonMinquiry3" runat="server" Enabled="False" 
                                                    onclick="LinkButtonMinquiry_Click">10</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonMEnrollment2" runat="server" 
                                                    onclick="LinkButtonMEnrollment_Click" Width="9px">20</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonMCollection2" runat="server" 
                                                    onclick="LinkButtonMCollection_Click">8000</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonMBilling2" runat="server" 
                                                    onclick="LinkButtonMBilling_Click">10000</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                YTD</td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonYInquiry2" runat="server" 
                                                    onclick="LinkButtonYInquiry_Click">140</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonYEnrollment2" runat="server" 
                                                    onclick="LinkButtonYEnrollment_Click">100</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonYCollection2" runat="server" 
                                                    onclick="LinkButtonYCollection_Click">25000000</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtoYBilling2" runat="server" 
                                                    onclick="LinkButtoYBilling_Click">3000000</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                Delhi - Noida</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                MTD</td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonMinquiry4" runat="server" 
                                                    onclick="LinkButtonMinquiry_Click">4</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonMEnrollment3" runat="server" 
                                                    onclick="LinkButtonMEnrollment_Click">3</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonMCollection3" runat="server" 
                                                    onclick="LinkButtonMCollection_Click">4000</asp:LinkButton>
                                            </td>
                                            <td bgcolor="Silver">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonMBilling3" runat="server" 
                                                    onclick="LinkButtonMBilling_Click">5000</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                YTD</td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonYInquiry3" runat="server" 
                                                    onclick="LinkButtonYInquiry_Click">140</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonYEnrollment3" runat="server" 
                                                    onclick="LinkButtonYEnrollment_Click">100</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtonYCollection3" runat="server" 
                                                    onclick="LinkButtonYCollection_Click">25000000</asp:LinkButton>
                                            </td>
                                            <td bgcolor="#DDDDDD">
                                                <asp:LinkButton enabled="false"  ID="LinkButtoYBilling3" runat="server" 
                                                    onclick="LinkButtoYBilling_Click">3000000</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="5">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <asp:Button ID="Button1" runat="server" Text="Close" onclick="Button1_Click1" />
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
            <td colspan="3">
                &nbsp;</td>
            </tr>
            </table>

</asp:Content>