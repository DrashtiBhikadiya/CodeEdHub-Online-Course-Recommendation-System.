using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindImageRepeater();
            }
        }
        void BindImageRepeater()
        {
            try
            {
                using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True"))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT  CourseImage,CourseLink,CourseTitle  FROM Courses", conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    // Bind the repeater with the retrieved image data
                    imageRepeater.DataSource = reader;
                    imageRepeater.DataBind();

                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}