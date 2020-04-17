<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="Ehsbha_SP.form" EnableEventValidation="false" UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <title>Ehsebha VAT return form page</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Times New Roman';
            font-size: 20px;
        }
        /* general ------------------------------------------- */

        .logo_hover:hover {
            transform: scale(1.1);
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
            padding-bottom: 50px;
            padding-top: 50px;
            width: 1200px;
            height: auto;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            margin-top: -14px;
            background-color: whitesmoke;
            box-shadow: 0px 0px 20px 5px #bfbfbf;
        }

        /*icon-bar-------------------------------------------*/


        .icon-bar {
            position: fixed;
            top: 80%;
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
            right: 0px;
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
            box-shadow: 3px 5px 15px grey;
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



        /*===========================================================================*/



        .logout {
            background-color: #CE9C2B;
            color: white;
            font-family: 'Times New Roman';
            margin-bottom: 10px;
            position: absolute
        }


            .logout:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.2);
            }


        .div_form {
            background-image: url('pic/form_e.jpeg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 602px;
            width: 75%;
            margin-left: auto;
            margin-right: auto;
            border-radius: 20px;
            box-shadow: 0px 0px 20px 5px #bfbfbf;
        }

        .submit-btn {
            width: auto;
            margin-left: auto;
            margin-right: auto;
            margin-top: 50px;
            background-color: #CE9C2B;
            color: white;
            text-align: center;
            font-size: 25px;
            transition-duration: 0.4s;
            cursor: pointer;
            line-height: 30px;
            font-family: 'Times New Roman';
            position: relative;
            padding: 10px 20px;
            border-radius: 15px;
            box-shadow: 0px 0px 20px 5px #bfbfbf;
        }

            .submit-btn:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.2);
            }
            .text_box {
            font-size: 17px;
            border:hidden;
            background:none;
            padding-left: 1.6em;
        }

        .box {
            height: 15px;
        }

        .auto-style1 {
            height: 15px;
            width: 69px;
        }
        .auto-style2 {
            float: right;
            width: 7%;
            margin-top: 12.5%;
        }

        .auto-style4 {
            height: 15px;
            width: 64px;
        }
        
    </style>



</head>
<body style="        background-color: rgba(215,233, 216,0.5);
        flex-grow: 0;">

    <form runat="server">
        <asp:panel ID="panel1" runat="server">

    <div class="icon-bar">

        <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope" hspace="20"></i></a>
        <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
    </div>
    <div style="background-color: rgba(2, 67, 53, 0.90); color: white; font-family: 'Times New Roman'; font-size: 15px; padding: 5px;">

        <asp:Label id="fName" runAt="server" style="display: inline-block"></asp:Label>
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

    <div class="body_section" id="myDiv" runat="server">
        
        <div class="div_form" runat="server">
            <div style="margin-right:16%;display:block" class="auto-style2" >

                <div class="box"><asp:TextBox runat="server" class="text_box" ID="s5" Text=" " CssClass="text_box" /></div>
                <div class="box" style="margin-top:106px"> <asp:TextBox runat="server" class="text_box" ID="totalSale" Text=" "/></div>
                <div class="box" style="margin-top:14px"><asp:TextBox runat="server" class="text_box" ID="p5" Text=" "/></div>
                <div class="box" style="margin-top:10px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pImports"/></div>
                <div class="box" style="margin-top:9px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pRCM"/></div>
                <div class="box" style="margin-top:75px"><asp:TextBox runat="server" class="text_box" Text=" " ID="totalPurchases"/></div>
                <div class="box" style="margin-top:10px"><asp:TextBox runat="server" class="text_box" Text=" " ID="totalVAT"/></div>
                <div class="box" style="margin-top:9px"><asp:TextBox runat="server" class="text_box" Text=" " ID="correction"/></div>
                <div class="box" style="margin-top:11px"><asp:TextBox runat="server" class="text_box" Text=" " ID="carried"/><asp:TextBox runat="server" class="text_box" Text=" " ID="net"/></div>

            </div>


            <div style="float:right;margin-right:5.3%;width:8%;height:42.5%;display:block" >


                <div class="box" style="margin-top:115px"><asp:TextBox runat="server" class="text_box" ID="sAdj5" Text=" " /></div>
                <div class="box" style="margin-top:9px"><asp:TextBox runat="server" class="text_box" ID="sAdjCitizens" Text=" " /></div>
                <div class="box" style="margin-top:10px"><asp:TextBox runat="server" class="text_box" ID="sAdj0" Text=" " /></div>
                <div class="box" style="margin-top:8px"><asp:TextBox runat="server" class="text_box" ID="sAdjExports" Text=" " /></div>
                <div class="box" style="margin-top:10.8px"><asp:TextBox runat="server" class="text_box" ID="sAdjExempt" Text=" " /></div>
                <div class="box" style="margin-top:7px"><asp:TextBox runat="server" class="text_box" ID="sTotalAdj" Text=" "/></div>
                <div class="box" style="margin-top:14px"><asp:TextBox runat="server" class="text_box" ID="pAdj5" Text=" " /></div>
                <div class="box" style="margin-top:7px"><asp:TextBox runat="server" class="text_box" ID="pAdjImports" Text=" " /></div>
                <div class="box" style="margin-top:11px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pAdjRCM" /></div>
                <div class="box" style="margin-top:24px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pAdj0" /></div>
                <div class="box" style="margin-top:10px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pAdjExempt"/></div>
                <div class="box" style="margin-top:8px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pTotalAdj" /></div>


            </div>

            <div style="float:right;margin-right:5.2%;width:8%;height:42.5%;display:block" >

                <div class="box" style="margin-top:115px" ><asp:TextBox runat="server" class="text_box" ID="sAmount5" Text=" " > </asp:TextBox></div>
                <div class="box" style="margin-top:9px"><asp:TextBox runat="server" class="text_box" ID="sAmountCitizens" Text=" "/></div>
                <div class="box" style="margin-top:10px"><asp:TextBox runat="server" class="text_box" ID="sAmount0" Text=" "/></div>
                <div class="box" style="margin-top:8px"><asp:TextBox runat="server" class="text_box" ID="sAmountExport" Text=" " /></div>
                <div class="box" style="margin-top:10.8px"><asp:TextBox runat="server" class="text_box" ID="sAmountExempt" Text=" " /></div>
                <div class="box" style="margin-top:7px"><asp:TextBox runat="server" class="text_box" ID="sTotalAmount" Text=" " /></div>
                <div class="box" style="margin-top:14px"><asp:TextBox runat="server" class="text_box" ID="pAmount5" Text=" " /></div>
                <div class="box" style="margin-top:7px"><asp:TextBox runat="server" class="text_box" ID="pAmountImports" Text=" " /></div>
                <div class="box" style="margin-top:11px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pAmountRCM" ></asp:TextBox></div>
                <div class="box" style="margin-top:24px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pAmount0" ></asp:TextBox></div>
                <div class="box" style="margin-top:10px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pAmountExempt" ></asp:TextBox></div>
                <div class="box" style="margin-top:8px"><asp:TextBox runat="server" class="text_box" Text=" " ID="pTotalAmount" ></asp:TextBox></div>
                

            </div>
        </div>
        <asp:Button id="preperVAT" runAt="server" type="button" class="submit-btn" Text="Prepare VAT return form" OnClick="preperVAT_Click"/>
        <asp:Button ID="Save" runat="server" CssClass="submit-btn" Text="Save" OnClick="Save_Click" />
   
        </div>
        
       </asp:panel>
    </form>

</body>
</html>

