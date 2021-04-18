<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 875px;
    }
        .auto-style5 {
            font-size: small;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            font-size: medium;
        }
    .auto-style8 {
        font-size: xx-large;
        text-decoration: underline;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 1100px">
        <tr style="width:1100px">
            <td class="auto-style2">
                <h2 style="width: 775px" align="center" class="auto-style8">Our Vision</h2>
                <p style="width: 775px; font-size: large;">In current scenario,There are many challenges associated with the existing toll booth system.  Due to the limited number of toll booths and slow collection process, the average waiting time per vehicle is very high. So to overcome this situation, we can make use of the proposed system.</p>
          	    <p style="width: 775px; font-size: large;">This proposed system systematically manages the intake and departure of all the vehicles and stores data which can helpful for reference and security. Also the Drivers are supposed to pay the Toll Amount with the help RFID card. This system thus automates the entire toll booth collection and monitoring process with ease.</p>
                <p style="width: 775px; font-size: large;">User can <a href="LoginPage.aspx"> Click here </a> to check their balance and to update the balance available in their Wallet (RFID). While Admin can <a href="AdminLogin.aspx"> Click here </a> to check the database which consists details of all the vehicles with arrival and departure time.</p>
            </td>
            <td>
                <img src="Pics/Gif.gif" style="height: 275px; width: 315px" />
            </td>
        </tr>
    </table>

    <table class="auto-style4">
        <tr>
            <td class="auto-style5" colspan="2"></td>
        </tr>
        <br />
        <tr>
            <td class="auto-style4" colspan="2"><strong>Steps every User and Admin to follow so that they have an amazing experience! </strong> </td>
        </tr>
        <tr>
            <td><strong>USER:</strong></td>
            <td><strong>ADMIN:</strong></td>
        </tr>
        <tr>
            <td><span class="auto-style6">1. User has to click on the User Menu above to get started.<br />
                2. User has insert registered Login credentials in User Login Page.<br />
                3. If user has not registered yet he/she has to use our User Registration Page.&nbsp;
                <br />
                4. After Successful Registration/Login the user will be redirected by our User Website.
                <br />
                5. User can also use the website to Recharge the Wallet (Card) which will be used to pay the Toll Amount.</span><br class="auto-style6" />
            </td>
            <td class="auto-style9"><span class="auto-style6">1. Admin has to click on the Admin Menu above to get started.<br />
                2. Admin has insert registered Login credentials in Admin Login Page.<br />
                3. If Admin has not registered yet he/she has to use our Admin Registration Page.&nbsp;
                <br />
                4. After Successful Registration/Login the Admin will be redirected by our User Website.
                <br />
                5. Admin can use the website to check the database which consists of all the Vehicle Details passed at The Toll Station.</span><br />
            </td>
        </tr>
        <tr>
            <td colspan="2"><span class="auto-style7">Still have any questions? You know how to reach <a href="Contact.aspx"> us </a></span>.</td>
        </tr>
    </table>
</asp:Content>

