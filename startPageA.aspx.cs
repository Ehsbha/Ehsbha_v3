using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ehsbha_SP
{
    public partial class startPageA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void langueg_Click(object sender, EventArgs e)
        {
            Response.Redirect("startPage.aspx");
        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginArabic.aspx");
        }
    }
}