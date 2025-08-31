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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserRegister_Click(object sender, EventArgs e)
        {
            if (checkUserExist())
            {
                Response.Write("<script>alert('Username already exists ');</script>");
            }
            else
            {
                Register();
            }
        }

        bool checkUserExist()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand sqlCommand = new SqlCommand("SELECT * Register where Username=' " + usrnm.Text.Trim() + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 1)
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

                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void Register()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Register(Username, Mail, Password, ConfirmPassword) values(@Username, @Mail, @Password, @ConfirmPassword)", conn);
                cmd.Parameters.AddWithValue("@Username", usrnm.Text.Trim());
                cmd.Parameters.AddWithValue("@Mail", mail.Text.Trim());
                cmd.Parameters.AddWithValue("@Password ", psswrd.Text.Trim());
                cmd.Parameters.AddWithValue("@ConfirmPassword", Cnfrmpswrd.Text.Trim());
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Wuhh...You Get Registered.');</script>");
                ClearForm();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void ClearForm()
        {
            usrnm.Text = " ";
            mail.Text = " ";
            psswrd.Text = " ";
            Cnfrmpswrd.Text = " ";
        }
    }
}