using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_EditJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx?id=LoginRequired");
        }

        if (Request.QueryString["edit"] != null)
        {
            string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "select * from tblJobs where iJid =" + Request.QueryString["edit"].ToString();
            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read())
            {
                txt_jobtitle.Text = dr["vJobTitle"].ToString();
                txt_description.Text = dr["tDescription"].ToString();
                txt_lastdatetoapply.Text = dr["dLastDate"].ToString();
                txt_noofpost.Text = dr["iNoOfPost"].ToString();
                txt_requiredqualification.Text = dr["vRequiredQualification"].ToString();
                txt_requiredexperience.Text = dr["vRequiredExp"].ToString();
            }
            con.Close();
        }
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["edit"] != null)
        {
            string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand com = new SqlCommand();
            com.Connection = con;
            com.CommandText = "update tblJobs set vJobTitle='" + txt_jobtitle.Text + "', tDescription='" + txt_description.Text + "', dLastDate='" + txt_lastdatetoapply.Text + "', iNoOfPost='" + txt_noofpost.Text + "', vRequiredQualification='" + txt_requiredqualification.Text + "', vRequiredExp='" + txt_requiredexperience.Text + "' where iJid ='" + Request.QueryString["edit"].ToString() + "'";
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewJobs.aspx?id=updated");
        }
    }
}