using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_signup_submit_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["farooquiportal"].ConnectionString;
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "insert into tblusers (vLoginId,vPassword,vName,vAddress,vContactNumber,vMailId,vQualification,vCountry) values ('"+txt_loginId.Text+"','"+txt_pass.Text+"','"+txt_name.Text+"','"+txt_address.Text+"','"+txt_contactnumber.Text+"','"+txt_email.Text+"','"+txt_qualification.Text+"','"+ddl_country.SelectedValue.ToString()+"')";
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Login.aspx?id=registor");
        lbl_error.Text = "You have registered Successfully";
    }
}