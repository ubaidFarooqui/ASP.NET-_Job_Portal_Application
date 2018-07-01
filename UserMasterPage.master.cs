using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["user"] != null)
        {
            linkbtn_loginInlogOut.Text = "Logout";
            link_btn_userprofile_signup.Text = "Profile";
        }
        else
        {
            linkbtn_loginInlogOut.Text = "Login";
            link_btn_userprofile_signup.Text = "Sign Up";
        }
    }

    protected void linkbtn_loginInlogOut_Click(object sender, EventArgs e)
    {
        if (linkbtn_loginInlogOut.Text == "Login")
        {
            Response.Redirect("Login.aspx");
        }
        if (linkbtn_loginInlogOut.Text == "Logout")
        {
            Page.Session.Abandon();
            Response.Redirect("Login.aspx?id=logout");
        }
    }

    protected void link_btn_userprofile_signup_Click(object sender, EventArgs e)
    {
        if (link_btn_userprofile_signup.Text == "Sign Up")
        {
            Response.Redirect("Signup.aspx");
        }
        if (link_btn_userprofile_signup.Text=="Profile" )
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}
