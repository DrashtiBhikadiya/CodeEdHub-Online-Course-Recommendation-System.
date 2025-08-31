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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Register where Username='" + Session["username"].ToString() + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    ProfileUname.Text = Session["username"].ToString();
                    ProfileUmail.Text = dt.Rows[0][2].ToString();
                    ProfileUoldpswrd.Text = dt.Rows[0][3].ToString();


                }
                else
                {
                    Response.Write("<script>alert('Invalid Title Username ');</script>");
                }


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }

        protected void UpdateUserProfile_Click(object sender, EventArgs e)
        {
            string password = "";
            if (ProfileUnwpswrd.Text.Trim() == "")
            {
                password = ProfileUoldpswrd.Text.Trim();
            }
            else
            {
                password = ProfileUnwpswrd.Text.Trim();
            }

            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE Register SET Mail=@Mail,Password=@Password,ConfirmPassword=@ConfirmPassword WHERE Username='" + ProfileUname.Text.Trim() + "' ", conn);

                cmd.Parameters.AddWithValue("@Mail", ProfileUmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@ConfirmPassword", password);

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Your Updated');</script>");
                ClearForm();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void DeleteUserProfile_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE Register WHERE Username='" + ProfileUname.Text.Trim() + "' ", conn);

                cmd.Parameters.AddWithValue("@Mail", ProfileUmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", ProfileUnwpswrd.Text.Trim());
                cmd.Parameters.AddWithValue("@ConfirmPassword", ProfileUcnfrmpswrd.Text.Trim());

                cmd.ExecuteNonQuery();

                conn.Close();
                Response.Write("<script>alert('Your profile has been deleted');</script>");
                ClearForm();
                Response.Redirect("Default.aspx");

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        void ClearForm()
        {
            ProfileUname.Text = " ";
            ProfileUmail.Text = " ";
            ProfileUoldpswrd.Text = " ";
            ProfileUnwpswrd.Text = " ";
            ProfileUcnfrmpswrd.Text = " ";
        }
    }
}