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
    Logic_empvacancy emplogic = new Logic_empvacancy();
    int vac_id;
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\E-Career.mdf;Integrated Security=True");
    int cmp_code;
    public void bind_gridview()
    {
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        if(con.State == 0)
        {
            con.Open();
        }

        String cmd = "select vacancy_id,postname,no_vacancy,location,field,convert(varchar(10),last_date_to_apply,101) as last_date_to_apply from vacancy_master where company_code='" + cmp_code.ToString() + "'";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);

        GridView2.DataSource = dt;
        GridView2.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        bind_gridview();
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int cmpcode = int.Parse(Session["cmp_code"].ToString());
        int id;
        id = int.Parse(txtvacancyid.Text);
        emplogic.add_vacancy(id,cmpcode, txtpostname.Text, txtnovacancy.Text, txtlocation.Text, txtlastdatetoapply.Text, txtfield.Text);

        reset();

        Response.Redirect("Emp_Vacancy.aspx");
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        txtvacancyid.Text = GridView2.SelectedRow.Cells[1].Text;
        txtpostname.Text = GridView2.SelectedRow.Cells[2].Text;
        txtnovacancy.Text = GridView2.SelectedRow.Cells[3].Text;
        txtlocation.Text = GridView2.SelectedRow.Cells[4].Text;
        txtfield.Text = GridView2.SelectedRow.Cells[5].Text;
        DateTime dt = Convert.ToDateTime(GridView2.SelectedRow.Cells[6].Text);
        txtlastdatetoapply.Text = dt.ToString("yyyy-MM-dd");
        
        enable_field();
        btnupdate.Enabled = true;
        btndelete.Enabled = true;
        btnsubmit.Enabled = false;
        btncancel.Enabled = true;
    }
   
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        int vac_id;
        vac_id = int.Parse(txtvacancyid.Text);
        emplogic.vacancy_update(vac_id, cmp_code, txtpostname.Text, txtnovacancy.Text, txtlocation.Text, txtlastdatetoapply.Text, txtfield.Text);
        Response.Redirect("Emp_vacancy.aspx");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        int id;
        id = int.Parse(txtvacancyid.Text);
        //lblpostname.Text = id.ToString();
        emplogic.vacancy_delete(id);
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
        Response.Redirect("Emp_vacancy.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtvacancyid.Text = "";
        txtpostname.Text = "";
        txtnovacancy.Text = "";
        txtlocation.Text = "";
        txtfield.Text = "";
        txtlastdatetoapply.Text = "";
        btnadd.Enabled = true;
        btnsubmit.Enabled = false;
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
        Response.Redirect("Emp_vacancy.aspx");
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        vac_id = emplogic.get_vacancy_id();
        txtvacancyid.Text = vac_id.ToString();
        reset();
        enable_field();
        btnadd.Enabled = false;
        btnsubmit.Enabled = true;
        btncancel.Enabled = true;
        btnupdate.Enabled = false;
        btndelete.Enabled = false;
    }

    public void reset()
    {
        txtpostname.Text = "";
        txtnovacancy.Text = "";
        txtlocation.Text = "";
        txtfield.Text = "";
        txtlastdatetoapply.Text = "";
    }

    public void enable_field()
    {
        txtpostname.Enabled = true;
        txtnovacancy.Enabled = true;
        txtlocation.Enabled = true;
        txtfield.Enabled = true;
        txtlastdatetoapply.Enabled = true;
    }
    protected void txtlastdatetoapply_click(object sender, EventArgs e)
    {
       
    }
    
}