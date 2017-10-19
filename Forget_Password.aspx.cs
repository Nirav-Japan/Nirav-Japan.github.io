using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Logic_emplogin emp_login = new Logic_emplogin();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag;
        if (drpusertype.SelectedValue.ToString() == "Employeer")
        {
            flag = emp_login.forget_password(txtusername.Text, txtpassword.Text, drpquestion.SelectedValue.ToString(), txtanswer.Text);
            if (flag == 1)
            {
                lblmessage.Visible = true;
                lblmessage.Text = "Invalid Username or Answer Try Again !!";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}