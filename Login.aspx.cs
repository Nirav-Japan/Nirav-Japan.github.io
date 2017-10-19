using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Logic_usrlogin userlogic = new Logic_usrlogin();
    Logic_emplogin emplogic = new Logic_emplogin();
    protected void Page_Load(object sender, EventArgs e)
    {
        //drpusertype.Items.Add("User");
        //drpusertype.Items.Add("Employeer");
        //drpusertype.Items.Add("Administrator");

        string flag;
        flag = Request.QueryString["flag"];

        if(flag == "true")
        {
            lblmessage.Visible = true;
            lblmessage.Text = "Registration Successful....";
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (drpusertype.SelectedValue.ToString() == "User")
        {
            int jsid;
            jsid = userlogic.usrlogin(txtusername.Text, txtpassword.Text);
            if(jsid > 0 )
            {
                Session["js_id"] = jsid ;
                Response.Redirect("Index.aspx");
            }
            else
            {
                lblmessage.Visible = true;
                lblmessage.Text = "Invalid Username and Password";
            }
        }
        else if (drpusertype.SelectedValue.ToString() == "Employeer")
        {
            int cmpcode;
            cmpcode = emplogic.emp_login(txtusername.Text, txtpassword.Text);
            if (cmpcode > 0)
            {
                Session["cmp_code"] = cmpcode;
                Response.Redirect("Emp_Home.aspx");
            }
            else
            {
                lblmessage.Visible = true;
                lblmessage.Text = "Invalid Username and Password";
            }
        }
        else if (drpusertype.SelectedValue.ToString() == "Administrator")
        {

        }
    }
    protected void drpusertype_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void lnkforgetpassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forget_Password.aspx");
    }
}