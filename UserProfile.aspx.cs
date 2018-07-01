using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["user"] == null)
        {
            Response.Redirect("Login.aspx?id=LoginRequired");
        }
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "success")
            {
                lbl_error.Text = "You have successfully logged in ";
            }
        }
    }
}