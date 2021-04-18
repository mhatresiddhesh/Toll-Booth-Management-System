<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin HomePage</title>
    <link rel="Stylesheet" href="StyleSheetAdmin.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            width: 48%;
        }
        .auto-style5 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style7 {
            font-size: large;
            width: 489px;
        }
        .auto-style8 {
            width: 1100px;
        }
        .auto-style9 {
            width: 78px;
        }
        .auto-style10 {
            width: 279px;
        }
        .auto-style11 {
            width: 454px;
        }
        .auto-style12 {
            width: 284px;
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="margin: 0 auto" align="center" class="auto-style8">
        <tr style="width:1100px;height:50px">
            <td class="auto-style9">
                <img alt="" class="auto-style6" height="90px" src="Pics/stock.jpg" width="90px" />
            </td>
            <td class="auto-style7" align="center"><strong style="font-size: x-large">Toll Booth Management System</strong></td>
            <td style="text-align:right" class="auto-style10" align="center">
                <asp:Label ID="Label1" runat="server" Text="Label" align="left" style="font-size: large"></asp:Label>
            </td>
            <td style="text-align:right" class="auto-style11">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" align="right" style="font-weight: 700; font-size: medium" Height="37px" Width="142px"/>
                    <strong>
                    <br />
                <br />
                    </strong>
            </td>
        </tr>
        </table>
        <br />
        <table class="auto-style2" style="width:1100px; margin: 0 auto" align="center" >
            <tr>
                <td align="center" style="line-height: 60px; background-color: #77B2C0;" class="auto-style1">
                    <asp:Menu ID="Menu1" runat="server" ForeColor="Black" Orientation="Horizontal" style="font-size: large; font-weight: 700">
                        <Items>
                            <asp:MenuItem Text="Vehicle Entry" Value="Vehicle Entry"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/AdminUserdetails.aspx" Text="View Vehicle Details" Value="View Vehicle Details"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/AdminEdit.aspx" Text="Admin Edit Profile" Value="Admin Edit Profile"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#000066" ForeColor="White" />
                        <StaticMenuItemStyle ForeColor="Black" HorizontalPadding="35px" />
                    </asp:Menu>
                </td>
            </tr>
        </table>

    
        <br />

    
        <br />
        <br />
        <table class="auto-style3" style="background-color: #FFFFFF; height: 268px;" align="center">
            <tr>
                <td colspan="2" class="auto-style5" style="background-color: #77B2C0"><strong>VEHICLE&nbsp; ENTRY</strong></td>
            </tr>
            <tr>
                <td class="auto-style12" style="background-color: #DDF7F4"><strong>Enter Vehicle Number:</strong></td>
                <td style="background-color: #DDF7F4; color: #FF0000;">
        <asp:TextBox ID="TextBox7" runat="server" Width="184px" MaxLength="10"></asp:TextBox>
                    &nbsp;<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="background-color: #DDF7F4"><strong>Enter Vehicle Arrival Time:</strong></td>
                <td style="background-color: #DDF7F4; color: #FF0000;">
                    <asp:TextBox ID="TextBox8" runat="server" placeholder="DD-MM-YYYY HH-MM-SS" TextMode="DateTimeLocal"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="background-color: #DDF7F4">
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit" Font-Bold="True" Width="122px" Height="37px" />
                </td>
            </tr>
            <tr>
                <td align="center" style="background-color: #DDF7F4">
                    <strong>Updated Balance:</strong></td>
                <td align="center" style="background-color: #DDF7F4">
                    Rs.
        <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="background-color: #DDF7F4">
        <asp:Label ID="Label9" runat="server"></asp:Label>
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        
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
