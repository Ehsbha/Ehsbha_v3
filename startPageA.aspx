<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startPageA.aspx.cs" Inherits="Ehsbha_SP.startPageA" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html class="div1_main_img">
<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>إجسبها</title>

    <style>
        /*general ------------------------------------------- */
        h1 {
            text-align: center;
            font-family: 'Times New Roman';
            font-size: 25px;
        }

        .logo_hover:hover {
            transform: scale(1.2);
            transition: all 0.3s ease;
        }



        /* div ------------------------------------------- */

        .div1_main_img {
            background-image: url('pic/main-page.png');
            background-position: center;
            background-size: cover;
            position: absolute;
            height: 100%;
            width: 100%;
        }



        .div_log_btn {
            text-align: center;
            width: auto;
            height: auto;
            display: block;
            padding-bottom: 65px;
        }

        .div_log_txt {
            text-align: center;
            margin: 0 auto 20px auto;
            height: 200px;
            display: block;
            width: 50%;
            color: #555555;
            border-radius: 20px;
            padding: 6px;
            box-shadow: 0px 2px 10px 5px rgba(0, 0, 0, 0.2);
            transition: all 0.4s ease;
        }

            .div_log_txt:hover {
                transition: all 0.3s ease;
                transform: scale(1.1);
                color: #035141;
                background-color: rgba( 243,231, 204,0.3);
            }


        /*icon-bar-------------------------------------------*/


        .icon-bar {
            position: fixed;
            top: 80%;
            -webkit-transform: translateY(-50%);
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
            left: 15px;
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

        /*  button   ------------------------------------------- */
        .sign-button {
            width: 200px;
            height: 60px;
            display: inline-block;
            text-align: center;
            padding: 5px 8px 5px 8px;
            font-size: 35px;
            border-radius: 20px;
            color: #02614D;
            transition: all 0.4s ease;
            box-shadow: 3px 5px 15px #555555;
            margin-top: 50px;
            background: none;
        }

            .sign-button:hover {
                color: white;
                background-color: #CE9C2B;
                transition: all 0.4s ease;
                transform: scale(1.2);
            }

        .langueg {
            position: absolute;
            display: block;
            border-radius: 15px;
            font-size: 30px;
            color: #02614D;
            box-shadow: 3px 5px 15px #555555;
            padding: 5px;
            background: none;
            left: 20px;
            top: 20px;
        }

            .langueg:hover {
                color: white;
                background-color: #CE9C2B;
                transition: all 0.4s ease;
                transform: scale(1.2);
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="icon-bar">
            <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope" hspace="20"></i></a>
            <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
            <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
        </div>
        <asp:Button ID="langueg" class="langueg" runat="server" Text="English" OnClick="langueg_Click" />
        <img src="pic/logo_no.png" alt="logo" style="width: 400px; height: 200px; margin: 0px auto 40px auto; display: block; text-align: center; padding-top: 30px" class="logo_hover" />
        <div class="div_log_txt">
            <h1>-  إعداد نموذج إقرار ضريبة القيمة المضافة بسهولة ووضوح -
            </h1>
            <p style="font-size: 20px;">
                إحسبها موقع لتسهيل حساب نموذج ضريبة القيمة المضافة لأصحاب المنشآت و المؤسسات الصغيرة والمتوسطة، مع توفير واجهة مستخدم سهلة الإستخدام ،واضحة المحتوى ومتعددة اللغات            
            </p>
        </div>
        <div class="div_log_btn">
            <asp:Button ID="sign_button" class="sign-button" runat="server" Text="تسجيل الدخول" OnClick="login_Click" />
        </div>
    </form>
</body>
</html>
