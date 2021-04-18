<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminUserdetails.aspx.cs" Inherits="AdminUserdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" href="StyleSheetAdminUserDetails.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            width: 1702px;
        }
        .auto-style3 {
        }
        .auto-style4 {
            width: 556px;
        }
        .auto-style5 {
            width: 310px;
            text-align: center;
        }
        .auto-style6 {
            width: 40%;
            font-size: x-large;
        }
        .auto-style12 {
            width: 73%;
            height: 50px;
        }
        .auto-style13 {
            width: 90px;
            height: 90px;
        }
        .auto-style14 {
            width: 92px;
        }
        .auto-style15 {
            width: 420px;
            font-size: x-large;
        }
        .auto-style16 {
            width: 256px;
        }
        .auto-style17 {
            width: 254px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table class="auto-style12" align="center">
            <tr style="width:1100px">
                <td class="auto-style14">
                    <img alt="" class="auto-style13" src="Pics/stock.jpg" /></td>
                <td class="auto-style15"><strong>Toll Booth Management System</strong></td>
                <td class="auto-style16" align="center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style17" align="right">
                    <asp:Button ID="Button2" runat="server" Text="Logout" OnClick="Button2_Click" style="text-align: right; font-weight: 700;" Width="95px" />
                </td>
            </tr>
        </table>
        
        <br />
        <table class="auto-style2" style="width:1100px; margin: 0 auto" align="center" >
            <tr>
                <td align="center" style="line-height: 60px; background-color: #77B2C0;" class="auto-style6"><strong>VEHICLE DETAILS</strong></td>
            </tr>
        </table>
        <br />
        <table class="auto-style1" style="background-color: #FFFFFF; height: 143px;" align="center">
            <tr>
                <td class="auto-style5" style="background-color: #DEF7F4"><strong>Enter Vehicle Details:</strong></td>
                <td style="background-color: #DEF7F4" class="auto-style4">
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="10" Height="25px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="background-color: #DEF7F4" colspan="2" align="center">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="View Details" Height="36px" Width="138px" Font-Bold="True" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:GridView ID="UserDetails" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" style="text-align: center" align="center" BorderStyle="None" Height="159px" Width="1100px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Full Name" />
                <asp:BoundField DataField="Email" HeaderText="Email-Id" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="Date" HeaderText="Date of Birth" />
                <asp:BoundField DataField="Phone" HeaderText="Phone Number" />
                <asp:BoundField DataField="Vehicle1" HeaderText="Vehicle Number(Primary)" />
                <asp:BoundField DataField="Vehicle2" HeaderText="Vehicle Number(Optional)" />
                <asp:BoundField DataField="Balance" HeaderText="Account Balance" />
                <asp:BoundField DataField="Entry" HeaderText="Arrival Time" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        <table style="width:1100px; margin: 0 auto" align="center">
            <tr style="width:1100px;height:50px;background-color:black;text-align:center;color:#fff">
            <td colspan="3" style="background-color: #77B2C0; color: #000000;">
                IMPORTANT LINKS: <a href="AdminHome.aspx">Toll Booth Entry</a>&nbsp&nbsp&nbsp<a href="AdminEdit.aspx">Admin Edit Profile</a>&nbsp&nbsp&nbsp<a href="Services.aspx">Services</a>&nbsp&nbsp&nbsp<a href="Index.aspx">HomePage</a> 
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
