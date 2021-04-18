<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminReg.aspx.cs" Inherits="AdminReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            height: 49px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style3" style="border-style: solid; background-color: #99FFCC; width: 1100px;">
        <tr>
            <td class="auto-style5" colspan="3" align="center"><strong style="text-align: center">ADMIN REGISTRATION</strong></td>
        </tr>
        <tr>
            <td class="auto-style13">Full Name:</td>
            <td class="auto-style14" style="color: #FF0000">
                &nbsp;*
                <asp:TextBox ID="TextBoxName" runat="server" Height="25px" Width="220px" placeholder="Enter Full Name"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="* Full Name field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Email-Id:</td>
            <td class="auto-style14" style="color: #FF0000">
                *
                <asp:TextBox ID="TextBoxEmail" runat="server" Height="25px" Width="220px" placeholder="Enter Email-Id"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="* Email-Id field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="* Enter valid Email-Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Gender:</td>
            <td class="auto-style9" align="left" style="color: #FF0000">* <asp:DropDownList ID="DropDownListGender" runat="server" Height="25px" Width="150px" style="text-align: left">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="* Gender field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Date of Birth:</td>
            <td class="auto-style15" style="color: #FF0000">
                *
                <asp:TextBox ID="TextBoxDob" runat="server" Height="25px" Width="220px" placeholder="DD-MM-YYYY" MaxLength="10"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDob" ErrorMessage="* Date of Birth field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">Phone Number:</td>
            <td class="auto-style14" style="color: #FF0000">
                *
                <asp:TextBox ID="TextBoxPhone" runat="server" Height="25px" Width="220px" MaxLength="10" TextMode="Phone" placeholder="Enter Phone Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="* Phone Number field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Password:</td>
            <td class="auto-style17" style="color: #FF0000">
                *
                <asp:TextBox ID="TextBoxPassword" runat="server" Height="25px" Width="220px" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="* Password field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Confirm Password:</td>
            <td class="auto-style15" style="color: #FF0000">
                *
                <asp:TextBox ID="TextBoxCPassword" runat="server" Height="25px" Width="220px" TextMode="Password" placeholder="Repeat Password"></asp:TextBox>
            </td>
            <td class="auto-style12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxCPassword" ErrorMessage="* Confirm Password field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxCPassword" ErrorMessage="* Confirm Password must be same as Password" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Height="30px" OnClick="Button1_Click" Width="100px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22" colspan="3" align="center">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogin.aspx">Already have an account, LOGIN now!</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Height="30px"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

