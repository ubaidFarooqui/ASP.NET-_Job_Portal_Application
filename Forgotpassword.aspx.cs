using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class Forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "select * from tblusers where vLoginId = '" + txt_login.Text + "'";
        SqlDataReader dr = com.ExecuteReader();

        if (dr.Read())
        {
            string sPassword, sMailid;
            sPassword = dr["vPassword"].ToString();
            sMailid = dr["vMailId"].ToString();
            Sendmail(sPassword, sMailid);
        }
        else 
        {
            lbl_error.Text = "Please Enter a correct Login ID";
        }

    }

    public void Sendmail(string password, string mailid)
    {
        MailMessage mymessage = new MailMessage();
        mymessage.Subject = "Hello there from Online Job Portal! Please find your Password";
        mymessage.Body = "Your Password is: " + password;


        mymessage.From = new MailAddress("farooqui_asp.net@hotmail.com");
        mymessage.To.Add(new MailAddress(mailid));

        SmtpClient mysmtpClient = new SmtpClient();
        mysmtpClient.Send(mymessage);

        lbl_error.Text = "Your Password has been sent to your e-mail ID at "+mailid;
    }
}