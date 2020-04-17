using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace Ehsbha_SP
{
    public partial class contact : System.Web.UI.Page
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
                    fName.Text = "Facility Name: " + Convert.ToString(com.ExecuteScalar());
                    String emailQ = "select email from users where userId='" + Session["User"].ToString() + "'";
                    com = new SqlCommand(emailQ, conn);
                    email = Convert.ToString(com.ExecuteScalar());
                    conn.Close();
                    TimeSpan t = home.lastDate - DateTime.Now;
                    String countDown = "The remining time for VAT return form: " + string.Format("{0} Days, {1} Hours ", (t.Days + 1), (t.Hours + 1));
                    timer.Text = countDown;
                }
                catch (Exception ex)
                {
                    Response.Write("Erroe: " + ex);
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
            Response.Redirect("contactArabic.aspx");
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
        protected void contact_Click(object sender, EventArgs e)
        {
            Response.Redirect("contact.aspx");
        }
        protected void sendEmail_Click(object sender, EventArgs e)
        {
            try
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

                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('massage is send sucsessfully');", true);

            }
            catch (Exception ex)
            {
                Response.Write("Error: "+ ex.ToString());
            }
        }
    }
}