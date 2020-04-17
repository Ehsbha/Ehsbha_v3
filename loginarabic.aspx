<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginarabic.aspx.cs" Inherits="Ehsbha_SP.loginarabic" UnobtrusiveValidationMode="None" %>


<!DOCTYPE html>

<html dir="rtl" lang="ar" class="back">

<head>
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>تسجيل الدخول</title>


    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Times New Roman';
            font-size: 15px;
        }
        /*background of page */
        .back {
            height: 100%;
            width: 100%;
            background-image: url('pic/main-page.png');
            background-position: center;
            background-size: cover;
            position: absolute;
        }

        /*the white box */
        .form-box_start {
            width: 380px;
            height: 600px;
            position: relative;
            margin-left: auto;
            margin-right: auto;
            top: 50px;
            background-color: white;
            padding: 10px;
            box-shadow: 3px 5px 15px grey;
            border-radius: 18px;
            overflow: hidden;
        }


        .button-box {
            width: 220px;
            margin: 35px auto;
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
            width: 110px;
            height: 100%;
            background: #CE9C2B;
            border-radius: 30px;
            transition: .5s;
            border: groove;
        }

        .input-user {
            top: 150px;
            position: absolute;
            width: 280px;
            transition: .5s;
            color: #02614D;
        }


        .input-field {
            width: 350px;
            padding: 10px 0;
            margin: 5px 0;
            border-left: 0;
            border-top: 0;
            border-right: 0;
            border-bottom: 1px solid #999;
            outline: none;
            background: transparent;
        }

        .submit-btn {
            width: 70%;
            cursor: pointer;
            display: block;
            margin: auto;
            outline: none;
            padding: 5px;
            border-radius: 30px;
            background-color: #CE9C2B;
            color: #02614D;
            text-align: center;
            transition-duration: 0.5s;
            line-height: 30px;
            font-family: 'Times New Roman';
            box-shadow: 0 0 15px 9px #FCF3CF;
            margin-top: 10px;
            font-size: 20px;
        }

            .submit-btn:hover {
                background-color: rgba(2, 67, 53, 0.90);
                color: white;
                border: 3px solid #CE9C2B;
                transition: all 0.3s ease;
                transform: scale(1.2);
            }


        .chech-box {
            margin: 30px 0 0 165px;
        }

        .chech-radio {
            margin: 30px 10px 30px 0;
        }

        .pass {
            margin: 30px 10px 30px 0;
            float: left;
            text-decoration: none;
        }

        .chack {
            color: #000000;
            font-size: 12px;
            bottom: 74px;
            position: absolute;
            left: 233px;
        }

        .p {
            color: #000000;
            font-size: 12px;
            position: static;
        }

        .radiobnt {
            color: #000000;
            font-size: 12px;
        }

        #login {
            left: 60px;
        }

        #register {
            left: 650px;
        }

        .logo_hover:hover {
            transform: scale(1.2);
            transition: all 0.3s ease;
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

        .errors {
            color: red;
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

        .langueg {
            position: absolute;
            display: block;
            border-radius: 15px;
            font-size: 25px;
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

        .auto-style2 {
            width: 380px;
            height: 491px;
            position: relative;
            margin-left: auto;
            margin-right: auto;
            top: 166px;
            background-color: white;
            padding: 10px;
            box-shadow: 30px 5px 15px grey;
            border-radius: 18px;
            overflow: hidden;
            right: 0px;
        }
    </style>
</head>
<body>
    <div class="icon-bar">

        <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope" hspace="20"></i></a>
        <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
    </div>
    <img src="pic/logo_no.png" alt="logo" style="width: 330px; height: 179px; display: block; position: absolute; padding-top: 20px; padding-right: 60px; float: right; right: -2px; top: -24px;" class="logo_hover" />

    <form action="login.aspx">
        <button id="langueg" class="langueg">English</button>
    </form>
    <form runat="server">
        <div class="auto-style2" id="myDiv">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn " onclick="register()" id="reg" runat="server">تسجيل جديد</button>
                <button type="button" class="toggle-btn" onclick="login()">دخول</button>

            </div>

            <div id="login" style="padding-right: 1em;">
                <asp:Label ID="invalid" runat="server" Text=" " ValidationGroup="login" CssClass="errors"></asp:Label>
                <asp:TextBox ID="loginUser" runat="server" ValidationGroup="login" class="input-field" placeholder=" الرقم الضريبي"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="login" runat="server" ControlToValidate="loginUser" ErrorMessage="الرقم الضريبي مطلوب" CssClass="errors"></asp:RequiredFieldValidator>
                <asp:TextBox ID="loginPass" runat="server" ValidationGroup="login" type="password" class="input-field" TextMode="Password" placeholder="كلمه السر"></asp:TextBox>
                <br />

                <asp:CheckBox ValidationGroup="login" ID="rememberMe" runat="server" class="chech-box" Text="  تذكرني  " />
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="login" runat="server" ControlToValidate="loginPass" ErrorMessage="كلمة المرور مطلوبة" CssClass="errors"></asp:RequiredFieldValidator>
                <asp:HyperLink ID="HyperLink1" class="pass" ValidationGroup="login" runat="server">هل نسيت كلمة المرور؟</asp:HyperLink>
                <asp:Button ValidationGroup="login" ID="login_btn" class="submit-btn" runat="server" Text="تسجيل الدخول" OnClick="login_Click" />
            </div>

            <div id="register" hidden="hidden" style="padding-right: 1em;">
                <asp:TextBox ValidationGroup="register" ID="facilityName" class="input-field" placeholder="اسم المنشأة" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator4" runat="server" ControlToValidate="facilityName" ErrorMessage="اسم المنشأة مطلوب" CssClass="errors"></asp:RequiredFieldValidator>

                <asp:TextBox ID="taxNum" ValidationGroup="register" class="input-field" runat="server" placeholder="الرقم الضريبي"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator3" runat="server" ControlToValidate="taxNum" ErrorMessage="الرقم الضريبي مطلوب" CssClass="errors"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="userE" ValidationGroup="register" runat="server" Text=" " CssClass="errors"></asp:Label>

                <asp:TextBox ValidationGroup="register" ID="phone" runat="server" class="input-field" placeholder="رقم الجوال"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator6" runat="server" ControlToValidate="phone" ErrorMessage="رقم الجوال مطلوب" CssClass="errors"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ValidationGroup="register" ID="phoneE" runat="server" Text=" " CssClass="errors"></asp:Label>

                <asp:TextBox ValidationGroup="register" ID="email" runat="server" class="input-field" placeholder="البريد الإلكتروني"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ErrorMessage="الايميل مطلوب" CssClass="errors"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ValidationGroup="register" ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="يجب ادخال الايميل بصيغة صحيحة" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="errors"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ValidationGroup="register" ID="emailE" runat="server" Text=" " CssClass="errors"></asp:Label>

                <asp:TextBox ValidationGroup="register" ID="pass" runat="server" TextMode="Password" class="input-field" placeholder="كلمةالمرور"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator7" runat="server" ControlToValidate="pass" ErrorMessage="كلمة المرور مطلوبة" CssClass="errors"></asp:RequiredFieldValidator>

                <asp:TextBox ValidationGroup="register" ID="confirmPass" runat="server" TextMode="Password" class="input-field" placeholder="تأكيد كلمة المرور"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator8" runat="server" ControlToValidate="confirmPass" ErrorMessage="تأكيد كلمة المرور مطلوبة" CssClass="errors"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ValidationGroup="register" ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="confirmPass" ErrorMessage="يجب ان تكون كلمة المرور وتاكيد كلمة المرور متطابقتان" CssClass="errors"></asp:CompareValidator>
                <br />
                <br />
                <asp:Label ValidationGroup="register" class="radiobnt" runat="server" Text="نوع الفترات الضريبية:" Font-Size="Medium"></asp:Label>
                <asp:RadioButtonList ValidationGroup="register" ID="taxPeriod" runat="server" Width="250px" Class="radio" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="7">
                    <asp:ListItem Value="Monthly"> تقرير شهري </asp:ListItem>
                    <asp:ListItem Value="Quarterly"> تقرير ربع سنوي </asp:ListItem>
                </asp:RadioButtonList>

                <asp:Button ValidationGroup="register" ID="register_btn" class="submit-btn" runat="server" Text="التسجيل" OnClick="register_Click" />

            </div>
        </div>

    </form>

    <script type="text/javascript">
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");

        function register() {
            x.style.left = "-400px"
            y.style.left = "50px"
            z.style.left = "110px"
            document.getElementById("register").hidden = false;
            document.getElementById("login").hidden = true;
            document.getElementById("myDiv").style.height = "750px"
        }

        function login() {
            x.style.left = "50px"
            y.style.left = "550px"
            z.style.left = "0px"
            document.getElementById("register").hidden = true;
            document.getElementById("login").hidden = false;
            document.getElementById("myDiv").style.height = "500px"

        }</script>
</body>
</html>
