<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminEdit.aspx.cs" Inherits="AdminEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Edit Profile</title>
    <link rel="Stylesheet" href="StyleSheetAdminEdit.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 612px;
        }
        .auto-style3 {
            width: 90px;
            height: 90px;
        }
        .auto-style4 {
            width: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="margin: 0 auto; width: 1100px; height: 51px;" align="center" class="auto-style8">
        <tr style="width:1100px;height:50px">
            <td class="auto-style4">
                &nbsp;<img alt="" class="auto-style3" src="Pics/stock.jpg" /></td>
            <td class="auto-style7" align="center"><strong style="font-size: x-large">Toll Booth Management System</strong></td>
            <td style="text-align:right" class="auto-style10" align="center">
                <asp:Label ID="Label1" runat="server" Text="Label" align="left" style="font-size: large"></asp:Label>
            </td>
            <td style="text-align:right" class="auto-style11">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" align="right" style="font-weight: 700; font-size: medium"/>
            </td>
        </tr>
        </table>
        <br />
        <table class="auto-style2" style="width:1100px; margin: 0 auto" align="center" >
            <tr>
                <td align="center" style="line-height: 60px; background-color: #77B2C0;" class="auto-style1"><strong>ADMIN EDIT PROFILE</strong></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Email" DataSourceID="SqlDataSource1" Height="350px" Width="650px" BackColor="#E0F6F4" align="center">
            <EditRowStyle BackColor="#E0F6F3" BorderColor="Black" Font-Names="Arial" ForeColor="Black" />
            <EmptyDataRowStyle BackColor="#E0F6F4" />
            <Fields>
                <asp:TemplateField HeaderText="Full Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Full Name field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email-Id" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Gender field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date of Birth" SortExpression="Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Date of Birth field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number" SortExpression="Phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Phone") %>' MaxLength="10" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Phone Number field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Password field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" DeleteCommand="DELETE FROM [Adminreg] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Adminreg] ([Name], [Email], [Gender], [Date], [Phone], [Password]) VALUES (@Name, @Email, @Gender, @Date, @Phone, @Password)" SelectCommand="SELECT * FROM [Adminreg] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Adminreg] SET [Name] = @Name, [Gender] = @Gender, [Date] = @Date, [Phone] = @Phone, [Password] = @Password WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <table style="width:1100px; margin: 0 auto" align="center">
            <tr style="width:1100px;height:50px;background-color:black;text-align:center;color:#fff">
            <td colspan="3" style="background-color: #77B2C0; color: #000000;">
                IMPORTANT LINKS: <a href="AdminHome.aspx">Toll Booth Entry</a>&nbsp&nbsp&nbsp<a href="AdminUserdetails.aspx">View Vehicle Details</a>&nbsp&nbsp&nbsp<a href="Services.aspx">Services</a>&nbsp&nbsp&nbsp<a href="Index.aspx">HomePage</a> 
            </td>
        </tr>
        <tr style="width:1100px;height:50px;background-color:black;text-align:center;color:#fff">
            <td colspan="3" style="background-color: #77B2C0; color: #000000;">
                Copyright © 2021 | SIES College of Commerce and Economics | Mhatre&Poojary LLC
            </td>
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
