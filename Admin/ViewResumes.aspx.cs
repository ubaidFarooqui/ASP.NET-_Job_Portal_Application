using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ViewResumes : System.Web.UI.Page
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
            com.CommandText = "delete from tblResumes where iRid =" + Request.QueryString["del"].ToString() + "";
            com.ExecuteNonQuery();
            Response.Redirect("ViewResumes.aspx?id=deleted");
        }
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "deleted")
            {
                lbl_error.Text = "Resume deleted successfully";
            }
        }
    }
}