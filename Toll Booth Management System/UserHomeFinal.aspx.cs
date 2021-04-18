using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UserHomeFinal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
            Response.Redirect("LoginPage.aspx");
        Label1.Text = "Welcome " + Session["Email"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("LoginPage.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int var1, var2, var3;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True");
        var1 = Convert.ToInt32(TextBox1.Text);
        string check = "select Balance from Userreg where Email = '" + Session["Email"] + "'";
        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp != null)
        {
            var2 = temp;
            var3 = var1 + var2;
            Label10.Text = var3.ToString();
            SqlCommand cmd1 = new SqlCommand("update Userreg set Balance = " + var3 + " where Email = '" + Session["Email"] + "'", con);
            con.Open();
            cmd1.ExecuteScalar();
            con.Close();
            Label2.Text = "Balance Updated Successfully";
        }
    }
}