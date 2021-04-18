using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True");
            con.Open();
            string checkuser = "select count(*) from Adminreg where Email = '" + TextBoxEmail.Text + "' ";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label1.Text = ("Admin Already Exists with the current Email-Id. Please use different Email-ID.");
            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Adminreg" + "(Name,Email,Gender,Date,Phone,Password) values (@Name,@Email,@Gender,@Date,@Phone,@Password)", con);
            cmd.Parameters.AddWithValue("@Name", TextBoxName.Text);
            cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownListGender.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Date", TextBoxDob.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBoxPhone.Text);
            cmd.Parameters.AddWithValue("@Password", TextBoxPassword.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("AdminLogin.aspx");
        }
        catch (Exception ex)
        {
        }
    }
}