using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddNewJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx?id=LoginRequired");
        }
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        try
        {
            string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "insert into tblJobs (vJobTitle, tDescription, dLastDate, iNoOfPost, vRequiredQualification, vRequiredExp)values('" + txt_jobtitle.Text + "', '" + txt_description.Text + "', '" + txt_lastdatetoapply.Text + "','" + txt_noofpost.Text + "', '" + txt_requiredqualification.Text + "','" + txt_requiredexperience.Text + "')";
            com.ExecuteNonQuery();
            Response.Redirect("ViewJobs.aspx?id=added");
        }
        catch( Exception ex )
        {
            lbl_error.Text = "Error: " + ex.Message;
        }
    }
}