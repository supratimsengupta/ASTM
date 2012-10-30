<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASTM.Enquiry.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiViewContacts" runat="server" ActiveViewIndex="0">
        <asp:View ID="ViewList" runat="server">
            <table style="width:100%;">

                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CssClass="comments" CommandArgument="ViewModify" 
                            CommandName="SwitchViewByID">New</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                            ForeColor="Black" GridLines="Horizontal" Width="100%" 
                            AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                    SortExpression="ID" Visible="False" InsertVisible="False" />
                                <asp:BoundField DataField="InquiryID" HeaderText="InquiryID" 
                                    SortExpression="InquiryID" Visible="False" />
                                <asp:BoundField DataField="Name" HeaderText="Name" 
                                    SortExpression="Name" />
                                <asp:BoundField DataField="CourseID" HeaderText="CourseID" 
                                    SortExpression="CourseID" Visible="False" />
                                <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" 
                                    SortExpression="ContactNumber" />
                                <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                                    SortExpression="EmailID" />
                                <asp:BoundField DataField="DateOfInquiry" HeaderText="Date Of Enquiry" 
                                    SortExpression="DateOfInquiry" />
                                <asp:BoundField DataField="Purpose" HeaderText="Purpose" 
                                    SortExpression="Purpose" />
                                <asp:BoundField DataField="InquiryModeID" HeaderText="InquiryModeID" 
                                    SortExpression="InquiryModeID" Visible="False" />
                                <asp:BoundField DataField="RecommendationSourceID" 
                                    HeaderText="RecommendationSourceID" SortExpression="RecommendationSourceID" 
                                    Visible="False" />
                                <asp:BoundField DataField="PreferedBranchID" HeaderText="PreferedBranchID" 
                                    SortExpression="PreferedBranchID" Visible="False" />
                                <asp:BoundField DataField="PreferedBatchID" HeaderText="PreferedBatchID" 
                                    SortExpression="PreferedBatchID" Visible="False" />
                                <asp:BoundField DataField="ReceivedBy" HeaderText="Received By" 
                                    SortExpression="ReceivedBy" />
                                <asp:BoundField DataField="ExecutedBy" HeaderText="Executed By" 
                                    SortExpression="ExecutedBy" />
                                <asp:BoundField DataField="PotentialStatus" HeaderText="Potential Status" 
                                    SortExpression="PotentialStatus" />
                                <asp:BoundField DataField="ModificationType" HeaderText="ModificationType" 
                                    SortExpression="ModificationType" Visible="False" />
                                <asp:BoundField DataField="ModifiedBy" HeaderText="Modified By" 
                                    SortExpression="ModifiedBy" Visible="False" />
                                <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" 
                                    SortExpression="ModifiedDate" Visible="False" />
                                <asp:BoundField DataField="InquiryMode" HeaderText="Enquiry Mode" 
                                    SortExpression="InquiryMode" />
                                <asp:BoundField DataField="CourseName" HeaderText="Course Name" 
                                    SortExpression="CourseName" />
                            </Columns>
                            <EmptyDataTemplate>
                                <div>
                                    No Records found.
                                </div>

                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <sortedascendingcellstyle backcolor="#F7F7F7" />
                            <sortedascendingheaderstyle backcolor="#4B4B4B" />
                            <sorteddescendingcellstyle backcolor="#E5E5E5" />
                            <sorteddescendingheaderstyle backcolor="#242121" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="ViewModify" runat="server">
            <center>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASTMConnectionString %>" 
                    SelectCommand="SELECT Inquiry.ID, Inquiry.InquiryID, Inquiry.Name, Inquiry.CourseID, Inquiry.ContactNumber, Inquiry.EmailID, Inquiry.DateOfInquiry, Inquiry.Purpose, Inquiry.InquiryModeID, Inquiry.RecommendationSourceID, Inquiry.PreferedBranchID, Inquiry.PreferedBatchID, Inquiry.ReceivedBy, Inquiry.ExecutedBy, Inquiry.PotentialStatus, Inquiry.ModificationType, Inquiry.ModifiedBy, Inquiry.ModifiedDate, InquiryMode.InquiryMode, Course.CourseName FROM Inquiry INNER JOIN InquiryMode ON Inquiry.InquiryModeID = InquiryMode.ID INNER JOIN Course ON Inquiry.CourseID = Course.ID" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Duration] = @original_Duration AND (([Fees] = @original_Fees) OR ([Fees] IS NULL AND @original_Fees IS NULL)) AND [ModificationType] = @original_ModificationType AND [ModifiedBy] = @original_ModifiedBy AND [ModifiedDate] = @original_ModifiedDate" 
                    InsertCommand="INSERT INTO [Course] ([CourseID], [CourseName], [Description], [Duration], [Fees], [ModificationType], [ModifiedBy], [ModifiedDate]) VALUES (@CourseID, @CourseName, @Description, @Duration, @Fees, @ModificationType, @ModifiedBy, @ModifiedDate)" 
                    OldValuesParameterFormatString="original_{0}" 
                    
                    UpdateCommand="UPDATE [Course] SET [CourseID] = @CourseID, [CourseName] = @CourseName, [Description] = @Description, [Duration] = @Duration, [Fees] = @Fees, [ModificationType] = @ModificationType, [ModifiedBy] = @ModifiedBy, [ModifiedDate] = @ModifiedDate WHERE [ID] = @original_ID AND [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Duration] = @original_Duration AND (([Fees] = @original_Fees) OR ([Fees] IS NULL AND @original_Fees IS NULL)) AND [ModificationType] = @original_ModificationType AND [ModifiedBy] = @original_ModifiedBy AND [ModifiedDate] = @original_ModifiedDate">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_CourseID" Type="String" />
                        <asp:Parameter Name="original_CourseName" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Duration" Type="Int32" />
                        <asp:Parameter Name="original_Fees" Type="Decimal" />
                        <asp:Parameter Name="original_ModificationType" Type="String" />
                        <asp:Parameter Name="original_ModifiedBy" Type="String" />
                        <asp:Parameter Name="original_ModifiedDate" Type="DateTime" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CourseID" Type="String" />
                        <asp:Parameter Name="CourseName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Duration" Type="Int32" />
                        <asp:Parameter Name="Fees" Type="Decimal" />
                        <asp:Parameter Name="ModificationType" Type="String" />
                        <asp:Parameter Name="ModifiedBy" Type="String" />
                        <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CourseID" Type="String" />
                        <asp:Parameter Name="CourseName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Duration" Type="Int32" />
                        <asp:Parameter Name="Fees" Type="Decimal" />
                        <asp:Parameter Name="ModificationType" Type="String" />
                        <asp:Parameter Name="ModifiedBy" Type="String" />
                        <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                        <asp:Parameter Name="original_ID" Type="Int32" />
                        <asp:Parameter Name="original_CourseID" Type="String" />
                        <asp:Parameter Name="original_CourseName" Type="String" />
                        <asp:Parameter Name="original_Description" Type="String" />
                        <asp:Parameter Name="original_Duration" Type="Int32" />
                        <asp:Parameter Name="original_Fees" Type="Decimal" />
                        <asp:Parameter Name="original_ModificationType" Type="String" />
                        <asp:Parameter Name="original_ModifiedBy" Type="String" />
                        <asp:Parameter Name="original_ModifiedDate" Type="DateTime" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                    <table>
                        <tr><td align="right">ID:</td><td align="left"><asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' /><br /></td></tr>
<tr><td align="right">InquiryID:</td><td align="left"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("InquiryID") %>' /><br /></td></tr>
<tr><td align="right">Name:</td><td align="left"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>' /><br /></td></tr>
<tr><td align="right">CourseID:</td><td align="left"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("CourseID") %>' /><br /></td></tr>
<tr><td align="right">ContactNumber:</td><td align="left"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ContactNumber") %>' /><br /></td></tr>
<tr><td align="right">EmailID:</td><td align="left"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EmailID") %>' /><br /></td></tr>
<tr><td align="right">DateOfInquiry:</td><td align="left"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("DateOfInquiry") %>' /><br /></td></tr>
<tr><td align="right">Purpose:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Purpose") %>' /><br /></td></tr>
<tr><td align="right">InquiryModeID:</td><td align="left"><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("InquiryModeID") %>' /><br /></td></tr>
<tr><td align="right">RecommendationSourceID:</td><td align="left"><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("RecommendationSourceID") %>' /><br /></td></tr>
<tr><td align="right">PreferedBranchID:</td><td align="left"><asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("PreferedBranchID") %>' /><br /></td></tr>
<tr><td align="right">PreferedBatchID:</td><td align="left"><asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("PreferedBatchID") %>' /><br /></td></tr>
<tr><td align="right">ReceivedBy:</td><td align="left"><asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("ReceivedBy") %>' /><br /></td></tr>
<tr><td align="right">ExecutedBy:</td><td align="left"><asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("ExecutedBy") %>' /><br /></td></tr>
<tr><td align="right">PotentialStatus:</td><td align="left"><asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("PotentialStatus") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
<tr><td align="right">InquiryMode:</td><td align="left"><asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("InquiryMode") %>' /><br /></td></tr>
<tr><td align="right">CourseName:</td><td align="left"><asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("CourseName") %>' /><br /></td></tr>
                        <tr>
                            <td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" CssClass="comments" /></td>
                            <td><asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="SwitchViewByID" Text="Back" 
                                    CommandArgument="ViewList" CssClass="comments" /></td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <InsertItemTemplate>
<table>
    <tr><td align="right">EnquiryID:</td><td align="left"><asp:TextBox ID="InquiryIDTextBox" runat="server" Text='<%# Bind("InquiryID") %>' /><br /></td></tr>
<tr><td align="right">Name:</td><td align="left"><asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' /><br /></td></tr>
<tr><td align="right">CourseID:</td><td align="left"><asp:TextBox ID="CourseIDTextBox" runat="server" Text='<%# Bind("CourseID") %>' /><br /></td></tr>
<tr><td align="right">ContactNumber:</td><td align="left"><asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' /><br /></td></tr>
<tr><td align="right">EmailID:</td><td align="left"><asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' /><br /></td></tr>
<tr><td align="right">Date Of Enquiry:</td><td align="left">
    <asp:TextBox ID="txtDateOfInquiryTextBox" runat="server" 
        Text='<%# Bind("DateOfInquiry") %>' /><br /></td></tr>
<tr><td align="right">Purpose:</td><td align="left"><asp:TextBox ID="PurposeTextBox" runat="server" Text='<%# Bind("Purpose") %>' /><br /></td></tr>
<tr><td align="right">Enquiry Source:</td><td align="left">
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="InquiryMode" DataValueField="ID" 
        SelectedValue='<%# Bind("ID") %>' Width="230px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ASTMConnectionString %>" 
        SelectCommand="SELECT * FROM [InquiryMode]"></asp:SqlDataSource>
    <asp:TextBox ID="InquiryModeIDTextBox" runat="server" 
        Text='<%# Bind("InquiryModeID") %>' Visible="False" /><br /></td></tr>
<tr><td align="right">RecommendationSourceID:</td><td align="left"><asp:TextBox ID="RecommendationSourceIDTextBox" runat="server" Text='<%# Bind("RecommendationSourceID") %>' /><br /></td></tr>
<tr><td align="right">PreferedBranchID:</td><td align="left"><asp:TextBox ID="PreferedBranchIDTextBox" runat="server" Text='<%# Bind("PreferedBranchID") %>' /><br /></td></tr>
<tr><td align="right">PreferedBatchID:</td><td align="left"><asp:TextBox ID="PreferedBatchIDTextBox" runat="server" Text='<%# Bind("PreferedBatchID") %>' /><br /></td></tr>
<tr><td align="right">ReceivedBy:</td><td align="left">
    <asp:DropDownList ID="DropDownList2" runat="server" Width="230px">
    </asp:DropDownList>
    <asp:TextBox ID="ReceivedByTextBox" runat="server" 
        Text='<%# Bind("ReceivedBy") %>' Visible="False" /><br /></td></tr>
<tr><td align="right">ExecutedBy:</td><td align="left">
    <asp:DropDownList ID="DropDownList3" runat="server" Width="230px">
    </asp:DropDownList>
    <asp:TextBox ID="ExecutedByTextBox" runat="server" 
        Text='<%# Bind("ExecutedBy") %>' Visible="False" /><br /></td></tr>
<tr><td align="right">PotentialStatus:</td><td align="left">
    <asp:DropDownList ID="DropDownList4" runat="server" Width="230px">
        <asp:ListItem>Cold</asp:ListItem>
        <asp:ListItem>Warm</asp:ListItem>
        <asp:ListItem>Hot</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="PotentialStatusTextBox" runat="server" 
        Text='<%# Bind("PotentialStatus") %>' Visible="False" /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="ModificationTypeTextBox" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="ModifiedByTextBox" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="ModifiedDateTextBox" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
<tr><td align="right">InquiryMode:</td><td align="left"><asp:TextBox ID="InquiryModeTextBox" runat="server" Text='<%# Bind("InquiryMode") %>' /><br /></td></tr>
<tr><td align="right">CourseName:</td><td align="left"><asp:TextBox ID="CourseNameTextBox" runat="server" Text='<%# Bind("CourseName") %>' /><br /></td></tr>
    <tr>
        <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insert" CssClass="comments" /></td>
        <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                CommandName="SwitchViewByID" Text="Back" CommandArgument="ViewList" 
                CssClass="comments" /></td>
    </tr>
</table>
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    InquiryID:
                    <asp:Label ID="InquiryIDLabel" runat="server" 
                        Text='<%# Bind("InquiryID") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" 
                        Text='<%# Bind("Name") %>' />
                    <br />
                    CourseID:
                    <asp:Label ID="CourseIDLabel" runat="server" 
                        Text='<%# Bind("CourseID") %>' />
                    <br />
                    ContactNumber:
                    <asp:Label ID="ContactNumberLabel" runat="server" 
                        Text='<%# Bind("ContactNumber") %>' />
                    <br />
                    EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Bind("EmailID") %>' />
                    <br />
                    DateOfInquiry:
                    <asp:Label ID="DateOfInquiryLabel" runat="server" 
                        Text='<%# Bind("DateOfInquiry") %>' />
                    <br />
                    Purpose:
                    <asp:Label ID="PurposeLabel" runat="server" 
                        Text='<%# Bind("Purpose") %>' />
                    <br />
                    InquiryModeID:
                    <asp:Label ID="InquiryModeIDLabel" runat="server" 
                        Text='<%# Bind("InquiryModeID") %>' />
                    <br />
                    RecommendationSourceID:
                    <asp:Label ID="RecommendationSourceIDLabel" runat="server" 
                        Text='<%# Bind("RecommendationSourceID") %>' />
                    <br />
                    PreferedBranchID:
                    <asp:Label ID="PreferedBranchIDLabel" runat="server" 
                        Text='<%# Bind("PreferedBranchID") %>' />
                    <br />
                    PreferedBatchID:
                    <asp:Label ID="PreferedBatchIDLabel" runat="server" 
                        Text='<%# Bind("PreferedBatchID") %>' />
                    <br />
                    ReceivedBy:
                    <asp:Label ID="ReceivedByLabel" runat="server" 
                        Text='<%# Bind("ReceivedBy") %>' />
                    <br />
                    ExecutedBy:
                    <asp:Label ID="ExecutedByLabel" runat="server" 
                        Text='<%# Bind("ExecutedBy") %>' />
                    <br />
                    PotentialStatus:
                    <asp:Label ID="PotentialStatusLabel" runat="server" 
                        Text='<%# Bind("PotentialStatus") %>' />
                    <br />
                    ModificationType:
                    <asp:Label ID="ModificationTypeLabel" runat="server" 
                        Text='<%# Bind("ModificationType") %>' />
                    <br />
                    ModifiedBy:
                    <asp:Label ID="ModifiedByLabel" runat="server" 
                        Text='<%# Bind("ModifiedBy") %>' />
                    <br />
                    ModifiedDate:
                    <asp:Label ID="ModifiedDateLabel" runat="server" 
                        Text='<%# Bind("ModifiedDate") %>' />
                    <br />
                    InquiryMode:
                    <asp:Label ID="InquiryModeLabel" runat="server" 
                        Text='<%# Bind("InquiryMode") %>' />
                    <br />
                    CourseName:
                    <asp:Label ID="CourseNameLabel" runat="server" 
                        Text='<%# Bind("CourseName") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
                <br />
                </center>
        </asp:View>
    </asp:MultiView>
</asp:Content>
