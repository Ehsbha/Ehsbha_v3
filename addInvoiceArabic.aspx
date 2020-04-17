<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addInvoiceArabic.aspx.cs" Inherits="Ehsbha_SP.addInvoiceArabic" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <title>Ehsebha add invoices page</title>

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

        .menueButton {
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
        /*form===============================================================*/

        * {
            font-family: 'Times New Roman';
        }

        .back {
            height: 100%;
            width: 100%;
            background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(back5.jpg);
            background-position: center;
            background-size: cover;
            position: absolute;
        }


        .form-box {
            width: 580px;
            height: 680px;
            position: relative;
            margin: auto;
            background: #fff;
            padding: 2px;
            box-shadow: 0 0 15px 5px gray;
            border-radius: 18px;
            overflow: hidden;
            color: #02614D;
            padding-bottom: 20px;
            direction: rtl;
        }

        .button-box {
            width: 309px;
            margin: 39px auto;
            position: relative;
            box-shadow: 0 0 15px 15px #FCF3CF;
            border-radius: 30px;
        }

        .toggle-btn {
            padding: 10px 40px;
            cursor: pointer;
            background: transparent;
            border: 0;
            outline: none;
            position: relative;
            color: #02614D;
        }

        #btn {
            top: 0;
            left: 0;
            position: absolute;
            width: 170px;
            height: 100%;
            background: #CE9C2B;
            border-radius: 30px;
            transition: .5s;
            border: groove;
        }

        .input-group {
            top: 188px;
            position: absolute;
            overflow: hidden;
            width: 380px;
            transition: .5s;
            margin-left: 80px;
            color: #02614D;
        }


        .input-field {
            width: 100%;
            padding: 10px 0;
            margin: 5px 0;
            font-size: 15px;
            border-left: 0;
            border-top: 0;
            border-right: 0;
            border-bottom: 1px solid #999;
            outline: none;
            background: transparent;
        }

        .submit-btn {
            width: 60%;
            padding: 10px 30px;
            border: 0;
            outline: none;
            margin: 10px auto;
            border-radius: 30px;
            position: relative;
            margin-right: 120px;
            background-color: #CE9C2B;
            color: white;
            text-align: center;
            box-shadow: 0 0 15px 9px #FCF3CF;
            margin-top: 20px;
            transition-duration: 0.5s;
            cursor: pointer;
        }

            .submit-btn:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.1);
            }

        .chech-box {
            margin: 15px 10px 15px 0;
        }

        .chech-radio {
            margin: 15px 10px 15px 0;
        }

        .pass {
            margin: 30px 10px 30px 0;
            float: right;
            text-decoration: none;
        }

        .chack {
            color: #000000;
            font-size: 15px;
            bottom: 77px;
            position: absolute;
        }

        .p {
            color: #000000;
            font-size: 15px;
            position: static;
        }

        .radiobnt {
            color: #000000;
            font-size: 15px;
        }

        #sale {
            left: 60px;
        }

        #purchase {
            left: 650px;
        }
    </style>



</head>
<body style="background-color: rgba(215,233, 216,0.5); flex-grow: 0;">




    <div class="icon-bar">

        <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope"></i></a>
        <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
    </div>
    <form runat="server">
        <div style="background-color: rgba(2, 67, 53, 0.90); color: white; font-family: 'Times New Roman'; font-size: 15px; padding: 5px; direction: rtl">

            <asp:Label ID="fName" runat="server" Style="display: inline-block" Text=" "></asp:Label>
            <asp:Label ID="Label1" runat="server" Style="display: inline-block" Text=" " />
           &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:Label id="timer" style="display: inline-block; color: #e1c37f" runAt="server"></asp:Label>

        <asp:Button ID="setting" runat="server" type="button" class="logout" Style="left: 155px;" Text="إعدادات" OnClick="setting_Click"></asp:Button>
            <asp:Button ID="langueg" runat="server" type="button" class="logout" Style="left: 70px;" Text="English" OnClick="langueg_Click"></asp:Button>
            <asp:Button ID="logoutb" runat="server" type="button" class="logout" style="left: 10px;" Text="خروج" onclick="logout_Click"/>

        </div>
        <div class="div_header_img">

            <img src="pic/logo_back.png" alt="logo" style="width: 200px; height: 100px; display: block; position: absolute; margin-top: 25px; right: 20px;" class="logo_hover" />
        </div>
        <div class="div_meneu" id="Header">
            <asp:Button ID="homePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="الرئيسية" OnClick="homePage_Click" />
            <asp:Button ID="addInvoicePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="إضافة فواتير" OnClick="addInvoicePage_Click" />
            <asp:Button ID="formPage" class="menueButton" runat="server" Style="border-radius: 13px;" Text="نموذج الإقرار الضريبي " OnClick="formPage_Click" />
            <asp:Button ID="summaryPage" class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="الملخص" OnClick="summaryPage_Click" />
            <asp:Button ID="contactPage" Class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="تواصل معنا" OnClick="contactPage_Click" />

        </div>
         <div class="form-box">
        <div class="button-box">
            <div id="btn"></div>
            <button type="button" class="toggle-btn " onclick="purchase()">مشتريات</button>
            <button type="button" class="toggle-btn" onclick="sale()">مبيعات</button> 
            </div>
        

            <div id="sale" class="input-group">
                <asp:TextBox ID="saleValue" ValidationGroup="saleT" class="input-field" runat="server" placeholder="القيمة" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="saleT" runat="server" ControlToValidate="saleValue" ErrorMessage="You have to enter a value "></asp:RequiredFieldValidator>
                <asp:TextBox ID="saleDate" ValidationGroup="saleT" type="date" class="input-field" runat="server" placeholder="" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="saleT" runat="server" ControlToValidate="saleDate" ErrorMessage="You have to enter a date "></asp:RequiredFieldValidator>

                &nbsp;
                <br />
        <asp:Label runat="server" Text="التصنيف :" ValidationGroup="saleT" />
                <div class="chech-radio">
                    <asp:RadioButtonList ValidationGroup="saleT" ID="saleClassification" runat="server" CssClass="radiobnt">
                        <asp:ListItem Value="5%">٥٪</asp:ListItem>
                        <asp:ListItem Value="0% (Citizens)">٠٪ ( المواطنين )</asp:ListItem>
                        <asp:ListItem Value="0% (0)">٠٪ (٠)</asp:ListItem>
                        <asp:ListItem Value="0% (Exports)">٠٪(   الصادرات )</asp:ListItem>
                        <asp:ListItem Value="Exempt">معفاة </asp:ListItem>
                    </asp:RadioButtonList>
                </div>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ValidationGroup="saleT" runat="server" ID="saleAdjasmentdjasment" class="chech-box" Text="تعديل" /><br>

                <asp:Button ID="saleInvoice" ValidationGroup="saleT" runat="server" type="submit" class="submit-btn" Text="إضافة" OnClick="SaleInvoice_Click" />
           </div>

        <div id="purchase" class="input-group" hidden="hidden">

        <asp:TextBox ID="purchaseValue" type="float" ValidationGroup="purchaseT" class="input-field" runat="server" placeholder="القيمة" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="purchaseT" runat="server" ControlToValidate="purchaseValue" ErrorMessage="You have to enter a value "></asp:RequiredFieldValidator>
            <asp:TextBox ID="purchaseDate" ValidationGroup="purchaseT" type="date" class="input-field" runat="server" placeholder="" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="purchaseT" runat="server" ControlToValidate="purchaseValue" ErrorMessage="You have to enter a date "></asp:RequiredFieldValidator>

            &nbsp;
            <br />
            <asp:Label runat="server" Text="التصنيف" ValidationGroup="purchaseT" />
            <div class="chech-radio">
                <asp:RadioButtonList ValidationGroup="purchaseT" ID="purchaseClassification" runat="server" CssClass="radiobnt">
                    <asp:ListItem Value="5%">٥٪</asp:ListItem>
                    <asp:ListItem Value="5% (Imports)">٥٪ ( الواردات )</asp:ListItem>
                    <asp:ListItem>RCM</asp:ListItem>
                    <asp:ListItem Value="0%">٠%</asp:ListItem>
                    <asp:ListItem Value="Exempt">معفاة </asp:ListItem>
                </asp:RadioButtonList>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ValidationGroup="purchaseT" runat="server" ID="PurchaseAdjasment" class="chech-box" Text="تعديل" /><br>

            <asp:Button ID="purchaseInvoice" runat="server" ValidationGroup="purchaseT" type="submit" class="submit-btn" Text="إضافة " OnClick="PurchaseInvoice_Click" />
     </div>
</div>
</form>
    <script>

        var x = document.getElementById("sale");
        var y = document.getElementById("purchase");
        var z = document.getElementById("btn");

        function purchase() {
            x.style.left = "-544px"
            y.style.left = "60px"
            z.style.left = "130px"
            y.hidden = false;
            x.hidden = true;
        }

        function sale() {
            x.style.left = "57px"
            y.style.left = "590px"
            z.style.left = "0px"
            x.hidden = false;
            y.hidden = true;

        }

    </script>
</body>
</html>
