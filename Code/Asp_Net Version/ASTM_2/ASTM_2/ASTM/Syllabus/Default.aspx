﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Default.Master" CodeBehind="Default.aspx.cs" Inherits="ASTM.Syllabus.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
                            DataSourceID="SqlDataSource1"
                            >
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="ID" Visible="False" />
                                <asp:BoundField DataField="SyllabusID" HeaderText="SyllabusID" 
                                    SortExpression="SyllabusID" />
                                <asp:BoundField DataField="SubModuleID" HeaderText="SubModuleID" 
                                    SortExpression="SubModuleID" Visible="False" />
                                <asp:BoundField DataField="SyllabusName" HeaderText="SyllabusName" 
                                    SortExpression="SyllabusName" />
                                <asp:BoundField DataField="Description" HeaderText="Description" 
                                    SortExpression="Description" />
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
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="ViewModify" runat="server">
            <center>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ASTMConnectionString %>" 
                    SelectCommand="SELECT ID, SyllabusID, SubModuleID, SyllabusName, Description, ModificationType, ModifiedBy, ModifiedDate FROM Syllabus where  SubModuleID=@SubModuleID" 
                    ConflictDetection="CompareAllValues" 
                    DeleteCommand="DELETE FROM [Course] WHERE [ID] = @original_ID AND [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Duration] = @original_Duration AND (([Fees] = @original_Fees) OR ([Fees] IS NULL AND @original_Fees IS NULL)) AND [ModificationType] = @original_ModificationType AND [ModifiedBy] = @original_ModifiedBy AND [ModifiedDate] = @original_ModifiedDate" 
                    InsertCommand="INSERT INTO [Course] ([CourseID], [CourseName], [Description], [Duration], [Fees], [ModificationType], [ModifiedBy], [ModifiedDate]) VALUES (@CourseID, @CourseName, @Description, @Duration, @Fees, @ModificationType, @ModifiedBy, @ModifiedDate)" 
                    OldValuesParameterFormatString="original_{0}" 
                    
                    
                    UpdateCommand="UPDATE [Course] SET [CourseID] = @CourseID, [CourseName] = @CourseName, [Description] = @Description, [Duration] = @Duration, [Fees] = @Fees, [ModificationType] = @ModificationType, [ModifiedBy] = @ModifiedBy, [ModifiedDate] = @ModifiedDate WHERE [ID] = @original_ID AND [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Duration] = @original_Duration AND (([Fees] = @original_Fees) OR ([Fees] IS NULL AND @original_Fees IS NULL)) AND [ModificationType] = @original_ModificationType AND [ModifiedBy] = @original_ModifiedBy AND [ModifiedDate] = @original_ModifiedDate">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" />
                        <asp:Parameter Name="original_CourseID" />
                        <asp:Parameter Name="original_CourseName" />
                        <asp:Parameter Name="original_Description" />
                        <asp:Parameter Name="original_Duration" />
                        <asp:Parameter Name="original_Fees" />
                        <asp:Parameter Name="original_ModificationType" />
                        <asp:Parameter Name="original_ModifiedBy" />
                        <asp:Parameter Name="original_ModifiedDate" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CourseID" />
                        <asp:Parameter Name="CourseName" />
                        <asp:Parameter Name="Description" />
                        <asp:Parameter Name="Duration" />
                        <asp:Parameter Name="Fees" />
                        <asp:Parameter Name="ModificationType" />
                        <asp:Parameter Name="ModifiedBy" />
                        <asp:Parameter Name="ModifiedDate" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="SubModuleID" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CourseID" />
                        <asp:Parameter Name="CourseName" />
                        <asp:Parameter Name="Description" />
                        <asp:Parameter Name="Duration" />
                        <asp:Parameter Name="Fees" />
                        <asp:Parameter Name="ModificationType" />
                        <asp:Parameter Name="ModifiedBy" />
                        <asp:Parameter Name="ModifiedDate" />
                        <asp:Parameter Name="original_ID" />
                        <asp:Parameter Name="original_CourseID" />
                        <asp:Parameter Name="original_CourseName" />
                        <asp:Parameter Name="original_Description" />
                        <asp:Parameter Name="original_Duration" />
                        <asp:Parameter Name="original_Fees" />
                        <asp:Parameter Name="original_ModificationType" />
                        <asp:Parameter Name="original_ModifiedBy" />
                        <asp:Parameter Name="original_ModifiedDate" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert">
                    <EditItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        SyllabusID:
                        <asp:TextBox ID="SyllabusIDTextBox" runat="server" 
                            Text='<%# Bind("SyllabusID") %>' />
                        <br />
                        SubModuleID:
                        <asp:TextBox ID="SubModuleIDTextBox" runat="server" 
                            Text='<%# Bind("SubModuleID") %>' />
                        <br />
                        SyllabusName:
                        <asp:TextBox ID="SyllabusNameTextBox" runat="server" 
                            Text='<%# Bind("SyllabusName") %>' />
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
                        <table style="width:100%;">
                            <tr>
                                <td align="left">SyllabusID:</td>
                                <td>
                                    <asp:TextBox ID="SyllabusIDTextBox" runat="server" 
                                        Text='<%# Bind("SyllabusID") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">SubModuleID</td>
                                <td>
                                    <asp:TextBox ID="SubModuleIDTextBox" runat="server" 
                                        Text='<%# Bind("SubModuleID") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">SyllabusName</td>
                                <td>
                                    <asp:TextBox ID="SyllabusNameTextBox" runat="server" 
                                        Text='<%# Bind("SyllabusName") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">Description</td>
                                <td>
                                    <asp:TextBox ID="DescriptionTextBox" runat="server" 
                                        Text='<%# Bind("Description") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">ModificationType</td>
                                <td>
                                    <asp:TextBox ID="ModificationTypeTextBox" runat="server" 
                                        Text='<%# Bind("ModificationType") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">ModifiedBy</td>
                                <td>
                                    <asp:TextBox ID="ModifiedByTextBox" runat="server" 
                                        Text='<%# Bind("ModifiedBy") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left">ModifiedDate</td>
                                <td>
                                    <asp:TextBox ID="ModifiedDateTextBox" runat="server" 
                                        Text='<%# Bind("ModifiedDate") %>' />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
&nbsp;<br />&nbsp;<asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        SyllabusID:
                        <asp:Label ID="SyllabusIDLabel" runat="server" 
                            Text='<%# Bind("SyllabusID") %>' />
                        <br />
                        SubModuleID:
                        <asp:Label ID="SubModuleIDLabel" runat="server" 
                            Text='<%# Bind("SubModuleID") %>' />
                        <br />
                        SyllabusName:
                        <asp:Label ID="SyllabusNameLabel" runat="server" 
                            Text='<%# Bind("SyllabusName") %>' />
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