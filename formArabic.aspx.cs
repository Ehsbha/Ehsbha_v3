﻿using System;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace Ehsbha_SP
{
    public partial class formArabic : System.Web.UI.Page
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
                    TimeSpan t = home.lastDate - DateTime.Now;
                    home.countDown = " الوقت المتبقي لحساب الاقرار الضريبي :" + string.Format("{0} ايام , {1} ساعات ", (t.Days + 1), (t.Hours + 1));
                    timer.Text = home.countDown;
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
            Response.Redirect("form.aspx");
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

        protected void preperVAT_Click(object sender, EventArgs e)
        {
            double corections = 0.0;
            DialogResult correctionsQ = MessageBox.Show("هل لديك تصحيحات من فترات سابقة؟  ", "تصحيحات", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if (correctionsQ == DialogResult.Yes)
            {
                string result = " ";
                SetFocus(result = Interaction.InputBox("الرجاء ادخال قيمة التصحيحات (بين -5000 و 5000", "تصحيحات", "0.00"));
                if (Convert.ToDouble(result) >= -5000 || Convert.ToDouble(result) <= 5000)
                {
                    corections = Convert.ToDouble(result);
                }
            }


            try
            {
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\ehsbhaWebApp\Ehsbha_SP\Ehsbha_SP\App_Data\ehsbhaDB.mdf;Integrated Security=True");
                conn.Open();
                String saleAmountFor5 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                SqlCommand com = new SqlCommand(saleAmountFor5, conn);
                double saleAmount5 = Convert.ToDouble(com.ExecuteScalar());
                sAmount5.Text = Convert.ToString(saleAmount5);

                String saleAdjFor5 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAdjFor5, conn);
                double saleAdj5 = Convert.ToDouble(com.ExecuteScalar());
                sAdj5.Text = Convert.ToString(saleAdj5);
                double sale5 = (saleAmount5 - saleAdj5) * 0.05;
                s5.Text = sale5.ToString();

                String saleAmountForCitizens = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Citizens)' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAmountForCitizens, conn);
                double saleAmountCitizens = Convert.ToDouble(com.ExecuteScalar());
                sAmountCitizens.Text = Convert.ToString(saleAmountCitizens);

                String saleAdjForCitizens = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Citizens)' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAdjForCitizens, conn);
                double saleAdjCitizens = Convert.ToDouble(com.ExecuteScalar());
                sAdjCitizens.Text = Convert.ToString(saleAdjCitizens);

                String saleAmountFor0 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (0)' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAmountFor0, conn);
                double saleAmount0 = Convert.ToDouble(com.ExecuteScalar());
                sAmount0.Text = Convert.ToString(saleAmount0);

                String saleAdjFor0 = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (0)' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAdjFor0, conn);
                double saleAdj0 = Convert.ToDouble(com.ExecuteScalar());
                sAdj0.Text = Convert.ToString(saleAdj0);

                String saleAmountForExports = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Exports)' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAmountForExports, conn);
                double saleAmountExports = Convert.ToDouble(com.ExecuteScalar());
                sAmountExport.Text = Convert.ToString(saleAmountExports);

                String saleAdjForExports = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='0% (Exports)' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAdjForExports, conn);
                double saleAdjExports = Convert.ToDouble(com.ExecuteScalar());
                sAdjExports.Text = Convert.ToString(saleAdjExports);

                String saleAmountForExempt = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAmountForExempt, conn);
                double saleAmountExempt = Convert.ToDouble(com.ExecuteScalar());
                sAmountExempt.Text = Convert.ToString(saleAmountExempt);

                String saleAdjForExempt = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleAdjForExempt, conn);
                double saleAdjExempt = Convert.ToDouble(com.ExecuteScalar());
                sAdjExempt.Text = Convert.ToString(saleAdjExempt);

                String saleTotalAmount = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleTotalAmount, conn);
                double saletotalAm = Convert.ToDouble(com.ExecuteScalar());
                sTotalAmount.Text = Convert.ToString(saletotalAm);

                String saleTotalAdj = "select coalesce(SUM(price),0) from sale where userId='" + Session["User"].ToString() + "' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(saleTotalAdj, conn);
                double saletotalAd = Convert.ToDouble(com.ExecuteScalar());
                sTotalAdj.Text = Convert.ToString(saletotalAd);

                double sales = sale5;
                totalSale.Text = sales.ToString();



                String purchaseAmountFor5 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAmountFor5, conn);
                double purchaseAmount5 = Convert.ToDouble(com.ExecuteScalar());
                pAmount5.Text = Convert.ToString(purchaseAmount5);

                String purchaseAdjFor5 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='5%' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAdjFor5, conn);
                double purchaseAdj5 = Convert.ToDouble(com.ExecuteScalar());
                pAdj5.Text = Convert.ToString(purchaseAdj5);

                double purchase5 = (purchaseAmount5 - purchaseAdj5) * 0.05;
                p5.Text = purchase5.ToString();

                String purchaseAmountForImports = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0% (Imports)' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAmountForImports, conn);
                double purchaseAmountImports = Convert.ToDouble(com.ExecuteScalar());
                pAmountImports.Text = Convert.ToString(purchaseAmountImports);

                String purchaseAdjForImports = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0% (Imports)' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAdjForImports, conn);
                double purchaseAdjImports = Convert.ToDouble(com.ExecuteScalar());
                pAdjImports.Text = Convert.ToString(purchaseAdjImports);

                double purchaseImports = (purchaseAmountImports - purchaseAdjImports) * 0.05;
                pImports.Text = purchaseImports.ToString();

                String purchaseAmountForRCM = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='RCM' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAmountForRCM, conn);
                double purchaseAmountRCM = Convert.ToDouble(com.ExecuteScalar());
                pAmountRCM.Text = Convert.ToString(purchaseAmountRCM);

                String purchaseAdjForRCM = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='RCM' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAdjForRCM, conn);
                double purchaseAdjRCM = Convert.ToDouble(com.ExecuteScalar());
                pAdjRCM.Text = Convert.ToString(purchaseAdjRCM);

                double purchaseRCM = (purchaseAdjRCM * -0.05);
                pRCM.Text = purchaseRCM.ToString();

                String purchaseAmountFor0 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0%' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAmountFor0, conn);
                double purchaseAmount0 = Convert.ToDouble(com.ExecuteScalar());
                pAmount0.Text = Convert.ToString(purchaseAmount0);

                String purchaseAdjFor0 = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='0%' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAdjFor0, conn);
                double purchaseAdj0 = Convert.ToDouble(com.ExecuteScalar());
                pAdj0.Text = Convert.ToString(purchaseAdj0);

                String purchaseAmountForExempt = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'no' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAmountForExempt, conn);
                double purchaseAmountExempt = Convert.ToDouble(com.ExecuteScalar());
                pAmountExempt.Text = Convert.ToString(purchaseAmountExempt);

                String purchaseAdjForExempt = "select coalesce(SUM(price),0) from purchase where userId='" + Session["User"].ToString() + "' AND classification='Exempt' AND adjasment= 'yes' AND date BETWEEN '" + home.firstDate + "' AND '" + home.lastDate + "'";
                com = new SqlCommand(purchaseAdjForExempt, conn);
                double purchaseAdjExempt = Convert.ToDouble(com.ExecuteScalar());
                pAdjExempt.Text = Convert.ToString(purchaseAdjExempt);



                double purchasetotalAm = (purchaseAmount5 + purchaseAmountImports + purchaseAmountRCM + purchaseAmount0 + purchaseAmountExempt);
                pTotalAmount.Text = Convert.ToString(purchasetotalAm);


                double purchasetotalAd = purchaseAdj5 + purchaseAdjImports + purchaseAdjRCM + purchaseAdj0 + purchaseAdjExempt;
                pTotalAdj.Text = Convert.ToString(purchasetotalAd);

                double purchases = purchase5 + purchaseImports + purchaseRCM;
                totalPurchases.Text = purchases.ToString();

                double totalV = sales - purchases;
                totalVAT.Text = totalV.ToString();

                
                String carryUser = "select coalesce(carry,0) from users where userId='" + Session["User"].ToString() + "'";
                com = new SqlCommand(carryUser, conn);
                double carry = Convert.ToDouble(com.ExecuteScalar());
                if (carry != 0)
                {
                    String updateCarry = "update users set carry= @carry where userId='" + Session["User"].ToString() + "'";
                    com = new SqlCommand(updateCarry, conn);
                    com.Parameters.AddWithValue("@carry", 0.00);
                    com.ExecuteNonQuery();
                }

                correction.Text = corections.ToString();

                double netVal = totalV + corections + carry;
                net.Text = netVal.ToString();
                if (netVal < 0)
                {
                    DialogResult netM = MessageBox.Show("صافي ضريبة القيمة المضافة بالسالب، هل تريد ترحيله لفترة قادمة؟   ", "", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                    if (netM == DialogResult.Yes)
                    {

                        string updateCarry = "update users set carry= @carry where userId='" + Session["User"].ToString() + "'";
                        com = new SqlCommand(updateCarry, conn);
                        com.Parameters.AddWithValue("@carry", netVal);
                        com.ExecuteNonQuery();
                    }
                    carried.Text = carry.ToString();

                }

                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Erroe: " + ex.ToString());
            }
        }
        [Obsolete]
        protected void Save_Click(object sender, EventArgs e)
        {
            using (System.IO.MemoryStream memoryStream = new System.IO.MemoryStream())
            {
                Document document = new Document(PageSize.A4, 10, 10, 10, 10);

                PdfWriter writer = PdfWriter.GetInstance(document, memoryStream);
                document.Open();

                String logo = "pic/logo_back.png";
                iTextSharp.text.Image img = iTextSharp.text.Image.GetInstance(logo);
                img.Alignment = Element.ALIGN_RIGHT;
                img.ScaleToFit(205f, 205f);
                document.Add(img);
                document.Add(new Paragraph(" "));

                Paragraph title = new Paragraph("نموذج الاقرار الضريبي من الفترة: " + home.firstDate.Date + "الى " + home.lastDate.Date);
                title.Alignment = Element.ALIGN_CENTER;
                document.Add(title);
                document.Add(new Paragraph(" "));
                document.Add(new Paragraph(" "));
                document.Add(new Paragraph(" "));

                PdfPTable table = new PdfPTable(5);


                //set width of the table
                table.TotalWidth = (float)((PageSize.A4.Width / 2) * 1.7);
                table.LockedWidth = true;
                //set table alignment
                table.HorizontalAlignment = Element.ALIGN_CENTER;
                table.RunDirection = PdfWriter.RUN_DIRECTION_RTL;

                //create a cell objects and set their properties
                PdfPCell cell1 = new PdfPCell(new Phrase(" "));
                cell1.HorizontalAlignment = Element.ALIGN_CENTER;
                cell1.BackgroundColor = BaseColor.LIGHT_GRAY;


                PdfPCell amount = new PdfPCell(new Phrase("المبلغ (ريال)"));
                amount.HorizontalAlignment = Element.ALIGN_CENTER;
                amount.BackgroundColor = BaseColor.LIGHT_GRAY;
                amount.Padding = 5;
                amount.HorizontalAlignment = Element.ALIGN_CENTER;

                PdfPCell adjusment = new PdfPCell(new Phrase("مبلغ التعديل (ريال)"));
                adjusment.HorizontalAlignment = Element.ALIGN_CENTER;
                adjusment.BackgroundColor = BaseColor.LIGHT_GRAY;
                adjusment.Padding = 5;
                adjusment.HorizontalAlignment = Element.ALIGN_CENTER;

                PdfPCell vat = new PdfPCell(new Phrase("مبلغ ضريبة القيمة المضافة (ريال)"));
                vat.HorizontalAlignment = Element.ALIGN_CENTER;
                vat.BackgroundColor = BaseColor.LIGHT_GRAY;
                vat.Padding = 5;
                vat.HorizontalAlignment = Element.ALIGN_CENTER;


                //add cells to the tables

                table.AddCell(cell1);
                table.AddCell(cell1);
                table.AddCell(amount);
                table.AddCell(adjusment);
                table.AddCell(vat);

                PdfPCell sales = new PdfPCell(new Phrase("ضريبة القيمة المضافة على المبيعات"));
                sales.HorizontalAlignment = Element.ALIGN_CENTER;
                sales.BackgroundColor = BaseColor.LIGHT_GRAY;
                sales.Rowspan = 6;
                sales.Rotation = 90;
                table.AddCell(sales);

                cell1 = new PdfPCell(new Phrase("1- المبيعات الخاضعة للنسبة الاساسية"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(sAmount5.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(sAdj5.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(s5.Text));
                table.AddCell(vat);

                cell1 = new PdfPCell(new Phrase("2- المبيعات للمواطنين( الخدمات الصحية الخاصة/التعليم الاهلي الخاص)"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(sAmountCitizens.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(sAdjCitizens.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(" "));
                table.AddCell("");

                cell1 = new PdfPCell(new Phrase("3- المبيعات المحلية الخاضعة للنسبة الصفرية"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(sAmount0.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(sAdj0.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(" "));
                table.AddCell("");

                cell1 = new PdfPCell(new Phrase("4- الصادرات"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(sAmountExport.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(sAdjExports.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(" "));
                table.AddCell("");

                cell1 = new PdfPCell(new Phrase("5- المبيعات المعفاه"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(sAmountExempt.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(sAdjExempt.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(" "));
                table.AddCell("");

                cell1 = new PdfPCell(new Phrase("6- اجمالي المبيعات"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(sTotalAmount.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(sTotalAdj.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(totalSale.Text));
                table.AddCell(vat);


                ////// purchase 
                
                PdfPCell purchases = new PdfPCell(new Phrase("ضريبة القيمة المضافة على المشتريات"));
                purchases.HorizontalAlignment = Element.ALIGN_CENTER;
                purchases.BackgroundColor = BaseColor.LIGHT_GRAY;
                purchases.Rowspan = 6;
                purchases.Rotation = 90;

                table.AddCell(purchases);


                cell1 = new PdfPCell(new Phrase("7- المشتريات الخاضعة للنسبة الاساسية"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(pAmount5.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(pAdj5.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(p5.Text));
                table.AddCell(vat);

                cell1 = new PdfPCell(new Phrase("8- الاستيرادات الخاضعة لضريبة القيمة المضافة بالنسبة الاساسية والتي تدفع في الجمارك"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(pAmountImports.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(pAdjImports.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(pImports.Text));
                table.AddCell(vat);

                cell1 = new PdfPCell(new Phrase("9- الاستيرادات الخاضعة لضريبة القيمة المضافة التي تطبق عليها الية الاحتساب العكسي"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(pAmountRCM.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(pAdjRCM.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(pRCM.Text));
                table.AddCell(vat);

                cell1 = new PdfPCell(new Phrase("10- المشتريات الخاضعة للنسبة الصفرية"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(pAmount0.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(pAmount0.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(" "));
                table.AddCell("");

                cell1 = new PdfPCell(new Phrase("11- المشتريات المعفاه"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(pAmountExempt.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(pAdjExempt.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(" "));
                table.AddCell(vat);

                cell1 = new PdfPCell(new Phrase("12- اجمالي المشتريات"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(pTotalAmount.Text));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(pTotalAdj.Text));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(totalPurchases.Text));
                table.AddCell(vat);
                //

                table.AddCell("");
                cell1 = new PdfPCell(new Phrase("13- اجمالي ضريبة القيمة المضافة المستحقه عن الفترة الضريبية الحالية"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(""));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(""));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(totalVAT.Text));
                table.AddCell(vat);

                table.AddCell("");
                cell1 = new PdfPCell(new Phrase("14- تصحيحات من الفترات السابقة (بين +-5000 ريال)"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(""));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(""));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(correction.Text));
                table.AddCell(vat);

                table.AddCell("");
                cell1 = new PdfPCell(new Phrase("15- ضريبة القيمة المضافة التي تم ترحيلها من الفترة/الفترات السابقة"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(""));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(""));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(carried.Text));
                table.AddCell(vat);

                table.AddCell("");
                cell1 = new PdfPCell(new Phrase("صافي الضريبة المستحقة"));
                table.AddCell(cell1);
                amount = new PdfPCell(new Phrase(""));
                table.AddCell(amount);
                adjusment = new PdfPCell(new Phrase(""));
                table.AddCell(adjusment);
                vat = new PdfPCell(new Phrase(net.Text));
                table.AddCell(vat);


                document.Add(table);
                document.Close();

                byte[] bytes = memoryStream.ToArray();

                memoryStream.Close();
                Response.Clear();
                Response.ContentType = "application/pdf";

                Response.AddHeader("Content-Disposition", "attachment; filename=" + "من: " + home.firstDate.GetDateTimeFormats('d')[0] + " الى " + home.lastDate.GetDateTimeFormats('d')[0]+".pdf");
                Response.Buffer = true;
                Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
                Response.BinaryWrite(bytes);
                Response.End();
                Response.Close();

            }
        }
       
        }
    }

 