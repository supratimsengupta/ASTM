<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASTM.Batch.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiViewBatch" runat="server" ActiveViewIndex="0">
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
                                 <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkEdit" CommandName="Edit" runat="server" Text="Edit" 
                                            OnClick="LinkEdit_Click"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="ID" Visible="False" />
                                <asp:BoundField DataField="BatchName" HeaderText="Batch Name" 
                                    SortExpression="BatchName" />
                                <asp:BoundField DataField="BatchID" HeaderText="BatchID" 
                                    SortExpression="BatchID" />
                                <asp:BoundField DataField="TrainingCenterName" HeaderText="Center Name" 
                                    SortExpression="TrainingCenterName" />
                                <asp:BoundField DataField="Description" HeaderText="Description" 
                                    SortExpression="Description" />
                                <asp:BoundField DataField="CenterID" HeaderText="CenterID" 
                                    SortExpression="CenterID" Visible="False" />
                                <asp:BoundField DataField="StartDate" HeaderText="Start Date" 
                                    SortExpression="StartDate" />
                                <asp:BoundField DataField="EndDate" HeaderText="End Date" 
                                    SortExpression="EndDate" />
                                <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                                    SortExpression="Capacity" />
                                <asp:BoundField DataField="ModificationType" HeaderText="ModificationType" 
                                    SortExpression="ModificationType" Visible="False" />
                                <asp:BoundField DataField="ModifiedBy" HeaderText="Modified By" 
                                    SortExpression="ModifiedBy" />
                                <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" 
                                    SortExpression="ModifiedDate" />
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
                    
                    SelectCommand="SELECT Batch.ID, Batch.BatchID, Batch.BatchName, Batch.Description, Batch.CenterID, Batch.StartDate, Batch.EndDate, Batch.Capacity, Batch.ModificationType, Batch.ModifiedBy, Batch.ModifiedDate, TrainingCenter.TrainingCenterName FROM Batch INNER JOIN TrainingCenter ON Batch.CenterID = TrainingCenter.ID" 
                    InsertCommand="INSERT INTO Batch( BatchID, BatchName, Description, CenterID, StartDate, EndDate, Capacity, ModificationType, ModifiedBy, ModifiedDate) VALUES ( @BatchID, @BatchName, @Description, @CenterID, @StartDate, @EndDate, @Capacity, @ModificationType, @ModifiedBy, @ModifiedDate)" 
                    UpdateCommand="UPDATE Batch SET BatchID = @BatchID, BatchName = @BatchName, Description = @Description, CenterID = @CenterID, StartDate = @StartDate, EndDate = @EndDate, Capacity = @Capacity, ModificationType = @ModificationType, ModifiedBy = @ModifiedBy, ModifiedDate = @ModifiedDate WHERE (ID = @ID)">
                    <InsertParameters>
                        <asp:Parameter Name="BatchID" />
                        <asp:Parameter Name="BatchName" />
                        <asp:Parameter Name="Description" />
                        <asp:Parameter Name="CenterID" />
                        <asp:Parameter Name="StartDate" />
                        <asp:Parameter Name="EndDate" />
                        <asp:Parameter Name="Capacity" />
                        <asp:Parameter Name="ModificationType" />
                        <asp:Parameter Name="ModifiedBy" />
                        <asp:Parameter Name="ModifiedDate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="BatchID" />
                        <asp:Parameter Name="BatchName" />
                        <asp:Parameter Name="Description" />
                        <asp:Parameter Name="CenterID" />
                        <asp:Parameter Name="StartDate" />
                        <asp:Parameter Name="EndDate" />
                        <asp:Parameter Name="Capacity" />
                        <asp:Parameter Name="ModificationType" />
                        <asp:Parameter Name="ModifiedBy" />
                        <asp:Parameter Name="ModifiedDate" />
                        <asp:Parameter Name="ID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                                        <table cellpadding="5">
<tr><td align="right">BatchID:</td><td align="left"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BatchID") %>' /><br /></td></tr>
<tr><td align="right">BatchName:</td><td align="left"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BatchName") %>' /><br /></td></tr>
<tr><td align="right">Description:</td><td align="left"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Description") %>' /><br /></td></tr>
<tr><td align="right">CenterID:</td><td align="left"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CenterID") %>' /><br /></td></tr>
<tr><td align="right">StartDate:</td><td align="left"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("StartDate") %>' /><br /></td></tr>
<tr><td align="right">EndDate:</td><td align="left"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EndDate") %>' /><br /></td></tr>
<tr><td align="right">Capacity:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Capacity") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
<tr><td align="right">TrainingCenterName:</td><td align="left"><asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("TrainingCenterName") %>' /><br /></td></tr>
<tr><td>
    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" CssClass="comments" /></td>
    <td><asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="SwitchViewByID" 
            Text="Back" CommandArgument="ViewList" CssClass="comments" /></td></tr></table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table cellpadding="5">
<tr><td align="right">BatchID:</td><td align="left"><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BatchID") %>' /><br /></td></tr>
<tr><td align="right">BatchName:</td><td align="left"><asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BatchName") %>' /><br /></td></tr>
<tr><td align="right">Description:</td><td align="left"><asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Description") %>' /><br /></td></tr>
<tr><td align="right">CenterID:</td><td align="left"><asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("CenterID") %>' /><br /></td></tr>
<tr><td align="right">StartDate:</td><td align="left"><asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("StartDate") %>' /><br /></td></tr>
<tr><td align="right">EndDate:</td><td align="left"><asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EndDate") %>' /><br /></td></tr>
<tr><td align="right">Capacity:</td><td align="left"><asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Capacity") %>' /><br /></td></tr>
<tr><td align="right">ModificationType:</td><td align="left"><asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("ModificationType") %>' /><br /></td></tr>
<tr><td align="right">ModifiedBy:</td><td align="left"><asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("ModifiedBy") %>' /><br /></td></tr>
<tr><td align="right">ModifiedDate:</td><td align="left"><asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("ModifiedDate") %>' /><br /></td></tr>
<tr><td align="right">TrainingCenterName:</td><td align="left"><asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("TrainingCenterName") %>' /><br /></td></tr>
<tr><td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
        CommandName="Insert" Text="Insert" CssClass="comments" /></td>
    <td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
            CommandName="SwitchViewByID" Text="Back" CommandArgument="ViewList" 
            CssClass="comments" /></td></tr></table>
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    BatchID:
                    <asp:Label ID="BatchIDLabel" runat="server" Text='<%# Bind("BatchID") %>' />
                    <br />
                    BatchName:
                    <asp:Label ID="BatchNameLabel" runat="server" Text='<%# Bind("BatchName") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" 
                        Text='<%# Bind("Description") %>' />
                    <br />
                    CenterID:
                    <asp:Label ID="CenterIDLabel" runat="server" Text='<%# Bind("CenterID") %>' />
                    <br />
                    StartDate:
                    <asp:Label ID="StartDateLabel" runat="server" Text='<%# Bind("StartDate") %>' />
                    <br />
                    EndDate:
                    <asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>' />
                    <br />
                    Capacity:
                    <asp:Label ID="CapacityLabel" runat="server" Text='<%# Bind("Capacity") %>' />
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
                    TrainingCenterName:
                    <asp:Label ID="TrainingCenterNameLabel" runat="server" 
                        Text='<%# Bind("TrainingCenterName") %>' />
                    <br />
                </ItemTemplate>
            </asp:FormView>
                <br />
                </center>
        </asp:View>
    </asp:MultiView>
</asp:Content>
