<%@ Page Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="ASTM.Module.Module" %>
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
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" 
                            OnRowDataBound="GridView1_RowDataBound" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="ID" Visible="False" />
                                <asp:BoundField DataField="ModuleID" HeaderText="ModuleID" 
                                    SortExpression="ModuleID" />
                                <asp:BoundField DataField="CourseID" HeaderText="CourseID" 
                                    SortExpression="CourseID" />
                                <asp:BoundField DataField="ModuleName" HeaderText="ModuleName" 
                                    SortExpression="ModuleName" />
                                <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" />
                                <asp:BoundField DataField="Description" HeaderText="Description" 
                                    SortExpression="Description" />
                                <asp:BoundField DataField="ModificationType" HeaderText="ModificationType" 
                                    SortExpression="ModificationType" Visible="False" />
                                <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" 
                                    SortExpression="ModifiedBy" Visible="False" />
                                <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" 
                                    SortExpression="ModifiedDate" Visible="False" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lnkSubModule" runat="server" CommandName="Module">SubModules</asp:LinkButton>
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
                    SelectCommand="SELECT * FROM [Module] where CourseID=@CourseID">
                    <SelectParameters>
                        <asp:Parameter Name="CourseID" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                    DefaultMode="Insert">
                    <EditItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        ModuleID:
                        <asp:TextBox ID="ModuleIDTextBox" runat="server" 
                            Text='<%# Bind("ModuleID") %>' />
                        <br />
                        CourseID:
                        <asp:TextBox ID="CourseIDTextBox" runat="server" 
                            Text='<%# Bind("CourseID") %>' />
                        <br />
                        ModuleName:
                        <asp:TextBox ID="ModuleNameTextBox" runat="server" 
                            Text='<%# Bind("ModuleName") %>' />
                        <br />
                        Hours:
                        <asp:TextBox ID="HoursTextBox" runat="server" Text='<%# Bind("Hours") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        ModificationType:
                        <asp:TextBox ID="ModificationTypeTextBox" runat="server" 
                            Text='<%# Bind("ModificationType") %>' />
                        <br />
                        ModifiedBy:
                        <asp:TextBox ID="ModifiedByTextBox" runat="server" 
                            Text='<%# Bind("ModifiedBy") %>' />
                        <br />
                        ModifiedDate:
                        <asp:TextBox ID="ModifiedDateTextBox" runat="server" 
                            Text='<%# Bind("ModifiedDate") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        ModuleID:
                        <asp:TextBox ID="ModuleIDTextBox" runat="server" 
                            Text='<%# Bind("ModuleID") %>' />
                        <br />
                        CourseID:
                        <asp:TextBox ID="CourseIDTextBox" runat="server" 
                            Text='<%# Bind("CourseID") %>' />
                        <br />
                        ModuleName:
                        <asp:TextBox ID="ModuleNameTextBox" runat="server" 
                            Text='<%# Bind("ModuleName") %>' />
                        <br />
                        Hours:
                        <asp:TextBox ID="HoursTextBox" runat="server" Text='<%# Bind("Hours") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" 
                            Text='<%# Bind("Description") %>' />
                        <br />
                        ModificationType:
                        <asp:TextBox ID="ModificationTypeTextBox" runat="server" 
                            Text='<%# Bind("ModificationType") %>' />
                        <br />
                        ModifiedBy:
                        <asp:TextBox ID="ModifiedByTextBox" runat="server" 
                            Text='<%# Bind("ModifiedBy") %>' />
                        <br />
                        ModifiedDate:
                        <asp:TextBox ID="ModifiedDateTextBox" runat="server" 
                            Text='<%# Bind("ModifiedDate") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        ModuleID:
                        <asp:Label ID="ModuleIDLabel" runat="server" Text='<%# Bind("ModuleID") %>' />
                        <br />
                        CourseID:
                        <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Bind("CourseID") %>' />
                        <br />
                        ModuleName:
                        <asp:Label ID="ModuleNameLabel" runat="server" 
                            Text='<%# Bind("ModuleName") %>' />
                        <br />
                        Hours:
                        <asp:Label ID="HoursLabel" runat="server" Text='<%# Bind("Hours") %>' />
                        <br />
                        Description:
                        <asp:Label ID="DescriptionLabel" runat="server" 
                            Text='<%# Bind("Description") %>' />
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
