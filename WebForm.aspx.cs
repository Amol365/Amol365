using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Test1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-QIB776N;Initial Catalog=programmingDB;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand comm = new SqlCommand("Insert into AspCS values('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');", true);
            LoadRecord();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from AspCS", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand comm = new SqlCommand("Update AspCS set address='" + DropDownList1.SelectedItem.Text  + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Updated');", true);
            LoadRecord();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Delete AspCS where Name ='"+ TextBox1.Text + "'", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Deleted');", true);
            LoadRecord();
        }

        protected void Button_4Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("select * from AspCS where Name='"+TextBox1.Text+"'",con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button_5Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("select * from AspCS where Name = '"+TextBox1.Text+"'",con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                
                DropDownList1.SelectedItem.Text = r.GetValue(1).ToString();
            }
        }
    }

}