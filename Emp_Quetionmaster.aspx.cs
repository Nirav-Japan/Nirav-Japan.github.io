using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    int t_no,cmp_code;
    Logic_emptest emp_test = new Logic_emptest();
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\E-Career.mdf;Integrated Security=True");
    public void get_postname()
    {
        cmp_code = int.Parse(Session["cmp_code"].ToString());
       
        if(con.State==0)
        {
            con.Open();
        }
        String cmd = "select postname,vacancy_id from vacancy_master where company_code = '" + cmp_code + "'";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        drpvacancyid.DataSource = dt;
        drpvacancyid.DataBind();
        drpvacancyid.DataTextField = "postname";
        drpvacancyid.DataValueField = "vacancy_id";
        drpvacancyid.DataBind();
    }

    public void bind_gridview()
    {
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        if(con.State == 0)
        {
            con.Open();
        }

        String cmd = "select test_no,vacancy_id,que_number,question,option1,option2,option3,option4,correct_ans from employeer_questionmaster where company_code = '" + cmp_code + "'";
        SqlDataAdapter adpt = new SqlDataAdapter(cmd, con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);

        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    public void reset_fields()
    {
        btnadd.Enabled = true;
        btnsave.Enabled = false;
        btncancel.Enabled = false;
        btnsubmit.Enabled = false;
        btndelete.Enabled = false;

        txtque.Text = "";
        txtop1.Text = "";
        txtop2.Text = "";
        txtop3.Text = "";
        txtop4.Text = "";
        txtcorrectans.Text = "";

        drpvacancyid.Enabled = false;
        txtquenum.Enabled = false;
        txtque.Enabled = false;
        txtop1.Enabled = false;
        txtop2.Enabled = false;
        txtop3.Enabled = false;
        txtop4.Enabled = false;
        txtcorrectans.Enabled = false;
    }

    public void reset_textboxs()
    {
        txtque.Text = "";
        txtop1.Text = "";
        txtop2.Text = "";
        txtop3.Text = "";
        txtop4.Text = "";
        txtcorrectans.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            get_postname();
            bind_gridview();
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int check;
        
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        int drpvac_id = int.Parse(drpvacancyid.SelectedValue.ToString());
        int que_no = int.Parse(txtquenum.Text);

        check = emp_test.check_que(drpvac_id, cmp_code, txtque.Text);
        if (check == 0)
        {
            emp_test.insert_question(drpvac_id, que_no, cmp_code, txtque.Text, txtop1.Text, txtop2.Text, txtop3.Text, txtop4.Text, txtcorrectans.Text);
            reset_fields();  
            lblmessage.Visible = false;
            bind_gridview();
        }
        else
        {
            lblmessage.Text = "Question Already Inserted !! ";
            lblmessage.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int que_num;
        int vid = int.Parse(drpvacancyid.SelectedValue.ToString());
        drpvacancyid.Enabled = true;
        txtquenum.Enabled = true;
        txtque.Enabled = true;
        txtop1.Enabled = true;
        txtop2.Enabled = true;
        txtop3.Enabled = true;
        txtop4.Enabled = true;
        txtcorrectans.Enabled = true;

        btnadd.Enabled = false;
        btnsave.Enabled = true;
        btnsubmit.Enabled = true;
        btncancel.Enabled = true;

        que_num = emp_test.get_queno(vid);
        txtquenum.Text = que_num.ToString();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        reset_fields();
    }
    protected void drpvacancyid_SelectedIndexChanged(object sender, EventArgs e)
    {
        int que_no;
        int vid = int.Parse(drpvacancyid.SelectedValue.ToString());
        que_no = emp_test.get_queno(vid);
        txtquenum.Text = que_no.ToString();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        int check;
        
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        int drpvac_id = int.Parse(drpvacancyid.SelectedValue.ToString());
        int que_no = int.Parse(txtquenum.Text);

        check = emp_test.check_que(drpvac_id, cmp_code, txtque.Text);
        if (check == 0)
        {
            emp_test.insert_question(drpvac_id, que_no, cmp_code, txtque.Text, txtop1.Text, txtop2.Text, txtop3.Text, txtop4.Text, txtcorrectans.Text);
            drpvacancyid.Enabled = false;
            reset_textboxs();
            que_no = que_no + 1;
            txtquenum.Text = que_no.ToString();
            lblmessage.Visible = false;
            bind_gridview();
        }
        else
        {
            lblmessage.Text = "Question Already Inserted !! ";
            lblmessage.Visible = true;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        HiddenField1.Value = GridView1.SelectedRow.Cells[1].Text;
        drpvacancyid.SelectedValue = GridView1.SelectedRow.Cells[2].Text;
        txtquenum.Text = GridView1.SelectedRow.Cells[3].Text;
        txtque.Text = GridView1.SelectedRow.Cells[4].Text;
        txtop1.Text = GridView1.SelectedRow.Cells[5].Text;
        txtop2.Text = GridView1.SelectedRow.Cells[6].Text;
        txtop3.Text = GridView1.SelectedRow.Cells[7].Text;
        txtop4.Text = GridView1.SelectedRow.Cells[8].Text;
        txtcorrectans.Text = GridView1.SelectedRow.Cells[9].Text;

        btnadd.Enabled = false;
        btnupdate.Enabled = true;
        btndelete.Enabled = true;
        btnsave.Enabled = false;
        btnsubmit.Enabled = false;
        btncancel.Enabled = true;

        txtque.Enabled = true;
        txtop1.Enabled = true;
        txtop2.Enabled = true;
        txtop3.Enabled = true;
        txtop4.Enabled = true;
        txtcorrectans.Enabled = true;

    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        int drpvac_id = int.Parse(drpvacancyid.SelectedValue.ToString());
        int que_no = int.Parse(txtquenum.Text);
        int t_no = int.Parse(HiddenField1.Value.ToString());
        emp_test.update_test(t_no,drpvac_id, que_no, cmp_code, txtque.Text, txtop1.Text, txtop2.Text, txtop3.Text, txtop4.Text, txtcorrectans.Text);
        Response.Redirect("Emp_Quetionmaster.aspx");
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        cmp_code = int.Parse(Session["cmp_code"].ToString());
        int drpvac_id = int.Parse(drpvacancyid.SelectedValue.ToString());
        int que_no = int.Parse(txtquenum.Text);
        int t_no = int.Parse(HiddenField1.Value.ToString());
        emp_test.delete_test(t_no);
        Response.Redirect("Emp_Quetionmaster.aspx");
    }
}