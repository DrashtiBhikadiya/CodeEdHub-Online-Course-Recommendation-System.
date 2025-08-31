using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void EditCourse_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            txtImgID.Visible = true;
            GoImgId.Visible = true;
            Label2.Visible = true;
            FileUpload1.Visible = true;
            Label3.Visible = true;
            txtImgLink.Visible = true;
            Label4.Visible = true;
            txtTitle.Visible = true;
            InsertImage.Visible = true;
            UpdateImage.Visible = true;
            DeleteImage.Visible = true;
        }

        protected void GoImgId_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True"))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT CourseImage FROM Courses WHERE CourseId = @CourseId", conn);
                    cmd.Parameters.AddWithValue("@CourseId", txtImgID.Text.Trim());
                    byte[] pic = (byte[])cmd.ExecuteScalar();

                    Image1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(pic);

                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void InsertImage_Click(object sender, EventArgs e)
        {
            if (IsIdPresent())
            {
                // ID is already present, display message
                Response.Write("<script>alert('ID already exists, please choose a different ID.')</script>");
                return;
            }
            else
            {
                if (!FileUpload1.HasFiles)
                {
                    Response.Write("<script>alert('Please Select Image to Insert')</script>");

                }
                else
                {
                    int length = FileUpload1.PostedFile.ContentLength;
                    byte[] pic = new byte[length];

                    FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
                    try
                    {
                        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True");
                        if (conn.State == ConnectionState.Closed)
                        {
                            conn.Open();
                        }

                        SqlCommand cmd = new SqlCommand("insert into Courses(CourseId,CourseImage,CourseLink,Title) values(@CourseId,@CourseImage,@CourseLink,@Title)", conn);
                        cmd.Parameters.AddWithValue("@CourseId", txtImgID.Text.Trim());
                        cmd.Parameters.AddWithValue("@CourseImage", pic);
                        cmd.Parameters.AddWithValue("@CourseLink", txtImgLink.Text.Trim());
                        cmd.Parameters.AddWithValue("@Title", txtTitle.Text.Trim());
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Response.Write("<script>alert('Image Inserted');</script>");
                        ClearForm();

                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "')</script>");

                    }
                }
            }
        }

        protected void UpdateImage_Click(object sender, EventArgs e)
        {
            if (IsIdPresent())
            {

                if (!FileUpload1.HasFile)
                {
                    Response.Write("<script>alert('Please select an image to update.')</script>");
                    return;
                }

                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];

                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                try
                {
                    using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True"))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("UPDATE Courses SET CourseImage = @CourseImage, CourseLink = @CourseLink, Title=@Title WHERE CourseId = @CourseId", conn);
                        cmd.Parameters.AddWithValue("@CourseId", txtImgID.Text.Trim());
                        cmd.Parameters.AddWithValue("@CourseImage", pic);
                        cmd.Parameters.AddWithValue("@CourseLink", txtImgLink.Text.Trim());
                        cmd.Parameters.AddWithValue("@Title", txtTitle.Text.Trim());

                        cmd.ExecuteNonQuery();

                        conn.Close();

                        Response.Write("<script>alert('Image Updated');</script>");
                        ClearForm();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                // ID is already present, display message
                Response.Write("<script>alert('ID already exists, please choose a different ID.')</script>");
                return;
            }
        }

        protected void DeleteImage_Click(object sender, EventArgs e)
        {
            if (IsIdPresent())
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject_CodeEdHub\\FinalProject_CodeEdHub\\App_Data\\CodeEdHub_Db.mdf;Integrated Security=True"))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand("DELETE FROM MachineLearning WHERE MCourseId = @MCourseId", conn);
                        cmd.Parameters.AddWithValue("@MCourseId", txtImgID.Text.Trim());
                        int rowsAffected = cmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Image deleted successfully
                            Response.Write("<script>alert('Image Deleted');</script>");
                            ClearForm();
                        }
                        else
                        {
                            // Image with provided ID not found
                            Response.Write("<script>alert('Image with provided ID not found');</script>");
                        }

                        conn.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else
            {
                // ID is already present, display message
                Response.Write("<script>alert('ID already exists, please choose a different ID.')</script>");
                return;
            }
        }

        void ClearForm()
        {
            txtImgID.Text = " ";
            txtImgLink.Text = " ";
            FileUpload1.Controls.Clear();
            FileUpload1.Attributes.Clear();
            Image1.ImageUrl = " ";
        }

        bool IsIdPresent()
        {
            bool isPresent = false;

            try
            {
                using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\HP\\source\\repos\\FinalProject\\FinalProject\\App_Data\\CodeEdHub.mdf;Integrated Security=True"))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Courses WHERE CourseId = @CourseId", conn);
                    cmd.Parameters.AddWithValue("@CourseId", txtImgID.Text.Trim());
                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        // ID is present
                        isPresent = true;
                    }

                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

            return isPresent;
        }
    }
}