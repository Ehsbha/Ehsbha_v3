using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.VisualBasic;

namespace Ehsbha_SP
{
    public partial class setting : System.Web.UI.Page
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
                    string names = Convert.ToString(com.ExecuteScalar());
                    fName.Text = "Facility Name: " +names;

                    TimeSpan t = home.lastDate - DateTime.Now;
                    home.countDown = "The remining time for VAT return form: " + string.Format("{0} Days, {1} Hours ", (t.Days + 1), (t.Hours + 1));
                    timer.Text = home.countDown;

                    conn.Close();
                    
                    
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
            Response.Redirect("settingArabic.aspx");
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

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
           GridView1.EditIndex = e.NewEditIndex;
        }
        protected void GridView1_RowUpdating(object sender, EventArgs e)
        {
            Label tax= GridView1.Rows[0].FindControl("taxPeriodL") as Label;
            TextBox facilityName = GridView1.Rows[0].FindControl("facilityName") as TextBox;
            TextBox email = GridView1.Rows[0].FindControl("email") as TextBox;
            TextBox phone = GridView1.Rows[0].FindControl("phone") as TextBox;
            RadioButtonList taxPeriod = GridView1.Rows[0].FindControl("taxPeriod") as RadioButtonList;

            if (taxPeriod.SelectedValue == null)
            {
                taxPeriod.Text = tax.Text;
            }
            SqlDataSource2.UpdateCommand=("Update users set facilityName='" + facilityName.Text  + "', email='"+ email.Text+ "', phone='"+ phone.Text + "', taxPeriod='"+taxPeriod.SelectedValue+"' where userId=" + Session["User"]);
            
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            
        }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
        }

        protected void deleting(object sender, EventArgs e)
        {
            MsgBoxResult correctionsQ = Interaction.MsgBox("Do you sure about deleting your account? ",MsgBoxStyle.YesNo);
            
            if (correctionsQ == MsgBoxResult.Yes )
            {
                
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                conn.Open();
                String deleteS = "delete from sale where userId='" + Session["User"].ToString() + "'";
                SqlCommand com = new SqlCommand(deleteS, conn);
                com.ExecuteNonQuery();
                String deleteP = "delete from purchase where userId='" + Session["User"].ToString() + "'";
                com = new SqlCommand(deleteP, conn);
                com.ExecuteNonQuery();
                String deleteAccount= "DELETE FROM users WHERE userId ='" + Session["User"].ToString() + "'";
                com = new SqlCommand(deleteAccount, conn);
                com.ExecuteNonQuery();
                conn.Close();

                Session["User"] = null;
                Response.Redirect("startPage.aspx");

            }
            else
            {
                Response.Redirect("setting.aspx");
            }
           
        }

        protected void ChangePassword_ChangedPassword(object sender, EventArgs e)
        {
            
            myTable.Visible = true;
            changeClick.Visible = false;
            cancel.Visible = true;
            

        }
        protected void change_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
            conn.Open();
            String check = "select password from users where userId=" + Session["User"].ToString();
            SqlCommand cmd = new SqlCommand(check, conn);
            cmd.ExecuteScalar();

            if (cmd.ExecuteScalar().ToString() == CurrentPassword.Text)
            {
                string str = "update users set password='" + NewPassword.Text + "'where userId=" + Session["User"].ToString();
                cmd = new SqlCommand(str, conn);
                cmd.ExecuteNonQuery();
                FailureText.Text = "Your Password has been changed successfully ";
                myTable.Visible = false;
                changeClick.Visible = false;
                cancel.Visible = false;
                conn.Close();
            }
            else
            {
                FailureText.Text = " Your old Password is incorrect try again... ";
            }
        }


        protected void cancel_Click(object sender, EventArgs e)
        {
            myTable.Visible = false;
            changeClick.Visible = false;
            cancel.Visible = false;
        }

    }
    
}