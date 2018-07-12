using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.IO;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        /*MailAddress to = new MailAddress("farooqui.ubaid@gmail.com");
        MailAddress from = new MailAddress(txt_email.Text);
        MailMessage Message = new MailMessage(from, to);
        Message.Subject = "Visitor Query";
        Message.Body = txt_query.Text;
         Message.IsBodyHtml = true;
         Message.Body = "Name: "+txt_name.Text+"<br>Phone:"+txt_phone.Text+"<br>Query:"+txt_query;

        SmtpClient smtpclient = new SmtpClient("smtp.gmail.com", 587);
        smtpclient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "farooqui.ubaid@gmail.com",
            Password = "******"
        };
        smtpclient.EnableSsl = true;
        smtpclient.Send(Message); */

        string filename = Server.MapPath("~/App_data/ContactForm.txt");
        string mailBody = File.ReadAllText(filename);

        mailBody = mailBody.Replace("##Name##", txt_name.Text);
        mailBody = mailBody.Replace("##Email##", txt_email.Text);
        mailBody = mailBody.Replace("##ContactNo##", txt_phone.Text);
        mailBody = mailBody.Replace("##Query##", txt_query.Text);

        MailMessage mymessage = new MailMessage();
        mymessage.Subject = "Hi ! There is a new Query from a Visitor!";
        mymessage.Body = mailBody;


        mymessage.From = new MailAddress("farooqui_asp.net@hotmail.com");
        mymessage.To.Add(new MailAddress("farooqui.ubaid@gmail.com"));

        SmtpClient mysmtpClient = new SmtpClient();
        mysmtpClient.Send(mymessage);
        Response.Redirect("QueryEmailSuccess.aspx");

        

    }
}
