<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASTM.Follow_Up.Default" %>
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
                                <asp:BoundField DataField="Name" HeaderText="Name" 
                                    SortExpression="Name" />
                                <asp:BoundField DataField="ID" HeaderText="ID" 
                                    SortExpression="ID" Visible="False" InsertVisible="False" 
                                    ReadOnly="True" />
                                <asp:BoundField DataField="FollowUpID" HeaderText="FollowUpID" 
                                    SortExpression="FollowUpID" Visible="False" />
                                <asp:BoundField DataField="InquiryID" HeaderText="InquiryID" 
                                    SortExpression="InquiryID" Visible="False" />
                                <asp:BoundField DataField="FollowUpDate" HeaderText="Follow Up Date" 
                                    SortExpression="FollowUpDate" />
                                <asp:BoundField DataField="FacultyID" HeaderText="FacultyID" 
                                    SortExpression="FacultyID" Visible="False" />
                                <asp:BoundField DataField="FollowUpMode" HeaderText="Follow Up Mode" 
                                    SortExpression="FollowUpMode" />
                                <asp:BoundField DataField="ReponseDetail" HeaderText="Reponse Detail" 
                                    SortExpression="ReponseDetail" />
                                <asp:BoundField DataField="Status" HeaderText="Status" 
                                    SortExpression="Status" />
                                <asp:BoundField DataField="Remark" 
                                    HeaderText="Remark" SortExpression="Remark" />
                                <asp:BoundField DataField="ModificationType" HeaderText="ModificationType" 
                                    SortExpression="ModificationType" Visible="False" />
                                <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" 
                                    SortExpression="ModifiedBy" Visible="False" />
                                <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" 
                                    SortExpression="ModifiedDate" Visible="False" />
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
                    SelectCommand="SELECT EmployeeMaster.Name, FollowUp.ID, FollowUp.FollowUpID, FollowUp.InquiryID, FollowUp.FollowUpDate, FollowUp.FacultyID, FollowUp.FollowUpMode, FollowUp.ReponseDetail, FollowUp.Status, FollowUp.Remark, FollowUp.ModificationType, FollowUp.ModifiedBy, FollowUp.ModifiedDate FROM FollowUp INNER JOIN Inquiry ON FollowUp.InquiryID = Inquiry.ID INNER JOIN EmployeeMaster ON FollowUp.FacultyID = EmployeeMaster.ID" 
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
    <tr><td align="right">Name:</td><td align="left"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' /><br /></td></tr>
<tr><td align="right">ID:</td><td align="left"><asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' /><br /></td></tr>
<tr><td align="right">FollowUpID:</td><td align="left"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("FollowUpID") %>' /><br /></td></tr>
<tr><td align="right">InquiryID:</td><td align="left"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("InquiryID") %>' /><br /></td></tr>
<tr><td align="right">FollowUpDate:</td><td align="left"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FollowUpDate") %>' /><br /></td></tr>
<tr><td align="right">FacultyID:</td><td align="left"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("FacultyID") %>' /><br /></td></tr>
<tr><td align="right">FollowUpMode:</td><td align="left"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("FollowUpMode") %>' /><br /></td></tr>
<tr><td align="right">ReponseDetail:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ReponseDetail") %>' /><br /></td></tr>
<tr><td align="right">Status:</td><td align="left"><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Status") %>' /><br /></td></tr>
<tr><td align="right">Remark:</td><td align="left"><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Remark") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
    <tr><td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
            CommandName="Update" Text="Update" CssClass="comments" /></td>
        <td><asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                CommandName="SwitchViewByID" Text="Back" CssClass="comments" 
                CommandArgument="ViewList" /></td></tr>
</table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table>
                    <tr><td align="right">Name:</td><td align="left"><asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' /><br /></td></tr>
                    <tr><td align="right">FollowUpID:</td><td align="left"><asp:TextBox ID="FollowUpIDTextBox" runat="server" Text='<%# Bind("FollowUpID") %>' /><br /></td></tr>
                    <tr><td align="right">InquiryID:</td><td align="left"><asp:TextBox ID="InquiryIDTextBox" runat="server" Text='<%# Bind("InquiryID") %>' /><br /></td></tr>
                    <tr><td align="right">FollowUpDate:</td><td align="left"><asp:TextBox ID="FollowUpDateTextBox" runat="server" Text='<%# Bind("FollowUpDate") %>' /><br /></td></tr>
                    <tr><td align="right">FacultyID:</td><td align="left"><asp:TextBox ID="FacultyIDTextBox" runat="server" Text='<%# Bind("FacultyID") %>' /><br /></td></tr>
                    <tr><td align="right">FollowUpMode:</td><td align="left"><asp:TextBox ID="FollowUpModeTextBox" runat="server" Text='<%# Bind("FollowUpMode") %>' /><br /></td></tr>
                    <tr><td align="right">ReponseDetail:</td><td align="left"><asp:TextBox ID="ReponseDetailTextBox" runat="server" Text='<%# Bind("ReponseDetail") %>' /><br /></td></tr>
                    <tr><td align="right">Status:</td><td align="left"><asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' /><br /></td></tr>
                    <tr><td align="right">Remark:</td><td align="left"><asp:TextBox ID="RemarkTextBox" runat="server" Text='<%# Bind("Remark") %>' /><br /></td></tr>
                    <tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="ModificationTypeTextBox" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
                    <tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="ModifiedByTextBox" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
                    <tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="ModifiedDateTextBox" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
                    <tr><td>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" CssClass="comments" /></td><td>
                            <asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="SwitchViewByID" Text="Back" 
                                CommandArgument="ViewList" CssClass="comments" />
                </td></tr>
                    </table>
                </InsertItemTemplate>
                <ItemTemplate>
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    ID:
                    <asp:Label ID="IDLabel" runat="server" 
                        Text='<%# Eval("ID") %>' />
                    <br />
                    FollowUpID:
                    <asp:Label ID="FollowUpIDLabel" runat="server" 
                        Text='<%# Bind("FollowUpID") %>' />
                    <br />
                    InquiryID:
                    <asp:Label ID="InquiryIDLabel" runat="server" 
                        Text='<%# Bind("InquiryID") %>' />
                    <br />
                    FollowUpDate:
                    <asp:Label ID="FollowUpDateLabel" runat="server" 
                        Text='<%# Bind("FollowUpDate") %>' />
                    <br />
                    FacultyID:
                    <asp:Label ID="FacultyIDLabel" runat="server" Text='<%# Bind("FacultyID") %>' />
                    <br />
                    FollowUpMode:
                    <asp:Label ID="FollowUpModeLabel" runat="server" 
                        Text='<%# Bind("FollowUpMode") %>' />
                    <br />
                    ReponseDetail:
                    <asp:Label ID="ReponseDetailLabel" runat="server" 
                        Text='<%# Bind("ReponseDetail") %>' />
                    <br />
                    Status:
                    <asp:Label ID="StatusLabel" runat="server" 
                        Text='<%# Bind("Status") %>' />
                    <br />
                    Remark:
                    <asp:Label ID="RemarkLabel" runat="server" 
                        Text='<%# Bind("Remark") %>' />
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
