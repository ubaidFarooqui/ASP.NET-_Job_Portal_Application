using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "registor")
            {
                lbl_error.Text = "You have registered Sucessfully, Welcome to Our Job Portal Website";
            }
            if (Request.QueryString["id"].ToString() == "logout")
            {
                lbl_error.Text = "You have Successfully logged Out, Thanks for paying us a Visit";
            }
            if (Request.QueryString["id"].ToString() == "LoginRequired")
            {
                lbl_error.Text = "Please Login to access this Page";
            }
        }
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "select vPassword from tblusers where vLoginId='"+txt_loginID.Text+"'";
        SqlDataReader dr;
        dr = com.ExecuteReader();

        if (dr.Read())
        {
            string sPassword = dr["vPassword"].ToString();
            if (sPassword == txt_pass.Text)
            {
                Page.Session.Add("user", txt_loginID.Text);
                Page.Session.Timeout = 20;
                Response.Redirect("UserProfile.aspx?id=success");
            }
            else
            {
                lbl_error.Text = "Password is incorrect";
            }
        }
        else
        {
            lbl_error.Text = "Login ID is Incorrect";
        }
    }
}