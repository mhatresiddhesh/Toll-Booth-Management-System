using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.instagram.com/chelseafc/");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/ChelseaFC/");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://twitter.com/ChelseaFC");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        
    }
}
