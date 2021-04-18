using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string check = "select count(*) from Adminreg where Email = '" + TextBoxEmailtxt.Text + "' and Password = '" + TextBoxPasswordtxt.Text + "' ";
        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            Session["Email"] = TextBoxEmailtxt.Text.Trim();
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            Label2.Text = "Your Email-Id or Password is Invalid";
        }
    }
}