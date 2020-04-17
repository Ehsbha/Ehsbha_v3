using System;
using System.Data.SqlClient;

namespace Ehsbha_SP
{
    public partial class homeArabic : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                try
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                    conn.Open();
                    String name = "select facilityName from users where userId='" + Session["User"].ToString() + "'";
                    SqlCommand com = new SqlCommand(name, conn);
                    fName.Text = "اسم المنشأة: " + Convert.ToString(com.ExecuteScalar());
                    String date = "select taxPeriod from users where userId='" + Session["User"].ToString() + "'";
                    com = new SqlCommand(date, conn);
                    string period = Convert.ToString(com.ExecuteScalar());

                    conn.Close();

                    if (home.firstDate == null || DateTime.Now.Date > (home.lastDate))
                    {
                        home.firstDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
                        if (object.Equals(period, "Monthly"))
                        {
                            home.lastDate = home.firstDate.AddMonths(1).AddDays(-1);
                        }
                        else
                        {
                            home.lastDate = home.firstDate.AddMonths(3).AddDays(-1);
                        }
                    }

                    TimeSpan t = home.lastDate - DateTime.Now;
                    string countDown = " الوقت المتبقي لحساب الاقرار الضريبي :"+string.Format("{0} ايام , {1} ساعات ", (t.Days + 1), (t.Hours + 1));
                    timer.Text = countDown;
                }
                catch (Exception ex)
                {
                    Response.Write("Erroe: " + ex);
                }
            }
            else
            {
                Response.Redirect("loginArabic.aspx");
            }
        }

        protected void setting_Click(object sender, EventArgs e)
        {
            Response.Redirect("settingArabic.aspx");
        }

        protected void langueg_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("startPageA.aspx");
        }

        protected void homePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeArabic.aspx");
        }

        protected void addInvoicePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("addInvoiceArabic.aspx");
        }

        protected void formPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("formArabic.aspx");
        }

        protected void summaryPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("summaryArabic.aspx");
        }

        protected void contactPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactArabic.aspx");
        }
    }
}
  
