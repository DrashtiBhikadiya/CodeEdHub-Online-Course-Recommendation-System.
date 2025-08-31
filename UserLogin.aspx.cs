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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginUser_Click(object sender, EventArgs e)
        {
            Login();
        }
        void Login()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Register where Username='" + lgnusrnm.Text.Trim() + "' AND Password='" + lgnpsswrd.Text.Trim() + "'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful')</script>");
                        Session["username"] = dr.GetValue(1).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("UserDashBoard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }
    }
}