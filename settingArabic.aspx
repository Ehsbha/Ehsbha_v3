<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="settingArabic.aspx.cs" Inherits="Ehsbha_SP.settingArabic" UnobtrusiveValidationMode="None" %>



<!DOCTYPE html>

<html dir="rtl" lang="ar">

<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>الاعدادات</title>
  

    <style>
          * {
            margin: 0;
            padding: 0;
            font-family: 'Times New Roman';
            font-size: 20px;
           
        }
        /* general ------------------------------------------- */

        .logo_hover:hover {
            transform: scale(1.2);
            transition: all 0.3s ease;
        }


        /* section ------------------------------------------- */


        .section_header {
            width: 100%;
            height: 280px;
            display: inline-block;
            background-color: #f5f5f5;
            align-items: flex-start;
        }


        .body_section {
            padding-bottom: 30px;
            width: 1000px;
            height: 330px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            margin-top: -14px;
            background-color: whitesmoke;
            box-shadow: 0px 0px 20px 5px #bfbfbf;
            flex-grow: 0;
        }
        /*icon-bar-------------------------------------------*/


        .icon-bar {
            position: fixed;
            top: 80%;
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
            left: 10px;
        }

            .icon-bar a {
                display: block;
                text-align: center;
                padding: 5px 8px 5px 8px;
                transition: all 0.3s ease;
                color: white;
                font-family: 'Times New Roman';
                border-radius: 20px;
                color: #02614D;
                box-shadow: 3px 5px 15px grey;
                margin: 10px;
                font-size: 40px;
            }

                .icon-bar a:hover {
                    color: white;
                    background-color: #CE9C2B;
                    transition: all 0.3s ease;
                    transform: scale(1.2);
                }

        /* div ------------------------------------------- */


        .div_header_img {
            background-image: url('pic/header1_img.png');
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            width: 100%;
            height: 170px;
        }

        /* meneu ------------------------------------------- */

        .div_meneu {
            position: -webkit-sticky;
            position: sticky;
            background-color: rgba(2, 67, 53, 0.90);
            top: 3px;
            padding: 12px 20px;
            -webkit-box-pack: start;
            justify-content: flex-start;
            border-radius: 100px 100px 0 0;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.82);
            text-align: center;
            margin: -65px auto 20px auto;
            width: 800px;
            height: 38px;
            display: flex;
            align-items: center;
            z-index: 1;
        }

            .menueButton{
                background-color: #CE9C2B;
                color: white;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 18px;
                transition-duration: 0.4s;
                cursor: pointer;
                line-height: 30px;
                font-family: 'Times New Roman';
                width: 33%;
                position: relative;
                margin-left: 4px;
                margin-right: 4px;
            }


                .menueButton:hover {
                    background-color: rgba(2, 67, 53, 0.90);
                    color: white;
                    border: 3px solid #CE9C2B;
                    transition: all 0.3s ease;
                    transform: scale(1.2);
                }



        /* icon ------------------------------------------- */

        .container {
            position: center;
            width: 200px;
            max-width: 200px;
            display: inline-block;
            background-color: rgba(2, 67, 53, 0.90);
            margin-left: 10px;
            margin-right: 10px;
            margin-top: 50px;
            border-radius: 50px 50px 20px 20px;
        }

        .image {
            width: 200px;
            height: 220px;
        }

        .overlay {
            position: center;
            display: block;
            bottom: 0;
            background: rgba(206, 156, 43, 0.90);
            color: #f1f1f1;
            width: 100%;
            transition: .5s ease;
            opacity: 0;
            color: white;
            font-size: 15px;
            font-family: 'Times New Roman';
            padding: 10px;
            text-align: center;
            box-sizing: border-box;
            margin-top: -20px;
            border-radius: 0 0 20px 20px;
        }

        .container:hover .overlay {
            opacity: 1;
        }

        .div_about {
            text-align: center;
            height: auto;
            display: block;
            width: 90%;
            color: black;
            padding: 6px;
            border: double;
            margin-left: auto;
            margin-right: auto;
            top: 10%;
            position: relative;
        }

        .logout {
            background-color: #CE9C2B;
            color: white;
            font-family: 'Times New Roman';
            margin-bottom: 10px;
            position: absolute;
            display: inline-block;
        }


            .logout:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.2);
            }
        .auto-style11 {
            width: 75%;
            height: 1101px;
            background: #fff;
            padding: 5px;
            box-shadow: 0 0 15px 5px #273746;
            border-radius: 18px;
            overflow: hidden;
            margin-bottom: 0%;
            align-items: center;
            align-self: center;
            margin-left: auto;
            margin-right: auto;
            margin-top: auto;
            text-align: center;
        }

        .edit {
            background-color: #02614D;
            border-color: #CE9C2B;
            color: white;
            border-radius: 40px;
            padding: 2px;
            float: unset;
            display: inline;
        }

        .GridView1 {
            align-content: center;
            align-items: center;
            align-self: center;
            text-align: center;
        }

            .GridView1 td {
                display: block;
                padding: unset;
                align-self: center;
            }

            .GridView1 caption {
                font-size: xx-large;
                font-style: oblique;
            }

            .GridView1{
                position:center;
            }
        .GridView1 caption {
            font-size: xx-large;
            font-style: oblique;
        }
        .auto-style12 {
            position: relative;
            left: 30%;
            right: 30%;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            text-align: center;
        }
        </style>
</head>
<body style="        background-color: rgba(215,233, 216,0.5);
        flex-grow: 0;">
   <form runat="server">

         <div class="icon-bar">

       <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope" hspace="20"></i></a>
        <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
    </div>
 
    <div style="background-color: rgba(2, 67, 53, 0.90);color:white;font-family:'Times New Roman';font-size:15px;padding:5px;direction:rtl">

        <asp:Label ID="fName" runat="server" Style="display: inline-block"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
        
        <asp:Label ID="timer" Style="display: inline-block; color: #e1c37f" runat="server"></asp:Label>

        <asp:Button runAt="server" type="button" class="logout" style=" left: 155px;" text="إعدادات" OnClick="setting_Click"/>
        <asp:Button runAt="server" type="button" class="logout" style=" left: 70px;" Text="English" OnClick="langueg_Click"/>
        <asp:Button runAt="server" type="button" class="logout" style=" left: 10px;" Text="خروج" OnClick="logout_Click"/>

    </div>
    <div class="div_header_img">

        <img src="pic/logo_back.png" alt="logo" style="width: 200px; height:100px; display:block; position:absolute; margin-top:25px; right:20px;" margin-right:"90px" class="logo_hover" />
    </div>
    <div class="div_meneu" id="Header">

    <asp:Button ID="homePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="الرئيسية" OnClick="homePage_Click" />
            <asp:Button ID="addInvoicePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="إضافة فواتير" OnClick="addInvoicePage_Click" />
            <asp:Button ID="formPage" class="menueButton" runat="server" Style="border-radius: 13px;" Text="نموذج الإقرار الضريبي" OnClick="formPage_Click" />
            <asp:Button ID="summaryPage" class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="الملخص" OnClick="summaryPage_Click" />
            <asp:Button ID="contactPage" Class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="تواصل معنا" OnClick="contactPage_Click" />
   

            <br />
            <br />
            <br />


        </div>

        <div class="auto-style11" id="myDiv" runat="server">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegesterationConnectionString %>" InsertCommand="INSERT INTO [users] ([userId], [facilityName], [email], [phone], [taxPeriod], [password]) VALUES (@userId, @facilityName, @email, @phone, @taxPeriod, @password)" SelectCommand="SELECT [userId], [facilityName], [email], [phone], [taxPeriod], [password] FROM [users] WHERE ([userId] = @userId)" UpdateCommand="UPDATE [users] SET [facilityName] = @facilityName, [email] = @email, [phone] = @phone, [taxPeriod] = @taxPeriod, [password] = @password WHERE [userId] = @userId">

                <InsertParameters>
                    <asp:Parameter Name="userId" Type="Int32" />
                    <asp:Parameter Name="facilityName" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="taxPeriod" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="userId" SessionField="User" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="facilityName" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="Int32" />
                    <asp:Parameter Name="taxPeriod" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="userId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="1"
                DataKeyNames="userId" DataSourceID="SqlDataSource2" Caption="المعلومات" CaptionAlign="Top" CellPadding="4" CssClass="style2" Width="70%" RowStyle-HorizontalAlign="Center" RowStyle-VerticalAlign="Middle" Height="80%" HorizontalAlign="Center" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" OnRowDeleting="deleting" ForeColor="#333333" Style="height: 50%; width: 75%; position: relative; left: 3%; right: 3%;" dir="rtl" >

                <AlternatingRowStyle BackColor="White" />

                <Columns>

                    <asp:TemplateField HeaderText="الرقم الضريبي" SortExpression="userId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("userId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("userId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="اسم المنشأة" SortExpression="facilityName">
                        <EditItemTemplate>
                            <asp:TextBox ID="facilityName" runat="server" Text='<%# Eval("facilityName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="facilityNameL" runat="server" Text='<%# Eval("facilityName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="البريد الاكتروني" SortExpression="email">
                        <EditItemTemplate>
                            <asp:TextBox ID="email" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="emailL" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="رقم الجوال" SortExpression="phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="phone" runat="server" Text='<%# Eval("phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="phoneL" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="نوع الفترات الضريبية" SortExpression="taxPeriod">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="taxPeriod" runat="server" Width="250px" Class="radio" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="7">
                                <asp:ListItem Value="Monthly" Text="تقرير شهري"></asp:ListItem>
                                <asp:ListItem Value="Quarterly" Text="تقرير ربع سنوي"></asp:ListItem>
                            </asp:RadioButtonList>

                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="taxPeriodL" runat="server" Text='<%# Bind("taxPeriod") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="كلمة المرور" SortExpression="password" Visible="False">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("password") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="تحديث" CssClass="edit"></asp:Button>
                            &nbsp;<asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="الغاء" CssClass="edit"></asp:Button>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="تعديل" CssClass="edit"></asp:Button>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <EditRowStyle BackColor="white" />
                <FooterStyle BackColor="White" ForeColor="black" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" CssClass="table" />
                <PagerStyle BackColor="white" ForeColor="black" HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="white" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>


            <div>
                <br />
                <br />
                <div class="auto-style13">
                </div>
                 <br />
                <br />
                <br />
                <br />
                <asp:Button runAt="server" ID="changeClick" OnClick="ChangePassword_ChangedPassword" Class="edit" Text="تغيير كلمة المرور" Visible="true"/> 
                
                <table id="myTable" runat="server" class="auto-style12" visible="false" dir="rtl" align="center">
                    
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">كلمة المرور: </asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password" Width="208px"></asp:TextBox></td>
                        <td class="auto-style17">
                            <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="كلمة المرور مطلوبة" ValidationGroup="ChangePassword" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">كلمة المرور الجديدة: </asp:Label></td>
                        <td class="auto-style15">
                            <asp:TextBox ID="NewPassword" runat="server" TextMode="Password" Width="204px"></asp:TextBox></td>
                        <td class="auto-style17">
                            <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="كلمة المرور الجديدة مطلوبة" ValidationGroup="ChangePassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">تاكيد كلمة المرور: </asp:Label></td>
                        <td class="auto-style15">
                            <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password" Width="204px"></asp:TextBox></td>
                        <td class="auto-style17">
                            <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="تاكيد كلمة المرور مطلوب" ValidationGroup="ChangePassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style14" colspan="3">
                            <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="New Password must match the New Password" ValidationGroup="ChangePassword" ForeColor="Red"></asp:CompareValidator>
                            <br />
                    <asp:Label ID="FailureText" runat="server" EnableViewState="False" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        
                             <td></td>
                        <td class="auto-style15"><asp:Button runAt="server" ID="change" OnClick="change_Click" Class="edit" Text="تغيير كلمة المرور"/> 
                        <asp:Button runAt="server" ID="cancel" OnClick="cancel_Click" Class="edit" Text="الغاء"/> 
                            </td>
                       
                    </tr>
                </table>
                
              <br />  <br /><br /><br />
                &nbsp;&nbsp;
                <asp:Button runAt="server" ID="delete" OnClick="deleting" Class="edit" Text="حذف الحساب" style="padding:10px;" Width="40%" /> 
              
                </div>
        </div>
    </form>
     


</body>
</html>