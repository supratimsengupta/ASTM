<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ASTM.Center.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiViewCenter" runat="server" ActiveViewIndex="0">
        <asp:View ID="ViewList" runat="server">
            <table style="width: 100%;">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="comments" 
                            CommandArgument="ViewModify" CommandName="SwitchViewByID">New</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridViewCenter" runat="server" BackColor="White" BorderColor="#CCCCCC"
                            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"
                            Width="100%" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlCenterSource"
                            OnRowCommand="GridViewCenter_RowCommand" 
                            OnRowDataBound="GridViewCenter_RowDataBound">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkEdit" CommandName="Edit" runat="server" Text="Edit"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID"
                                    Visible="False" />
                                <asp:BoundField DataField="TrainingCenterID" HeaderText="TrainingCenterID" SortExpression="TrainingCenterID"
                                    Visible="False" />
                                <asp:BoundField DataField="TrainingCenterName" HeaderText="Center Name" 
                                    SortExpression="TrainingCenterName" />
                                <asp:BoundField DataField="TagLine" HeaderText="TagLine" SortExpression="TagLine"
                                    Visible="False" />
                                <asp:BoundField DataField="OwnerName" HeaderText="Owner Name" SortExpression="OwnerName"
                                    ReadOnly="True" />
                                <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                                <asp:BoundField DataField="ContactNumber" HeaderText="Other Number" SortExpression="ContactNumber" />
                                <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number" 
                                    SortExpression="MobileNumber" />
                                <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                <asp:BoundField DataField="ModificationType" HeaderText="ModificationType" SortExpression="ModificationType"
                                    Visible="False" />
                                <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy"
                                    Visible="False" />
                                <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate"
                                    Visible="False" />
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
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlCenterSource" runat="server" ConflictDetection="CompareAllValues"
                            ConnectionString="<%$ ConnectionStrings:ASTMConnectionString %>" DeleteCommand="DELETE FROM [TrainingCenter] WHERE [ID] = @original_ID AND [TrainingCenterID] = @original_TrainingCenterID AND [TrainingCenterName] = @original_TrainingCenterName AND (([TagLine] = @original_TagLine) OR ([TagLine] IS NULL AND @original_TagLine IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([ContactNumber] = @original_ContactNumber) OR ([ContactNumber] IS NULL AND @original_ContactNumber IS NULL)) AND (([MobileNumber] = @original_MobileNumber) OR ([MobileNumber] IS NULL AND @original_MobileNumber IS NULL)) AND [ModificationType] = @original_ModificationType AND [ModifiedBy] = @original_ModifiedBy AND [ModifiedDate] = @original_ModifiedDate"
                            InsertCommand="INSERT INTO [TrainingCenter] ([ID], [TrainingCenterID], [TrainingCenterName], [TagLine], [FirstName], [LastName], [EmailID], [Designation], [Status], [ContactNumber], [MobileNumber], [ModificationType], [ModifiedBy], [ModifiedDate]) VALUES (@ID, @TrainingCenterID, @TrainingCenterName, @TagLine, @FirstName, @LastName, @EmailID, @Designation, @Status, @ContactNumber, @MobileNumber, @ModificationType, @ModifiedBy, @ModifiedDate)"
                            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT ID, TrainingCenterID, TrainingCenterName, TagLine,FirstName,LastName, FirstName + ' ' + LastName AS OwnerName, EmailID, Designation, Status, ContactNumber, MobileNumber, ModificationType, ModifiedBy, ModifiedDate FROM TrainingCenter"
                            UpdateCommand="UPDATE [TrainingCenter] SET [TrainingCenterID] = @TrainingCenterID, [TrainingCenterName] = @TrainingCenterName, [TagLine] = @TagLine, [FirstName] = @FirstName, [LastName] = @LastName, [EmailID] = @EmailID, [Designation] = @Designation, [Status] = @Status, [ContactNumber] = @ContactNumber, [MobileNumber] = @MobileNumber, [ModificationType] = @ModificationType, [ModifiedBy] = @ModifiedBy, [ModifiedDate] = @ModifiedDate WHERE [ID] = @original_ID AND [TrainingCenterID] = @original_TrainingCenterID AND [TrainingCenterName] = @original_TrainingCenterName AND (([TagLine] = @original_TagLine) OR ([TagLine] IS NULL AND @original_TagLine IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([EmailID] = @original_EmailID) OR ([EmailID] IS NULL AND @original_EmailID IS NULL)) AND (([Designation] = @original_Designation) OR ([Designation] IS NULL AND @original_Designation IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([ContactNumber] = @original_ContactNumber) OR ([ContactNumber] IS NULL AND @original_ContactNumber IS NULL)) AND (([MobileNumber] = @original_MobileNumber) OR ([MobileNumber] IS NULL AND @original_MobileNumber IS NULL)) AND [ModificationType] = @original_ModificationType AND [ModifiedBy] = @original_ModifiedBy AND [ModifiedDate] = @original_ModifiedDate">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_TrainingCenterID" Type="String" />
                                <asp:Parameter Name="original_TrainingCenterName" Type="String" />
                                <asp:Parameter Name="original_TagLine" Type="String" />
                                <asp:Parameter Name="original_FirstName" Type="String" />
                                <asp:Parameter Name="original_LastName" Type="String" />
                                <asp:Parameter Name="original_EmailID" Type="String" />
                                <asp:Parameter Name="original_Designation" Type="String" />
                                <asp:Parameter Name="original_Status" Type="Boolean" />
                                <asp:Parameter Name="original_ContactNumber" Type="String" />
                                <asp:Parameter Name="original_MobileNumber" Type="String" />
                                <asp:Parameter Name="original_ModificationType" Type="String" />
                                <asp:Parameter Name="original_ModifiedBy" Type="String" />
                                <asp:Parameter Name="original_ModifiedDate" Type="DateTime" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                                <asp:Parameter Name="TrainingCenterID" Type="String" />
                                <asp:Parameter Name="TrainingCenterName" Type="String" />
                                <asp:Parameter Name="TagLine" Type="String" />
                                <asp:Parameter Name="FirstName" Type="String" />
                                <asp:Parameter Name="LastName" Type="String" />
                                <asp:Parameter Name="EmailID" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Status" Type="Boolean" />
                                <asp:Parameter Name="ContactNumber" Type="String" />
                                <asp:Parameter Name="MobileNumber" Type="String" />
                                <asp:Parameter Name="ModificationType" Type="String" />
                                <asp:Parameter Name="ModifiedBy" Type="String" />
                                <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TrainingCenterID" Type="String" />
                                <asp:Parameter Name="TrainingCenterName" Type="String" />
                                <asp:Parameter Name="TagLine" Type="String" />
                                <asp:Parameter Name="FirstName" Type="String" />
                                <asp:Parameter Name="LastName" Type="String" />
                                <asp:Parameter Name="EmailID" Type="String" />
                                <asp:Parameter Name="Designation" Type="String" />
                                <asp:Parameter Name="Status" Type="Boolean" />
                                <asp:Parameter Name="ContactNumber" Type="String" />
                                <asp:Parameter Name="MobileNumber" Type="String" />
                                <asp:Parameter Name="ModificationType" Type="String" />
                                <asp:Parameter Name="ModifiedBy" Type="String" />
                                <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                                <asp:Parameter Name="original_ID" Type="Int32" />
                                <asp:Parameter Name="original_TrainingCenterID" Type="String" />
                                <asp:Parameter Name="original_TrainingCenterName" Type="String" />
                                <asp:Parameter Name="original_TagLine" Type="String" />
                                <asp:Parameter Name="original_FirstName" Type="String" />
                                <asp:Parameter Name="original_LastName" Type="String" />
                                <asp:Parameter Name="original_EmailID" Type="String" />
                                <asp:Parameter Name="original_Designation" Type="String" />
                                <asp:Parameter Name="original_Status" Type="Boolean" />
                                <asp:Parameter Name="original_ContactNumber" Type="String" />
                                <asp:Parameter Name="original_MobileNumber" Type="String" />
                                <asp:Parameter Name="original_ModificationType" Type="String" />
                                <asp:Parameter Name="original_ModifiedBy" Type="String" />
                                <asp:Parameter Name="original_ModifiedDate" Type="DateTime" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="ViewModify" runat="server">
            <center>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                    DataSourceID="SqlCenterSource" DefaultMode="Insert" 
                    OnItemCommand="FormView1_ItemCommand">
                <EditItemTemplate>
                    <table>
<tr><td align="right">ID:</td><td align="left"><asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' /><br /></td></tr>
<tr><td align="right">TrainingCenterID:</td><td align="left"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TrainingCenterID") %>' /><br /></td></tr>
<tr><td align="right">TrainingCenterName:</td><td align="left"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TrainingCenterName") %>' /><br /></td></tr>
<tr><td align="right">TagLine:</td><td align="left"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("TagLine") %>' /><br /></td></tr>
<tr><td align="right">FirstName:</td><td align="left"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FirstName") %>' /><br /></td></tr>
<tr><td align="right">LastName:</td><td align="left"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("LastName") %>' /><br /></td></tr>
<tr><td align="right">EmailID:</td><td align="left"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EmailID") %>' /><br /></td></tr>
<tr><td align="right">Designation:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Designation") %>' /><br /></td></tr>
<tr><td align="right">Status:</td><td align="left"><asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Status") %>' /><br /></td></tr>
<tr><td align="right">ContactNumber:</td><td align="left"><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ContactNumber") %>' /><br /></td></tr>
<tr><td align="right">MobileNumber:</td><td align="left"><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("MobileNumber") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
                        <tr><td align="right">
                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                CommandName="SwitchViewByID" CssClass="comments" Text="Back" 
                                CommandArgument="ViewList" />
                            </td>
                            <td>
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                    CommandName="Update" CssClass="comments" Text="Update" />
                            </td>
                        </tr>
</table>
                    
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table cellpadding="5">
<tr><td align="right">ID:</td><td align="left"><asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' /><br /></td></tr>
<tr><td align="right">TrainingCenterID:</td><td align="left"><asp:TextBox ID="TrainingCenterIDTextBox" runat="server" Text='<%# Bind("TrainingCenterID") %>' /><br /></td></tr>
<tr><td align="right">TrainingCenterName:</td><td align="left"><asp:TextBox ID="TrainingCenterNameTextBox" runat="server" Text='<%# Bind("TrainingCenterName") %>' /><br /></td></tr>
<tr><td align="right">TagLine:</td><td align="left"><asp:TextBox ID="TagLineTextBox" runat="server" Text='<%# Bind("TagLine") %>' /><br /></td></tr>
<tr><td align="right">FirstName:</td><td align="left"><asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' /><br /></td></tr>
<tr><td align="right">LastName:</td><td align="left"><asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' /><br /></td></tr>
<tr><td align="right">EmailID:</td><td align="left"><asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' /><br /></td></tr>
<tr><td align="right">Designation:</td><td align="left"><asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' /><br /></td></tr>
<tr><td align="right">Status:</td><td align="left"><asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("Status") %>' /><br /></td></tr>
<tr><td align="right">ContactNumber:</td><td align="left"><asp:TextBox ID="ContactNumberTextBox" runat="server" Text='<%# Bind("ContactNumber") %>' /><br /></td></tr>
<tr><td align="right">MobileNumber:</td><td align="left"><asp:TextBox ID="MobileNumberTextBox" runat="server" Text='<%# Bind("MobileNumber") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="ModificationTypeTextBox" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="ModifiedByTextBox" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="ModifiedDateTextBox" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
                        <tr><td align="right">
                            <asp:LinkButton ID="LinkButton2" runat="server" 
                        CausesValidation="False" CommandName="SwitchViewByID" Text="Back" 
                                CssClass="comments" CommandArgument="ViewList"/></td>
                            <td>
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" CssClass="comments" Text="Insert" />
                            </td>
                        </tr>
</table>
                    
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    TrainingCenterID:
                    <asp:Label ID="TrainingCenterIDLabel" runat="server" 
                        Text='<%# Bind("TrainingCenterID") %>' />
                    <br />
                    TrainingCenterName:
                    <asp:Label ID="TrainingCenterNameLabel" runat="server" 
                        Text='<%# Bind("TrainingCenterName") %>' />
                    <br />
                    TagLine:
                    <asp:Label ID="TagLineLabel" runat="server" Text='<%# Bind("TagLine") %>' />
                    <br />
                    FirstName:
                    <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
                    <br />
                    LastName:
                    <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
                    <br />
                    EmailID:
                    <asp:Label ID="EmailIDLabel" runat="server" Text='<%# Bind("EmailID") %>' />
                    <br />
                    Designation:
                    <asp:Label ID="DesignationLabel" runat="server" 
                        Text='<%# Bind("Designation") %>' />
                    <br />
                    Status:
                    <asp:CheckBox ID="StatusCheckBox" runat="server" 
                        Checked='<%# Bind("Status") %>' Enabled="false" />
                    <br />
                    ContactNumber:
                    <asp:Label ID="ContactNumberLabel" runat="server" 
                        Text='<%# Bind("ContactNumber") %>' />
                    <br />
                    MobileNumber:
                    <asp:Label ID="MobileNumberLabel" runat="server" 
                        Text='<%# Bind("MobileNumber") %>' />
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
                </center>
        </asp:View>
    </asp:MultiView>
</asp:Content>
