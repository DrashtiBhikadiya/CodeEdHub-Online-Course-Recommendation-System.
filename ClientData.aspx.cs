using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void client_Click(object sender, EventArgs e)
        {
            GridView2.Visible = false;
            GridView1.Visible = true;
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
            GridView1.Visible = false;
        }
    }
}