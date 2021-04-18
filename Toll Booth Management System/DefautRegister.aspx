<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DefautRegister.aspx.cs" Inherits="DefautRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style7 {
            width: 100%;
            height: 569px;
        }
        .auto-style8 {
        }
        .auto-style9 {
        }
        .auto-style10 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style11 {
            width: 306px;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style12 {
            width: 312px;
            text-align: center;
        }
        .auto-style13 {
            width: 306px;
            font-size: medium;
        }
        .auto-style14 {
            width: 306px;
            font-size: medium;
            height: 35px;
        }
        .auto-style15 {
            width: 312px;
            text-align: center;
            height: 35px;
        }
        .auto-style16 {
            height: 35px;
        }
        .auto-style17 {
            height: 36px;
        }
        .auto-style18 {
            font-size: large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7" style="border-style: groove; border-width: thin; background-color: #66FFFF">
        <tr>
            <td class="auto-style10" colspan="3"><strong>USER REGISTRATION</strong></td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Full Name:</strong></td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Name" runat="server" placeholder="Full Name" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="* Full Name Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <strong>Email-Id:</strong></td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Email" runat="server" placeholder="Email-Id" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="* Email-Id Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="* Enter Valid Email-Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <strong>Gender:</strong></td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Gender Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <strong>Address:</strong></td>
            <td class="auto-style15" style="color: #FF0000">
                *
                <asp:TextBox ID="Address" runat="server" placeholder="Address" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Address" ErrorMessage="* Address Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <strong>Date of Birth:</strong></td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Dob" runat="server" placeholder="DD-MM-YYYY" MaxLength="10" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Dob" ErrorMessage="* Date of Birth Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                Phone Number:</td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Phone" runat="server" placeholder="Phone Number" MaxLength="10" TextMode="Phone" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Phone" ErrorMessage="* Phone Number Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                Vehicle Number (Primary):</td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="VP" runat="server" placeholder="Eg: AB00CD0000" MaxLength="10" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="VP" ErrorMessage="* Vehicle Number (Primary) Field cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                Vehicle Number (Optional):</td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Vo" runat="server" placeholder="Eg: AB00CD0000" MaxLength="10" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Vo" ErrorMessage="* Vehicle Number (Optional) Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                Password:</td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Password" runat="server" placeholder="Password" TextMode="Password" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Password" ErrorMessage="* Password Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                Confirm Password:</td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Cp" runat="server" placeholder="Confirm Password" TextMode="Password" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Cp" ErrorMessage="* Confirm Password Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Cp" ErrorMessage="* Password and Confirm Password must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                Account Balance:</td>
            <td class="auto-style12" style="color: #FF0000">
                *
                <asp:TextBox ID="Balance" runat="server" TextMode="Number" placeholder="Account Balance" MaxLength="5" Width="220px" Height="25px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Balance" ErrorMessage="* Account Balance Field cannot be Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Height="38px" style="font-weight: 700" Width="126px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700">Status</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="3" align="center">
                <asp:HyperLink ID="HyperLink1" runat="server" style="text-align: center" NavigateUrl="~/LoginPage.aspx">Already have an Account, LOGIN Now!!</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" colspan="3" align="center" style="color: #FF0000">
                <strong>*Note: Opening Account Balance should be Atleast Rs.500/-</strong></td>
        </tr>
    </table>
</asp:Content>

