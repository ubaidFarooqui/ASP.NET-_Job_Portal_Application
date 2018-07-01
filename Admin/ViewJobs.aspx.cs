using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ViewJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx?id=LoginRequired");
        }
        if (Request.QueryString["del"] != null)
        {
            string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "delete from tbljobs where iJid =" + Request.QueryString["del"].ToString();
            com.ExecuteNonQuery();
            Response.Redirect("ViewJobs.aspx?id=delete");
        }

        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "delete")
            {
                lbl_error.Text = "Job deleted successfully";
            }
            if (Request.QueryString["id"].ToString() == "added")
            {
                lbl_error.Text = "New Job added successfully";
            }
            if (Request.QueryString["id"].ToString() == "updated")
            {
                lbl_error.Text = "Job updated successfully";
            }
        }
    }
}