using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Logic_emplogin emplogic = new Logic_emplogin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int cmp_code = int.Parse(txtcmpcode.Text);
        emplogic.emp_registration(cmp_code, txtname.Text, txtaddress.Text, txtcity.Text, txtstate.Text, txtcontectperson.Text, txtmobileno.Text, txtemail.Text, txtwebsite.Text, txtusername.Text, txtpassword.Text, drpquestion.SelectedValue.ToString(), txtanswer.Text);
        txtcmpcode.Text = "";
        txtname.Text = "";
        txtaddress.Text = "";
        txtcity.Text = "";
        txtemail.Text = "";
        txtcontectperson.Text = "";
        txtmobileno.Text = "";
        txtstate.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtconfpassword.Text = "";
        txtanswer.Text = "";
        Response.Redirect("Login.aspx?flag=true");
    }
    protected void btncheckcode_Click(object sender, EventArgs e)
    {
        int tmp;
        int cmd_code;

        cmd_code = int.Parse(txtcmpcode.Text);
        tmp = emplogic.check_cmpcode(cmd_code);

        if (tmp == 0)
        {
            //btnsubmit.Enabled = true;
            lblmessage.Visible = false;
            btncheck.Enabled = true;
        }
        else
        {
            lblmessage.Visible = true;
            lblmessage.Text = "company code already exsists";
        }
    }
    protected void btncheck_Click(object sender, EventArgs e)
    {
        int flag;
        int cmd_code;

        cmd_code = int.Parse(txtcmpcode.Text);
        flag = emplogic.check_user(txtusername.Text);

        if (flag == 0)
        {
            btnsubmit.Enabled = true;
            lblmessage0.Visible = false;
        }
        else
        {
            lblmessage0.Text = "Username already exsists";
            lblmessage0.Visible = true;
            btnsubmit.Enabled = false;
        }

    }
}