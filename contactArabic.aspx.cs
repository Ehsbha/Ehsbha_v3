using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;


namespace Ehsbha_SP
{
    public partial class contactArabic : System.Web.UI.Page
    {
        String email = "";
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
                    fName.Text = "اسم المنشأة:  " + Convert.ToString(com.ExecuteScalar());
                    String emailQ = "select email from users where userId='" + Session["User"].ToString() + "'";
                    com = new SqlCommand(emailQ, conn);
                    email = Convert.ToString(com.ExecuteScalar());
                    conn.Close();

                    TimeSpan t = home.lastDate - DateTime.Now;
                    string countDown = " الوقت المتبقي لحساب الاقرار الضريبي :" + string.Format("{0} ايام , {1} ساعات ", (t.Days + 1), (t.Hours + 1));
                    timer.Text = countDown;
                }
                catch (Exception ex)
                {
                    Response.Write("Erroe: " + ex);
                }
            }
            else
            {
                Response.Redirect("loginA.aspx");
            }
        }

        protected void setting_Click(object sender, EventArgs e)
        {
            Response.Redirect("settingArabic.aspx");
        }

        protected void langueg_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("startPageArabic.aspx");
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
        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactArabic.aspx");
        }
        protected void sendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smptClient = new SmtpClient("smtp.gmail.com", 587);
            smptClient.EnableSsl = true;
            smptClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smptClient.UseDefaultCredentials = false;
            smptClient.Credentials = new NetworkCredential("ehsbha.2020@gmail.com", "E7sbhaRNSH");

            MailMessage mailMassage = new MailMessage();
            mailMassage.To.Add("ehsbha.2020@gmail.com");
            mailMassage.From = new MailAddress("ehsbha.2020@gmail.com");
            mailMassage.Subject = "Suggesion or comp" + ": " + title.Text;
            mailMassage.Body = "userEmail: " + email + " " + subject.Text;
            smptClient.Send(mailMassage);
            
            ScriptManager.RegisterStartupScript(this,this.GetType(), "popup", "alert('massage is send sucsessfully');",true);

        }
    }
}
