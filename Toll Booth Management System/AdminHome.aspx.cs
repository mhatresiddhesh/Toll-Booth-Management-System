using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AdminHome : System.Web.UI.Page
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        int var2, var3;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True");
        string check = "select Balance from Userreg where Vehicle1 = '" + TextBox7.Text + "'";
        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp != null)
        {
            var2 = temp;
            var3 = var2 - 100;
            Label8.Text = var3.ToString();
            SqlCommand cmd1 = new SqlCommand("update Userreg set Balance = " + var3 + " where Vehicle1 = '" + TextBox7.Text + "'", con);
            con.Open();
            cmd1.ExecuteScalar();
            con.Close();
            SqlCommand cmd2 = new SqlCommand("update Userreg set Entry = '" + TextBox8.Text + "' where vehicle1 = '" + TextBox7.Text + "'", con);
            con.Open();
            cmd2.ExecuteScalar();
            con.Close();
            Label9.Text = "Toll Amount Deducted Successfully And Entry Time Noted as ";
            Label10.Text = TextBox8.Text;
        }
    }
}