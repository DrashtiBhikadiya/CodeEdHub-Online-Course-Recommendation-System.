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
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            ContactWebsite();
        }
        void ContactWebsite()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Client(ClientName,ClientMail,ClientNumber,ClientMsgs) values(@ClientName,@ClientMail,@ClientNumber,@ClientMsgs)", conn);
                cmd.Parameters.AddWithValue("@ClientName", txtClntNm.Text.Trim());
                cmd.Parameters.AddWithValue("@ClientMail", txtClntMail.Text.Trim());
                cmd.Parameters.AddWithValue("@ClientNumber", txtClntNmbr.Text.Trim());
                cmd.Parameters.AddWithValue("@ClientMsgs", txtClntMsg.Text.Trim());

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Message send successfully');</script>");
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }
    }
}