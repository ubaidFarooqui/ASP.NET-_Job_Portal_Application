using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

public partial class ResumeBuilder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["user"] == null)
        {
            Response.Redirect("Login.aspx?id=LoginRequired");
        }

        string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "select * from tblusers where vLoginId='" + Page.Session["user"].ToString() + "'";
        SqlDataReader dr;
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            txt_name.Text = dr["vName"].ToString();
            txt_address.Text = dr["vAddress"].ToString();
            txt_contactnumber.Text = dr["vContactNumber"].ToString();
            txt_email.Text = dr["vMailId"].ToString();
        }
        con.Close();
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string sFileName = UploadResumeFile();
        string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "insert into tblResumes (vName, vAddress, vPhone, vMailId, v10th, v12th, vGraduation, vPostGraduation, vResumeFile,vJobId)values('" + txt_name.Text + "', '" + txt_address.Text + "', '" + txt_contactnumber.Text + "', '" + txt_email.Text + "', '" + txt_10th.Text + "', '" + txt_12th.Text + "', '" + txt_graduation.Text + "', '" + txt_post_graduation.Text + "', '" + sFileName + "', '"+Request.QueryString["id"].ToString()+"')";
        com.ExecuteNonQuery();
        Response.Redirect("ResumeUploadedSuccessfully.aspx");
        
    }
    public string UploadResumeFile()
    {
        if (File_Upload_Resume.HasFile)
        {
            Regex fileExpension = new Regex(@"^.+\.((doc|docx|pdf|txt))");
            Match MatchResult = fileExpension.Match(File_Upload_Resume.PostedFile.FileName);
            if (MatchResult.Success)
            {
                File_Upload_Resume.SaveAs(Server.MapPath("Resumes/" + Page.Session["user"].ToString() + File_Upload_Resume.FileName));
            }
            else 
            {
                lbl_file_error.Text = "Please upload a file only with .doc/ .docx/ .pdf/ .txt Extension";
            }    
        }
        return Page.Session["user"].ToString() + File_Upload_Resume.FileName;
    }
}