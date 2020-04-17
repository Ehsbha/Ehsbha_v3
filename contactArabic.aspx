<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactArabic.aspx.cs" Inherits="Ehsbha_SP.contactArabic" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <title>Ehsebha home page</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: Century Gothic;
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
            padding-bottom: 30px;
            width: 800px;
            height: 330px;
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



        .form-box {
            width: 590px;
            height: 640px;
            position: relative;
            margin-left: auto;
            margin-right: auto;
            background: #fff;
            padding: 5px;
            box-shadow: 0px 0px 20px 5px #bfbfbf;
            border-radius: 18px;
            overflow: hidden;
            align-content:center;
        }

        .request {
            text-align: center;
            font-family: 'Times New Roman';
            font-size: 30px;
            color: #02614D;
            margin-bottom: 10px;
            align-self:auto;
        }

        textarea {
            width: 90%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 15px;
            overflow: hidden;
            margin-right: 33px;
            margin-bottom: 10px;
            resize: vertical;
        }

        .title1 {
            margin-top: 280px;
            margin-bottom: 10px;
            resize: vertical;
        }

        .submit-btn {
            width: 30%;
            background-color: #CE9C2B;
            color: white;
            text-align: center;
            font-size: 30px;
            transition-duration: 0.4s;
            cursor: pointer;
            line-height: 30px;
            font-family: 'Times New Roman';
            position: relative;
            padding: 5px 15px;
            border-radius: 15px;

            
        }

            .submit-btn:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.2);
            }

        .radio-button {
            position: absolute;
            height: 9rem;
            width: 23rem;
            display: inline-flex;
            justify-content: center;
            margin-left: 40px;
            margin-top: 15px;
            color: #02614D;
        }

            .radio-button label {
                position: relative;
                display: block;
                user-select: none;
                height: 75%;
                width: 7.5rem;
                cursor: alias;
                margin-left: 9px;
                margin-right: 9px;
            }


                .radio-button label span {
                    position: absolute;
                    height: 100%;
                    width: 88%;
                    display: block;
                    background-color: rgb(50, 50,50);
                    border: 1rem solid rgb(50, 50,50);
                    margin-top: 5px;
                }

        label:nth-of-type(1) span {
            background-image: url(pic/ok.png);
            background-size: cover;
            border-radius: 0 4.5rem 0 4.5rem;
        }

        label:nth-of-type(2) span {
            background-image: url(pic/no.png );
            background-size: cover;
            border-radius: 4.5rem 0 4.5rem;
        }

        label input:checked ~ span {
            background-color: #CE9C2B;
            border: 1rem solid #CE9C2B;
            filter: none;
        }

        .radiomark {
            margin-bottom: 50px;
        }

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
        .auto-style1 {
            text-align: right;
            font-family: 'Times New Roman';
            font-size: 30px;
            color: #02614D;
            margin-bottom: 10px;
            width: 581px;
        }
        .auto-style2 {
            width: 30%;
            background-color: #CE9C2B;
            color: white;
            text-align: center;
            font-size: 30px;
            transition-duration: 0.4s;
            cursor: pointer;
            line-height: 30px;
            font-family: 'Times New Roman';
            position: relative;
            padding: 5px 15px;
            border-radius: 15px;
            left: 213px;
            top: 0px;
        }
        .auto-style3 {
            text-align: justify;
        }
    </style>



</head>
<body style="background-color: rgba(215,233, 216,0.5); flex-grow: 0;">


    <form runat="server">

        <div class="icon-bar">

            <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope" ></i></a>
            <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
            <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
        </div>
        <div style="background-color: rgba(2, 67, 53, 0.90); color: white; font-family: 'Times New Roman'; font-size: 15px; padding: 5px; direction: rtl" class="auto-style3">

            <asp:Label ID="fName" runat="server" Style="display: inline-block" Text=" " />
           &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label id="timer" style="display: inline-block; color: #e1c37f" runAt="server"></asp:Label>


            <asp:Button ID="setting" class="logout" style=" left: 155px;" runat="server" Text="اعدادات" OnClick="setting_Click" />
            <asp:Button ID="langueg" class="logout" style=" left: 70px;" runat="server" Text="English" OnClick="langueg_Click" />
            <asp:Button ID="logout" class="logout" style=" left: 10px;" runat="server" Text="خروج" OnClick="logout_Click" />

        </div>
        <div class="div_header_img">

            <img src="pic/logo_back.png" alt="logo" style="width: 200px; height: 100px; display: block; position: absolute; margin-top: 25px; right: 20px;" class="logo_hover" />
        </div>
        <div class="div_meneu" id="Header">

            <asp:Button ID="homePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="الرئيسية" onclick="homePage_Click" />
            <asp:Button ID="addInvoicePage" Class="menueButton" runat="server" Style="border-radius: 30px 0px 30px 0px;" Text="إضافة فواتير" onclick="addInvoicePage_Click" />
            <asp:Button ID="formPage" class="menueButton" runat="server" Style="border-radius: 13px;" Text="نموذج الإقرار الضريبي " OnClick="formPage_Click" />
            <asp:Button ID="summaryPage" class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="الملخص" OnClick="summaryPage_Click" />
            <asp:Button ID="contactPage" Class="menueButton" runat="server" Style="border-radius: 0px 30px 0px 30px;" Text="تواصل معنا" OnClick="contact_Click" />

        </div>

        <div style="color: #02614D;" class="form-box" >
            <p class="auto-style1">: حدد طلبك</p>

            <div class="radio-button">
                <label for="radio">
                    <input type="radio" name="message">
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;اقتراح</p>
                    <span class="radiomark"></span>
                </label>
                <label for="radio">
                    <input type="radio" name="message">
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;شكوى</p>
                    <span class="radiomark"></span>
                </label>
            </div>

            <div dir="rtl" lang="ar">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label runat="server" align="center" Text="العنوان"></asp:Label>
                <asp:TextBox ID="title" runat="server" name="title" class="title1" />
            <asp:TextBox ID="subject" name="subject" runat="server" TextMode="multiline" Columns="50" Rows="5" placeholder="ادخل تعليقك هنا...." Style="height: 150px" />
            
            </div>
            <asp:Button runat="server" type="submit" class="submit-btn" OnClick="sendEmail_Click" Text="ارسال" CssClass="auto-style2" />
        </div>
        </form>

        <script>window.onscroll = function () { myFunction() };

            var header = document.getElementById("Header");
            var sticky = header.offsetTop;

            function myFunction() {
                if (window.pageYOffset > sticky) {
                    header.classList.add("sticky");
                } else {
                    header.classList.remove("sticky");
                }
            }
            

</script>
</body>
</html>
