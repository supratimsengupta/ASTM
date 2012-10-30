<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASTM.Courses.Default" %>
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
                            AutoGenerateColumns="False" DataKeyNames="ID" 
                            DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" 
                            OnRowDataBound="GridView1_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                                    SortExpression="ID" InsertVisible="False" />
                                <asp:BoundField DataField="CourseID" HeaderText="CourseID" 
                                    SortExpression="CourseID" />
                                <asp:BoundField DataField="CourseName" HeaderText="Course Name" 
                                    SortExpression="CourseName" />
                                <asp:BoundField DataField="Description" HeaderText="Description" 
                                    SortExpression="Description" />
                                <asp:BoundField DataField="Duration" HeaderText="Duration" 
                                    SortExpression="Duration" />
                                <asp:BoundField DataField="Fees" HeaderText="Fees" SortExpression="Fees" />
                                <asp:BoundField DataField="ModificationType" HeaderText="ModificationType" 
                                    SortExpression="ModificationType" Visible="False" />
                                <asp:BoundField DataField="ModifiedBy" HeaderText="Modified By" 
                                    SortExpression="ModifiedBy" />
                                <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" 
                                    SortExpression="ModifiedDate" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkModules" CommandName="Module" runat="server" Text="Modules"></asp:LinkButton>

                                    </ItemTemplate>

                                </asp:TemplateField>
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
                    SelectCommand="SELECT * FROM [Course]" 
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
                    <table cellpadding="5">
                        <tr><td align="right">ID:</td><td align="left"><asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' /><br /></td></tr>
<tr><td align="right">CourseID:</td><td align="left"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseID") %>' /><br /></td></tr>
<tr><td align="right">CourseName:</td><td align="left"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CourseName") %>' /><br /></td></tr>
<tr><td align="right">Description:</td><td align="left"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Description") %>' /><br /></td></tr>
<tr><td align="right">Duration:</td><td align="left"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Duration") %>' /><br /></td></tr>
<tr><td align="right">Fees:</td><td align="left"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Fees") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
                        <tr><td><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" CssClass="comments" />
                    </td><td><asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                    CommandName="SwitchViewByID" Text="Back" CommandArgument="ViewList" 
                                    CssClass="comments" /></td></tr>
                    </table>                 
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table cellpadding="5">
                        <tr><td align="right">CourseID:</td><td align="left"><asp:TextBox ID="CourseIDTextBox" runat="server" Text='<%# Bind("CourseID") %>' /><br /></td></tr>
<tr><td align="right">CourseName:</td><td align="left"><asp:TextBox ID="CourseNameTextBox" runat="server" Text='<%# Bind("CourseName") %>' /><br /></td></tr>
<tr><td align="right">Description:</td><td align="left"><asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' /><br /></td></tr>
<tr><td align="right">Duration:</td><td align="left"><asp:TextBox ID="DurationTextBox" runat="server" Text='<%# Bind("Duration") %>' /><br /></td></tr>
<tr><td align="right">Fees:</td><td align="left"><asp:TextBox ID="FeesTextBox" runat="server" Text='<%# Bind("Fees") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="ModificationTypeTextBox" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="ModifiedByTextBox" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="ModifiedDateTextBox" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
                        <tr><td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" CssClass="comments" /></td>
                            <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                    CommandName="SwitchViewByID" Text="Back" CommandArgument="ViewList" 
                                    CssClass="comments" /></td></tr>
                    </table>
                    
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    CourseID:
                    <asp:Label ID="CourseIDLabel" runat="server" 
                        Text='<%# Bind("CourseID") %>' />
                    <br />
                    CourseName:
                    <asp:Label ID="CourseNameLabel" runat="server" 
                        Text='<%# Bind("CourseName") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" 
                        Text='<%# Bind("Description") %>' />
                    <br />
                    Duration:
                    <asp:Label ID="DurationLabel" runat="server" Text='<%# Bind("Duration") %>' />
                    <br />
                    Fees:
                    <asp:Label ID="FeesLabel" runat="server" Text='<%# Bind("Fees") %>' />
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
                </ItemTemplate>
            </asp:FormView>
                <br />
                </center>
        </asp:View>
    </asp:MultiView>
</asp:Content>
