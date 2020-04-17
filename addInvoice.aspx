<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addInvoice.aspx.cs" Inherits="Ehsbha_SP.addInvoice" UnobtrusiveValidationMode="None" %>

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
            right: 10px;
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




        .form-box {
            width: 580px;
            height: 680px;
            position: relative;
            margin: 30px auto;
            background: #fff;
            padding: 5px;
            box-shadow: 0 0 15px 5px gray;
            border-radius: 18px;
            overflow: hidden;
            color: #02614D;
            padding-bottom: 20px;
        }

        .button-box {
            width: 300px;
            margin: 40px auto 0px auto;
            position: relative;
            box-shadow: 0 0 15px 9px #FCF3CF;
            border-radius: 30px;
        }

        .toggle-btn {
            padding: 10px 30px;
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
            top: 150px;
            position: absolute;
            overflow: hidden;
            width: 380px;
            transition: .5s;
            color: #02614D;
            margin-left: auto;
            margin-right: auto;
            padding-bottom: 20px;
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
            cursor: pointer;
            display: block;
            margin-left: 130px;
            margin-right: auto;
            outline: none;
            border-radius: 30px;
            background-color: #CE9C2B;
            color: white;
            text-align: center;
            transition-duration: 0.5s;
            line-height: 30px;
            font-family: 'Times New Roman';
            font-size: 25px;
            box-shadow: 0 0 15px 9px #FCF3CF;
            margin-top: 20px;
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
            bottom: 74px;
            position: absolute;
            color: #02614D;
        }

        .p {
            color: #000000;
            font-size: 15px;
            position: static;
        }

        .radiobnt {
            color: #000000;
            font-size: 15px;
            color: #02614D;
        }

        #sale {
            left: 60px;
        }

        #purchase {
            left: 650px;
        }
        .auto-style1 {
            width: 314px;
            margin: 40px auto 0px auto;
            position: relative;
            box-shadow: 0 0 15px 9px #FCF3CF;
            border-radius: 30px;
            left: 0px;
            top: 0px;
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
        <div style="background-color: rgba(2, 67, 53, 0.90); color: white; font-family: 'Times New Roman'; font-size: 15px; text-align: left; padding: 5px;">
          
            <asp:Label ID="fName" runat="server" Style="display: inline-block" Text=" "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
        
        <asp:Label id="timer" style="display: inline-block; color: #e1c37f" runAt="server"></asp:Label>

            <asp:Button ID="setting" class="logout" Style="right: 135px;" runat="server" Text="settings" OnClick="setting_Click" />
            <asp:Button ID="langueg" class="logout" Style="right: 80px;" runat="server" Text="عربي" OnClick="langueg_Click" />
            <asp:Button ID="logout" class="logout" Style="right: 10px;" runat="server" Text="log out" OnClick="logout_Click" />

        </div>
        <div class="div_header_img">

            <img src="pic/logo_back.png" alt="logo" style="width: 200px; height: 100px; display: block; position: absolute; margin-top: 25px; margin-left: 90px;" class="logo_hover" />
        </div>

        <div class="div_meneu" id="Header">

            <asp:Button ID="homePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="Home" OnClick="homePage_Click" />
            <asp:Button ID="addInvoicePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="Add invoice" OnClick="addInvoicePage_Click" />
            <asp:Button ID="formPage" class="menueButton" runat="server" Style="border-radius: 13px;" Text="VAT return form" OnClick="formPage_Click" />
            <asp:Button ID="summaryPage" class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="Summary" OnClick="summaryPage_Click" />
            <asp:Button ID="contactPage" Class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="Contact us" OnClick="contactPage_Click" />

        </div>

        <div class="form-box">
            <div class="auto-style1">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="sale()">Sales</button> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <button type="button" class="toggle-btn " onclick="purchase()">Purchases</button></div>
            
            <div id="sale" class="input-group" >
                <asp:TextBox ID="saleValue" ValidationGroup="saleT" class="input-field" runat="server" placeholder="Value" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="saleT" runat="server" ControlToValidate="saleValue" ErrorMessage="You have to enter a value "></asp:RequiredFieldValidator>
                <asp:TextBox ID="saleDate" ValidationGroup="saleT" type="date" class="input-field" runat="server" placeholder=" " />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="saleT" runat="server" ControlToValidate="saleDate" ErrorMessage="You have to enter a date "></asp:RequiredFieldValidator>

                &nbsp;
                <br />
            <asp:Label runat="server" Text="Classification:" ValidationGroup="saleT" />
                <div class="chech-radio">
                    <asp:RadioButtonList ValidationGroup="saleT" ID="saleClassification" runat="server" CssClass="radiobnt">
                        <asp:ListItem>5%</asp:ListItem>
                        <asp:ListItem>0% (Citizens)</asp:ListItem>
                        <asp:ListItem>0% (0)</asp:ListItem>
                        <asp:ListItem>0% (Exports)</asp:ListItem>
                        <asp:ListItem>Exempt</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ValidationGroup="saleT" runat="server" ID="saleAdjasmentdjasment" class="chech-box" Text="Adjustment" /><br>

                <asp:Button ID="saleInvoice" ValidationGroup="saleT" runat="server" type="submit" class="submit-btn" Text="Ok" OnClick="SaleInvoice_Click" />
           </div>
            &nbsp;
        <div id="purchase" class="input-group" hidden="hidden">
            <asp:TextBox ID="purchaseValue" type="float" ValidationGroup="purchaseT" class="input-field" runat="server" placeholder="Value" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="purchaseT" runat="server" ControlToValidate="purchaseValue" ErrorMessage="You have to enter a value "></asp:RequiredFieldValidator>
            <asp:TextBox ID="purchaseDate" ValidationGroup="purchaseT" type="date" class="input-field" runat="server" placeholder="MM/DD/YYYY" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="purchaseT" runat="server" ControlToValidate="purchaseValue" ErrorMessage="You have to enter a date "></asp:RequiredFieldValidator>

            &nbsp;
            <br />
            <asp:Label runat="server" Text="Classification:" ValidationGroup="purchaseT" />
            <div class="chech-radio">
                <asp:RadioButtonList ValidationGroup="purchaseT" ID="purchaseClassification" runat="server" CssClass="radiobnt">
                    <asp:ListItem>5%</asp:ListItem>
                    <asp:ListItem>5% (Imports)</asp:ListItem>
                    <asp:ListItem>RCM</asp:ListItem>
                    <asp:ListItem>0%</asp:ListItem>
                    <asp:ListItem>Exempt</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            
            &nbsp;&nbsp;&nbsp;&nbsp;<asp:CheckBox ValidationGroup="purchaseT" runat="server" ID="PurchaseAdjasment" class="chech-box" Text="Adjastment" /><br>

            <asp:Button ID="purchaseInvoice" runat="server" ValidationGroup="purchaseT" type="submit" class="submit-btn" Text="Ok" OnClick="PurchaseInvoice_Click" />
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
            z.style.left = "120px"
            y.hidden = false;
            x.hidden = true;
        }

        function sale() {
            x.style.left = "57px"
            y.style.left = "590px"
            z.style.left = "0px"
            y.hidden = true;
            x.hidden = false;
        }
    </script>
</body>
</html>
