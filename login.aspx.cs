using System;
using System.Web.UI;
using System.Data.SqlClient;

namespace Ehsbha_SP
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
                
                try {
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                    conn.Open();
                    string checkuser = "select count(*) from users where userId='" + taxNum.Text + "'";
                    SqlCommand com = new SqlCommand(checkuser, conn);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp == 1)
                    {
                        userE.Text = "Txx Number already exist";
                    }
                    String checkemail = "select count(*) from users where email='" + email.Text + "'";
                    SqlCommand com2 = new SqlCommand(checkemail, conn);
                    int temp2 = Convert.ToInt32(com2.ExecuteScalar().ToString());
                    if (temp2 == 1)
                    {
                        emailE.Text = "Email already exist";
                        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "register()", true);
                    }
                    String checkphone = "select count(*) from users where phone='" + phone.Text + "'";
                    SqlCommand com3 = new SqlCommand(checkphone, conn);
                    int temp3 = Convert.ToInt32(com3.ExecuteScalar().ToString());
                    if (temp3 == 1)
                    {
                        phoneE.Text = "Phone Number already exist";
                        ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "register()", true);
                    }
                    conn.Close();
                } catch (Exception ex) {
                    
                }
            }
        }

        protected void langueg_Click1(object sender, EventArgs e)
        {
            Response.Redirect("loginarabic.aspx");
        }
        
        protected void register_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                conn.Open();
                string insert = "insert into users values(@userId, @facilityName, @email, @phone, @password, @taxPeriod, @carry)";

                SqlCommand com = new SqlCommand(insert, conn);
                com.Parameters.AddWithValue("@userId", taxNum.Text);
                com.Parameters.AddWithValue("@facilityName", facilityName.Text);
                com.Parameters.AddWithValue("@email", email.Text);
                com.Parameters.AddWithValue("@phone", phone.Text);
                com.Parameters.AddWithValue("@password", pass.Text);
                com.Parameters.AddWithValue("@taxPeriod", taxPeriod.SelectedValue);
                com.Parameters.AddWithValue("@carry", 0);

                com.ExecuteNonQuery();
                
                Response.Write("regestration is successful");
                Session["User"] = taxNum.Text;
                
                Response.Redirect("home.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "register()", true);
            }
        }
        protected void login_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                conn.Open();
                string checkuser = "select count(*) from users where userId='" + loginUser.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);

                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    conn.Open();
                    String checkPassword = "select password from users where userId='" + loginUser.Text + "'";
                    SqlCommand passCom = new SqlCommand(checkPassword, conn);
                    String password = passCom.ExecuteScalar().ToString().Replace(" ", "");
                    conn.Close();
                    if (password == loginPass.Text)
                    {
                        Session["User"] = loginUser.Text;
                        Response.Write("password is correct");
                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        invalid.Text = "Wrong password";
                    }
                }
                else
                {
                    invalid.Text = "Wrong tax number";
                }

            }catch(Exception ex)
            {
                ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "login()", true);
            }
        }
    }
}