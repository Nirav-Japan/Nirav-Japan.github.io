using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Logic_feedback feedback = new Logic_feedback();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        feedback.give_feedback(drpusertype.SelectedValue.ToString(), txtfeedback.Text);    
        txtfeedback.Text = "";
    }
    protected void drpusertype_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}