<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        height: 23px;
            width: 760px;
        }
    .auto-style4 {
        height: 23px;
        font-weight: bold;
        width: 705px;
    }
    .auto-style5 {
        font-weight: bold;
        width: 705px;
    }
        .auto-style7 {
            height: 50px;
        }
        .auto-style8 {
            width: 760px;
        }
        .auto-style9 {
            height: 50px;
            font-size: x-large;
        }
    .auto-style10 {
        height: 23px;
        width: 799px;
        text-align: center;
    }
    .auto-style11 {
        width: 799px;
        text-align: center;
    }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            width: 518px;
        }
        .auto-style14 {
            width: 449px;
            height: 285px;
            margin-left: 0px;
        }
        .auto-style15 {
            font-size: x-large;
        }
        .auto-style16 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2" style="border-style: solid; background-color: #66CCFF;">
    <tr align="center">
        <td class="auto-style9" colspan="3"><strong>Contact Us</strong></td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3" style="text-align: center"><strong style="color: #FF0000">Please fill in the contact form.</strong></td>
    </tr>
    <tr>
        <td class="auto-style4" style="text-align: center; font-size: medium;">Full Name:</td>
        <td class="auto-style10" style="color: #FF0000">
            *
            <asp:TextBox ID="TextBoxName" runat="server" Height="25px" Width="250px" placeholder="Enter your Full Name"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="* Full Name Field cannot be empty " ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="text-align: center; font-size: medium;">Email:</td>
        <td class="auto-style11" style="color: #FF0000">
            *
            <asp:TextBox ID="TextBoxEmail" runat="server" Height="25px" Width="250px" placeholder="Enter your valid Email-Id"></asp:TextBox>
            <br />
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="* Email ID Field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="* Enter Valid Email ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="text-align: center; font-size: medium;">Subject:</td>
        <td class="auto-style11" style="color: #FF0000">
            *
            <asp:TextBox ID="TextBoxSub" runat="server" Height="25px" Width="250px" placeholder="Enter Subject"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxSub" ErrorMessage="* Subject Field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5" style="text-align: center; font-size: medium;">Message:</td>
        <td class="auto-style11" style="color: #FF0000">
            *
            <asp:TextBox ID="TextBoxMsg" runat="server" Height="80px" Width="250px" TextMode="MultiLine" placeholder="Enter Message"></asp:TextBox>
        </td>
        <td class="auto-style8">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxMsg" ErrorMessage="* Message Field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3" align="center">
            <asp:Button ID="Button1" runat="server" Text="Send" Height="30px" style="font-weight: 700" Width="100px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7" colspan="3" align="center">
            <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
    <table class="auto-style12">
        <tr>
            <td class="auto-style13">
                <strong><span class="auto-style15">Office Details:</span></strong>
                <br />
                <span class="auto-style16">Address: Plot No.71, 72, TV Chidambaran Marg,
                </span>
                <br class="auto-style16" />
                <span class="auto-style16">near Champaklal Industries, Air Force Quarters,
                </span>
                <br class="auto-style16" />
                <span class="auto-style16">Jay BharatMata Nagar, Sion East, Sion,
                </span>
                <br class="auto-style16" />
                <span class="auto-style16">Mumbai, Maharashtra 400022.
                </span>
                <br class="auto-style16" />
                <span class="auto-style16">Phone: 022 2407 4944
                </span>
                <br class="auto-style16" />
                <br class="auto-style16" />
                <span class="auto-style16">You can also reach us at our </span> <a href="http://siesce.edu.in/"><span class="auto-style16">Website </span></a>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <img alt="" class="auto-style14" src="Pics/tollgif.gif" /></td>
        </tr>
    </table>
</asp:Content>

