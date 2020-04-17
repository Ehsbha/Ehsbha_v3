using System;
using System.Data.SqlClient;

namespace Ehsbha_SP
{
    public partial class home : System.Web.UI.Page
    {
        public static DateTime firstDate;
        public static DateTime lastDate;
        public static string countDown;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                try
                {
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                    conn.Open();
                    String name = "select facilityName from users where userId='" + Session["User"].ToString() + "'" ;
                    SqlCommand com = new SqlCommand(name, conn);
                    fName.Text ="Facility Name: " + Convert.ToString(com.ExecuteScalar());
                    String date = "select taxPeriod from users where userId='" + Session["User"].ToString() + "'";
                    com = new SqlCommand(date, conn);
                    string period = Convert.ToString(com.ExecuteScalar());

                    conn.Close();

                    if (firstDate == null || DateTime.Now.Date > (lastDate))
                    {
                        firstDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
                        if (object.Equals(period, "Monthly"))
                        {
                            lastDate = firstDate.AddMonths(1).AddDays(-1);
                        }
                        else
                        {
                            lastDate = firstDate.AddMonths(3).AddDays(-1);
                        }
                    }

                    TimeSpan t = lastDate - DateTime.Now;
                    countDown = "The remining time for VAT return form: "+string.Format("{0} Days, {1} Hours ", (t.Days + 1), (t.Hours + 1));
                    timer.Text = countDown;
                }
                catch (Exception ex)
                {
                    Response.Write("Erroe: "+ ex);
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void setting_Click(object sender, EventArgs e)
        {
            Response.Redirect("setting.aspx");
        }

        protected void langueg_Click(object sender, EventArgs e)
        {
            Response.Redirect("homeArabic.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("startPage.aspx");
        }

        protected void homePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void addInvoicePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("addInvoice.aspx");
        }

        protected void formPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("form.aspx");
        }

        protected void summaryPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("summary.aspx");
        }

        protected void contactPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
    }
}