using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\E-Career.mdf;Integrated Security=True");
    Logic_emplogin objemp = new Logic_emplogin();
    int cmp_code;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            get_data();
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
    protected void lnkeditprofile_Click(object sender, EventArgs e)
    {
        txtcmpname.Enabled = true;
        txtaddress.Enabled = true;
        txtcity.Enabled = true;
        txtcontectperson.Enabled = true;
        txtemail.Enabled = true;
        txtstate.Enabled = true;
        txtmobileno.Enabled = true;
        txtpassword.Enabled = true;
        txtusername.Enabled = true;
        txtwebsite.Enabled = true;
        txtpassword.TextMode = TextBoxMode.Password;

        btnsubmit.Visible = true;
        btncancel.Visible = true;
        lnkeditprofile.Visible = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        objemp.update(cmp_code, txtcmpname.Text, txtaddress.Text, txtcity.Text, txtstate.Text, txtcontectperson.Text, txtmobileno.Text, txtemail.Text, txtwebsite.Text, txtusername.Text, txtpassword.Text);
        btnsubmit.Visible = false;
        btncancel.Visible = false;
        lnkeditprofile.Visible = true;

        txtcmpname.Enabled = false;
        txtaddress.Enabled = false;
        txtcity.Enabled = false;
        txtcontectperson.Enabled = false;
        txtemail.Enabled = false;
        txtstate.Enabled = false;
        txtmobileno.Enabled = false;
        txtpassword.Enabled = false;
        txtusername.Enabled = false;
        txtwebsite.Enabled = false;

        Response.Redirect("Login.aspx");      
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        lnkeditprofile.Visible = true;
        btnsubmit.Visible = false;
        btncancel.Visible = false;

        txtcmpname.Enabled = false;
        txtaddress.Enabled = false;
        txtcity.Enabled = false;
        txtcontectperson.Enabled = false;
        txtemail.Enabled = false;
        txtmobileno.Enabled = false;
        txtpassword.Enabled = false;
        txtstate.Enabled = false;
        txtusername.Enabled = false;
        txtwebsite.Enabled = false;
    }

    public void get_data()
    {
        try
        {
            cmp_code = int.Parse(Session["cmp_code"].ToString());
            if (con.State == 0)
            {
                con.Open();
            }
            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("select company_name,company_address,company_city,company_state,company_contactperson,mobile_no,email,company_website,company_username,company_password from employeer_registration where company_code=@U1", con);
            cmd.Parameters.AddWithValue("@U1", cmp_code);

            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtcmpname.Text = (dr["company_name"].ToString());
                txtaddress.Text = (dr["company_address"].ToString());
                txtcity.Text = (dr["company_city"].ToString());
                txtstate.Text = (dr["company_state"].ToString());
                txtcontectperson.Text = (dr["company_contactperson"].ToString());
                txtmobileno.Text = (dr["mobile_no"].ToString());
                txtemail.Text = (dr["email"].ToString());
                txtwebsite.Text = (dr["company_website"].ToString());
                txtusername.Text = (dr["company_username"].ToString());
                txtpassword.Text = (dr["company_password"].ToString());
            }
            dr.Close();
            con.Close();
        }
        catch (Exception ex)
        {

        }    
    }
}