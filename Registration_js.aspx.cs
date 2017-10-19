using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Logic_usrlogin usrlogic = new Logic_usrlogin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Female_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int flag;
        flag = usrlogic.check_user(txtusername.Text);
        string gender,dob;
        if (Male.Checked == true)
        {
            gender = "male";
        }
        else
        {
            gender = "female";
        }

        //dob = caldob.SelectedDate.Date.ToShortDateString();
        dob = DateTime.Parse(txtdob.Text).ToShortDateString();
        if (flag == 0)
        {
            usrlogic.user_registration(txtfname.Text, txtmname.Text, txtlname.Text, gender, txtemail.Text, txtcontectno.Text, txtcity.Text, txtaddress.Text, txtstate.Text, dob, txtusername.Text, txtpassword.Text, drpquestion.SelectedValue.ToString(), txtanswer.Text);
            Response.Redirect("Login.aspx?flag=true");
        }
        else
        {
            lblmessage.Visible = true;
            lblmessage.Text = "Username Already Exsist !!";
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}