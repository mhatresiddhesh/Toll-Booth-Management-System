using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class DefautRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-9NN9NDBK;Initial Catalog=Project;Integrated Security=True");
            con.Open();
            string checkuser = "select count(*) from Userreg where Email = '" + Email.Text + "' ";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label1.Text = ("User Already Exists with the current Email-Id. Please use different Email-ID.");
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
            SqlCommand cmd = new SqlCommand("insert into Userreg" + "(Name,Email,Address,Date,Phone,Vehicle1,Vehicle2,Password,Balance,Gender) values (@Name,@Email,@Address,@Date,@Phone,@Vehicle1,@Vehicle2,@Password,@Balance,@Gender)", con);
            cmd.Parameters.AddWithValue("@Name", Name.Text);
            cmd.Parameters.AddWithValue("@Email", Email.Text);
            cmd.Parameters.AddWithValue("@Address", Address.Text);
            cmd.Parameters.AddWithValue("@Date", Dob.Text);
            cmd.Parameters.AddWithValue("@Phone", Phone.Text);
            cmd.Parameters.AddWithValue("@Vehicle1", VP.Text);
            cmd.Parameters.AddWithValue("@Vehicle2", Vo.Text);
            cmd.Parameters.AddWithValue("@Password", Password.Text);
            cmd.Parameters.AddWithValue("@Balance", Balance.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("LoginPage.aspx");
        }
        catch (Exception ex)
        {
            Label1.Text = "User Already Exists with the current Email-Id. Please use different Email-ID.";
        }
    }
}