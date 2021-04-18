using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminUserdetails : System.Web.UI.Page
{
    string connectionString = @"Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True;";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
            Response.Redirect("AdminLogin.aspx");
        Label1.Text = "Welcome " + Session["Email"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlcon = new SqlConnection(connectionString))
        {
            sqlcon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("select * from Userreg where Vehicle1 = '" + TextBox1.Text + "'", sqlcon);
            DataTable dtb1 = new DataTable();
            sqlDa.Fill(dtb1);
            UserDetails.DataSource = dtb1;
            UserDetails.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminLogin.aspx");
    }
}