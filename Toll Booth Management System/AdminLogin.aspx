<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style7 {
            text-align: center;
            height: 71px;
        }
        .auto-style14 {
            height: 56px;
        }
        .auto-style18 {
            height: 60px;
        }
        .auto-style19 {
            height: 41px;
        }
        .auto-style23 {
            width: 431px;
            text-align: center;
            height: 39px;
            font-weight: bold;
        }
        .auto-style24 {
            width: 383px;
            text-align: center;
            height: 39px;
        }
        .auto-style25 {
            height: 39px;
            width: 459px;
        }
        .auto-style26 {
            width: 431px;
            text-align: center;
            height: 40px;
            font-weight: bold;
        }
        .auto-style27 {
            width: 383px;
            text-align: center;
            height: 40px;
        }
        .auto-style28 {
            height: 40px;
            width: 459px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3" style="border-style: solid; background-color: #9999FF; height: 450px; width: 1100px;">
        <tr>
            <td colspan="3" class="auto-style7"><strong style="font-size: x-large">ADMIN LOGIN</strong></td>
        </tr>
        <tr>
            <td class="auto-style26">Email-Id:</td>
            <td class="auto-style27" style="color: #FF0000">
                &nbsp;*
                <asp:TextBox ID="TextBoxEmailtxt" runat="server" Height="30px" Width="250px" placeholder="Enter Registered Email-ID"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Email-Id field cannot be empty" ForeColor="Red" ControlToValidate="TextBoxEmailtxt"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter valid Email-Id" ForeColor="Red" ControlToValidate="TextBoxEmailtxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Password:</td>
            <td class="auto-style24" style="color: #FF0000;">
                *
                <asp:TextBox ID="TextBoxPasswordtxt" runat="server" Height="30px" Width="250px" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password field cannot be empty" ForeColor="Red" ControlToValidate="TextBoxPasswordtxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="auto-style14">
                <asp:Button ID="Button1" runat="server" Text="Login" Height="35px" Width="150px" Font-Bold="True" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="auto-style18">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminReg.aspx">Does not have an account, REGISTER Now!</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="auto-style19">
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Height="30px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>