<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style7 {
            text-align: center;
            height: 59px;
        }
        .auto-style14 {
            height: 56px;
        }
        .auto-style15 {
            width: 431px;
            text-align: center;
            height: 60px;
            font-weight: bold;
        }
        .auto-style16 {
            width: 383px;
            text-align: center;
            height: 60px;
        }
        .auto-style17 {
            height: 60px;
            width: 459px;
        }
        .auto-style18 {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3" style="border-style: solid; background-color: #99CCFF; width: 1100px;">
        <tr>
            <td colspan="3" class="auto-style7"><strong style="font-size: x-large">USER LOGIN</strong></td>
        </tr>
        <tr>
            <td class="auto-style15">Email-Id:</td>
            <td class="auto-style16" style="color: #FF0000">
                *
                <asp:TextBox ID="TextBoxEmailtxt" runat="server" Height="30px" Width="250px" placeholder="Enter Registered Email-ID"></asp:TextBox>
            </td>
            <td class="auto-style17">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Email-Id field cannot be empty" ForeColor="Red" ControlToValidate="TextBoxEmailtxt"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Enter valid Email-Id" ForeColor="Red" ControlToValidate="TextBoxEmailtxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">Password:</td>
            <td class="auto-style16" style="color: #FF0000">
                *
                <asp:TextBox ID="TextBoxPasswordtxt" runat="server" Height="30px" Width="250px" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            </td>
            <td class="auto-style17">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password field cannot be empty" ForeColor="Red" ControlToValidate="TextBoxPasswordtxt"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="auto-style14">
                <asp:Button ID="Button1" runat="server" Text="Login" Height="30px" Width="150px" Font-Bold="True" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="auto-style18">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DefautRegister.aspx">Does not have an account, REGISTER Now!</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" class="auto-style2">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Height="30px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

