using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
            Response.Redirect("AdminLogin.aspx");
        Label1.Text = "Welcome " + Session["Email"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminLogin.aspx");
    }
}