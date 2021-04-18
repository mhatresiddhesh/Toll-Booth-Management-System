<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHomeFinal.aspx.cs" Inherits="UserHomeFinal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User HomePage</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            width: 349px;
        }
        .auto-style2 {
            width: 52%;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            text-align: center;
            font-size: x-large;
            height: 70px;
        }
        .auto-style5 {
            width: 360px;
            height: 47px;
        }
        .auto-style7 {
            height: 51px;
            font-size: medium;
        }
        .auto-style8 {
            height: 51px;
        }
        .auto-style10 {
            height: 45px;
            font-size: medium;
        }
        .auto-style12 {
            height: 47px;
        }
        .auto-style13 {
            height: 45px;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:1100px; margin: 0 auto" align="center">
        <tr style="width:1100px;height:50px">
            <td style="width:60px">
                <img alt="" class="auto-style6" height="90px" src="Pics/stock.jpg" width="90px" />
            </td>
            <td class="auto-style1" align="center"><strong style="font-size: large">Toll Booth Management System</strong></td>
            <td style="text-align:right" class="auto-style3" align="center">
                <asp:Label ID="Label1" runat="server" Text="Label" align="left" style="font-size: large"></asp:Label>
            </td>
            <td style="text-align:right" class="auto-style3">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" align="right" style="font-weight: 700; font-size: medium"/>
            </td>
        </tr>
        </table>
        <table class="auto-style2" style="width:1100px; margin: 0 auto" align="center" >
            <tr>
                <td align="center" style="line-height: 65px; background-color: #75B4C5;" class="auto-style3"><strong>USER EDIT PROFILE</strong></td>
            </tr>
        </table>
        

        <br />
        

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Email,Vehicle1" DataSourceID="SqlDataSource1" Height="354px" Width="713px" align="center" BackColor="#CDEAE8">
            <EditRowStyle BackColor="#CEEBE9" />
            <Fields>
                <asp:TemplateField HeaderText="Full Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="* Full Name Field cannot be Blank" ForeColor="Red"></asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="* Gender Field Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address" SortExpression="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Address Field Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date of Birth" SortExpression="Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Date of Birth Field Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone Number" SortExpression="Phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Phone") %>' MaxLength="10" TextMode="Phone"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="* Phone Number Field Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Vehicle (Primary)" SortExpression="Vehicle1">
                    <EditItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Vehicle1") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Vehicle1") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Vehicle1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Vehicle (Optional)" SortExpression="Vehicle2">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Vehicle2") %>' MaxLength="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="* Vehicle (Optional)  Field Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Vehicle2") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Vehicle2") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="* Password Field Cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" DeleteCommand="DELETE FROM [Userreg] WHERE [Email] = @Email AND [Vehicle1] = @Vehicle1" InsertCommand="INSERT INTO [Userreg] ([Name], [Email], [Gender], [Address], [Date], [Phone], [Vehicle1], [Vehicle2], [Password], [Balance], [Entry]) VALUES (@Name, @Email, @Gender, @Address, @Date, @Phone, @Vehicle1, @Vehicle2, @Password, @Balance, @Entry)" SelectCommand="SELECT * FROM [Userreg] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Userreg] SET [Name] = @Name, [Gender] = @Gender, [Address] = @Address, [Date] = @Date, [Phone] = @Phone, [Vehicle2] = @Vehicle2, [Password] = @Password, [Balance] = @Balance, [Entry] = @Entry WHERE [Email] = @Email AND [Vehicle1] = @Vehicle1">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Vehicle1" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Vehicle1" Type="String" />
                <asp:Parameter Name="Vehicle2" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Balance" Type="Int32" />
                <asp:Parameter Name="Entry" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Vehicle2" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Balance" Type="Int32" />
                <asp:Parameter Name="Entry" Type="DateTime" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Vehicle1" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    
        <br />

    
        <table class="auto-style2" align="center" style="background-color: #E6F6F5; height: 229px;">
            <tr>
                <td class="auto-style4" colspan="2" style="background-color: #77B2C0"><strong style="background-color: #73ACBA">RECHARGE ACCOUNT</strong></td>
            </tr>
            <tr>
                <td class="auto-style5" style="background-color: #D4EDEA"><strong>Enter Amount to be Added in your Wallet:</strong></td>
                <td style="background-color: #D4EDEA; color: #FF0000;" class="auto-style12"><asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="178px" MaxLength="5"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #D4EDEA" align="center" class="auto-style12">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Recharge" Font-Bold="True" Height="41px" Width="162px" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #D4EDEA" align="center" class="auto-style7">
                    <strong>Updated Balance in your Wallet:</strong></td>
                <td style="background-color: #D4EDEA" align="center" class="auto-style8">
                    <strong>Rs.</strong>&nbsp;
        <asp:Label ID="Label10" runat="server" style="font-size: medium; font-weight: 700;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #D4EDEA"align="center" class="auto-style10">
        <asp:Label ID="Label2" runat="server" style="font-size: medium; font-weight: 700;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="background-color: #D4EDEA; color: #FF0000;"align="center" class="auto-style13">
                    <strong>*Note: Please Keep Balance above Rs. 200/- to Avoid Penalty Charges.</strong></td>
            </tr>
        </table>
        <br />
        <table style="width:1100px; margin: 0 auto" align="center">
            <tr style="width:1100px;height:50px;background-color:black;text-align:center;color:#fff">
            <td colspan="3" style="background-color: #77B2C0; color: #000000;">
                IMPORTANT LINKS: <a href="Services.aspx">Services</a>&nbsp&nbsp&nbsp<a href="Index.aspx">HomePage</a> 
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
