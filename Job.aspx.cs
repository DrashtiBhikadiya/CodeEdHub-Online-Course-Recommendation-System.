using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void JobInsert_Click(object sender, EventArgs e)
        {
            if (CheckJobId())
            {
                Response.Write("<script>alert('Job ID already exists');</script>");
            }
            else
            {
                InsertJob();
            }
        }

        protected void JobUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void JobDelete_Click(object sender, EventArgs e)
        {

        }

        void ClearForm()
        {
            txtJobSal.Text = " ";
            txtJobID.Text = " ";
            txtJobScope.Text = " ";
            txtJobDes.Text = " ";
            txtJobTitle.Text = " ";

        }
        void InsertJob()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Job(JobId,Title,Salary,Scope,Description) values(@JobId,@Title,@Salary,@Scope,@Description)", conn);
                cmd.Parameters.AddWithValue("@JobId", txtJobID.Text.Trim());
                cmd.Parameters.AddWithValue("@Title", txtJobTitle.Text.Trim());
                cmd.Parameters.AddWithValue("@Salary", txtJobSal.Text.Trim());
                cmd.Parameters.AddWithValue("@Scope", txtJobScope.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", txtJobDes.Text.Trim());



                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Project Title for C Inserted');</script>");
                ClearForm();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }

        bool CheckJobId()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Job where JobId='" + txtJobID.Text.Trim() + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }
    }
}