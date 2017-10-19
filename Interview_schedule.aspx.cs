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
    Logic_empinterview emp_int = new Logic_empinterview();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\E-Career.mdf;Integrated Security=True");
    int cmp_code;
    public void get_vac_info()
    {
        if(con.State == 0)
        {
            con.Open();
        }

        try
        {
            cmp_code = int.Parse(Session["cmp_code"].ToString());
            String cmd = "select vacancy_id,postname from vacancy_master where company_code = '" + cmp_code.ToString() + "'";
            SqlDataAdapter adpt = new SqlDataAdapter(cmd, con);
            DataTable dt = new DataTable();

            adpt.Fill(dt);
            drppostname.DataSource = dt;
            drppostname.DataBind();
            drppostname.DataTextField = "postname";
            drppostname.DataValueField = "vacancy_id";
            drppostname.DataBind();

            drpvacancyid.DataSource = dt;
            drpvacancyid.DataBind();
            drpvacancyid.DataTextField = "vacancy_id";
            drpvacancyid.DataValueField = "vacancy_id";
            drpvacancyid.DataBind();

            String cmd2 = "select company_contactperson,mobile_no from employeer_registration where company_code='" + cmp_code.ToString() + "'";
            SqlDataAdapter adp2 = new SqlDataAdapter(cmd2, con);
            DataTable dt2 = new DataTable();
            adp2.Fill(dt2);

            drpcontactperson.DataSource = dt2;
            drpcontactperson.DataBind();
            drpcontactperson.DataTextField = "company_contactperson";
            drpcontactperson.DataValueField = "company_contactperson";
            drpcontactperson.DataBind();
            drpmobileno.DataSource = dt2;
            drpmobileno.DataBind();
            drpmobileno.DataTextField = "mobile_no";
            drpmobileno.DataValueField = "mobile_no";
            drpmobileno.DataBind();
        }
        catch(Exception ex)
        {

        }
    }

    public void bind_gridview()
    {
        if (con.State == 0)
        {
            con.Open();
        }

        cmp_code = int.Parse(Session["cmp_code"].ToString());
        String cmd = "select interview_id,postname,vacancy_id,contact_person,mobileno,convert(varchar(10),date_start,101) as date_start,convert(varchar(10),date_end,101) as date_end,time from interview_master where company_code='" + cmp_code.ToString() + "'";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get_vac_info();
            bind_gridview();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        drppostname.Enabled = true;
        txtstartingdate.Enabled = true;
        txtendingdate.Enabled = true;
        txttime.Enabled = true;
        btnsubmit.Enabled = true;
        btncancel.Enabled = true;
        btnadd.Enabled = false;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int cmp_code;
        int vac_id;
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        vac_id = int.Parse(drpvacancyid.SelectedValue.ToString());
        emp_int.add_interview(cmp_code,vac_id,drppostname.SelectedItem.ToString(),drpcontactperson.SelectedValue.ToString(),drpmobileno.SelectedValue.ToString(),txtstartingdate.Text,txtstartingdate.Text,txttime.Text);
        drppostname.Enabled = false;
        txtstartingdate.Enabled = false;
        txtendingdate.Enabled = false;
        txttime.Enabled = false;
        btnsubmit.Enabled = false;
        btncancel.Enabled = false;
        btnadd.Enabled = true;
        txtstartingdate.Text = "";
        txtendingdate.Text = "";
        txttime.Text = "";

        Response.Redirect("Interview_schedule.aspx");
     }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        int int_id = int.Parse(HiddenField1.Value);
        int vac_id = int.Parse(drpvacancyid.SelectedValue);
        emp_int.update_interview(int_id, vac_id,drppostname.SelectedItem.ToString(),drpcontactperson.SelectedValue.ToString(),drpmobileno.SelectedValue.ToString(),txtstartingdate.Text,txtendingdate.Text,txttime.Text);
        Response.Redirect("Interview_schedule.aspx");        
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        int int_id;
        int_id = int.Parse(HiddenField1.Value);
        emp_int.delete_interview(int_id);
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
        Response.Redirect("Interview_schedule.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        drppostname.Enabled = false;
        txtstartingdate.Enabled = false;
        txtendingdate.Enabled = false;
        txttime.Enabled = false;
        btnsubmit.Enabled = false;
        btncancel.Enabled = false;
        btnadd.Enabled = true;
        txtstartingdate.Text = "";
        txtendingdate.Text = "";
        txttime.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        HiddenField1.Value = int.Parse(GridView1.SelectedRow.Cells[1].Text).ToString();
        drppostname.SelectedValue  = GridView1.SelectedRow.Cells[3].Text;
        drpvacancyid.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
        drpcontactperson.SelectedValue = GridView1.SelectedRow.Cells[4].Text;
        drpmobileno.SelectedValue = GridView1.SelectedRow.Cells[5].Text;
        DateTime dt = Convert.ToDateTime(GridView1.SelectedRow.Cells[6].Text);
        txtstartingdate.Text = dt.ToString("yyyy-MM-dd");
        DateTime dt2 = Convert.ToDateTime(GridView1.SelectedRow.Cells[7].Text);
        txtendingdate.Text = dt2.ToString("yyyy-MM-dd");
        txttime.Text = GridView1.SelectedRow.Cells[8].Text;

        btnadd.Enabled = false;
        btnupdate.Enabled = true;
        btndelete.Enabled = true;
        btnsubmit.Enabled = false;
        btncancel.Enabled = true;

        drppostname.Enabled = true;
        txtstartingdate.Enabled = true;
        txtendingdate.Enabled = true;
        txttime.Enabled = true;
    }
    protected void drppostname_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpvacancyid.SelectedValue = drppostname.SelectedValue;
    }
    protected void drpvacancyid_SelectedIndexChanged(object sender, EventArgs e)
    {
        drppostname.SelectedValue = drpvacancyid.SelectedValue;
    }
}