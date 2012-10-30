<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASTM.Contacts.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 190px;
        }
        .auto-style2 {
            height: 40px;
        }
    </style>
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
                                    SortExpression="ID" Visible="False" />
                                <asp:BoundField DataField="AddressTypeID" HeaderText="AddressTypeID" 
                                    SortExpression="AddressTypeID" Visible="False" />
                                <asp:BoundField DataField="Addressee" HeaderText="Addressee" 
                                    SortExpression="Addressee" />
                                <asp:BoundField DataField="Address" HeaderText="Address" 
                                    SortExpression="Address" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                                <asp:BoundField DataField="ModificationType" HeaderText="ModificationType" 
                                    SortExpression="ModificationType" Visible="False" />
                                <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" 
                                    SortExpression="ModifiedBy" Visible="False" />
                                <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" 
                                    SortExpression="ModifiedDate" />
                                <asp:BoundField DataField="AddressType" HeaderText="AddressType" 
                                    SortExpression="AddressType" Visible="False" />
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
                    
                    SelectCommand="SELECT Address.ID, Address.AddressTypeID, Address.Addressee, Address.Address, Address.City, Address.Zip, Address.ModificationType, Address.ModifiedBy, Address.ModifiedDate, AddressType.AddressType FROM Address INNER JOIN AddressType ON Address.AddressTypeID = AddressType.AddressTypeID" 
                    InsertCommand="INSERT INTO Address(ID, AddressTypeID, Addressee, Address, City, Zip, ModificationType, ModifiedBy, ModifiedDate) VALUES (@ID, @AddressTypeID, @Addressee, @Address, @City, @Zip, @ModificationType, @ModifiedBy, @ModifiedDate)">
                    <InsertParameters>
                        <asp:Parameter Name="ID" />
                        <asp:Parameter Name="AddressTypeID" />
                        <asp:Parameter Name="Addressee" />
                        <asp:Parameter Name="Address" />
                        <asp:Parameter Name="City" />
                        <asp:Parameter Name="Zip" />
                        <asp:Parameter Name="ModificationType" />
                        <asp:Parameter Name="ModifiedBy" />
                        <asp:Parameter Name="ModifiedDate" />
                    </InsertParameters>
                </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
<table cellpadding="5">
    <tr><td align="right">ID:</td><td align="left"><asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' /><br /></td></tr>
<tr><td align="right">AddressTypeID:</td><td align="left"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AddressTypeID") %>' /><br /></td></tr>
<tr><td align="right">Addressee:</td><td align="left"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Addressee") %>' /><br /></td></tr>
<tr><td align="right">Address:</td><td align="left"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style2">City:</td><td align="left" 
        class="auto-style2"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("City") %>' /><br /></td></tr>
<tr><td align="right">Zip:</td><td align="left"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Zip") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
<tr><td align="right">AddressType:</td><td align="left"><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("AddressType") %>' /><br /></td></tr>
    <tr><td>
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" CssClass="comments" /></td><td>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="SwitchViewByID" Text="Back" 
                CommandArgument="ViewList" CssClass="comments" /></td></tr>
</table>
                    
                    
                </EditItemTemplate>
                <InsertItemTemplate>
<table cellpadding="5">
    <tr><td align="right" class="auto-style1">ID:</td><td align="left"><asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">AddressTypeID:</td><td align="left"><asp:TextBox ID="AddressTypeIDTextBox" runat="server" Text='<%# Bind("AddressTypeID") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">Addressee:</td><td align="left"><asp:TextBox ID="AddresseeTextBox" runat="server" Text='<%# Bind("Addressee") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">Address:</td><td align="left"><asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">City:</td><td align="left"><asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">Zip:</td><td align="left"><asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">ModificationType:</td><td align="left"><asp:TextBox ID="ModificationTypeTextBox" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">ModifiedBy:</td><td align="left"><asp:TextBox ID="ModifiedByTextBox" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">ModifiedDate:</td><td align="left"><asp:TextBox ID="ModifiedDateTextBox" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
<tr><td align="right" class="auto-style1">AddressType:</td><td align="left"><asp:TextBox ID="AddressTypeTextBox" runat="server" Text='<%# Bind("AddressType") %>' /><br /></td></tr>
<tr><td class="auto-style1">
    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" CssClass="comments" /></td><td>
        <asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="SwitchViewByID" 
            Text="Back" CommandArgument="ViewList" CssClass="comments" /></td></tr>
</table>                    
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    AddressTypeID:
                    <asp:Label ID="AddressTypeIDLabel" runat="server" 
                        Text='<%# Bind("AddressTypeID") %>' />
                    <br />
                    Addressee:
                    <asp:Label ID="AddresseeLabel" runat="server" Text='<%# Bind("Addressee") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Zip:
                    <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
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
                    AddressType:
                    <asp:Label ID="AddressTypeLabel" runat="server" 
                        Text='<%# Bind("AddressType") %>' />
                    <br />
                </ItemTemplate>
            </asp:FormView>
                <br />
                </center>
        </asp:View>
    </asp:MultiView>
</asp:Content>
