using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "LoginRequired")
            {
                lbl_error.Text = "Please Login";
            }
        }
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        if (txt_loginID.Text == "Admin" && txt_pass.Text == "Ubaid1987")
        {
            Page.Session.Add("admin", txt_loginID.Text);
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            lbl_error.Text = "Please enter the correct Login Inforamtion";
        }
    }
}