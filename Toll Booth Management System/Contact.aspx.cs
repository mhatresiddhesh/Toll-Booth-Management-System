using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ins = "Insert into Contact (Name,Email,Subject,Message) values('" + TextBoxName.Text + "', '" + TextBoxEmail.Text + "', '" + TextBoxSub.Text + "', '" + TextBoxMsg.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Label15.Text = "Message has saved.";

    }
}