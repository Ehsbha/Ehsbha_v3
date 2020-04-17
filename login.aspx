<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Ehsbha_SP.login" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>

<html class="back">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="keywords" content="VAT,return,form,accounting,accountant">
    <meta name="author" content="Hanan Baotham, Nouf Alharbi, Reema Alshihri, Shahad Alghamdi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=dev ice-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login</title>
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

        .radio {
            margin: 30px 10px 30px 0;
        }

        .pass {
            margin: 30px 10px 30px 0;
            float: right;
            text-decoration: none;
        }

        .chack {
            color: #000000;
            font-size: 12px;
            bottom: 68px;
            position: absolute;
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
            right: 15px;
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
            font-size: 30px;
            color: #02614D;
            box-shadow: 3px 5px 15px #555555;
            padding: 5px;
            background: none;
            right: 20px;
            top: 20px;
        }

            .langueg:hover {
                color: white;
                background-color: #CE9C2B;
                transition: all 0.4s ease;
                transform: scale(1.2);
            }

        .auto-style4 {
            width: 380px;
            height: 491px;
            position: relative;
            margin-left: auto;
            margin-right: auto;
            top: 166px;
            background-color: white;
            padding: 10px;
            box-shadow: 3px 5px 15px grey;
            border-radius: 18px;
            overflow: hidden;
            left: 0px;
        }

        .errors {
            color: red;
        }
    </style>
</head>
<body>
    <div class="icon-bar">

        <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope" hspace="20"></i></a>
        <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
    </div>

    <img src="pic/logo_no.png" alt="logo" style="width: 330px; height: 179px; display: block; position: absolute; padding-top: 20px; padding-right: 60px; float: left; left: -2px; top: -24px;" class="logo_hover" />
    <form id="languageF" action="loginarabic.aspx">
        <button id="langueg" onclick="langueg_Click1()" class="langueg">عربي</button>
    </form>

    <form id="form1" runat="server">
        <div class="auto-style4" id="myDiv">
            <div class="button-box">
                <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">Login</button>
                <button type="button" class="toggle-btn " onclick="register()" id="reg" runat="server">Register</button>
            </div>

            <div id="login" style="padding-left: 1em;">
                <asp:Label ID="invalid" runat="server" Text=" " ValidationGroup="login" ForeColor="Red" CssClass="errors"></asp:Label>

                <asp:TextBox ID="loginUser" runat="server" ValidationGroup="login" class="input-field" placeholder="Tax number" Width="350px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="login" runat="server" ControlToValidate="loginUser" ErrorMessage="Tax Number Requiered" CssClass="errors"></asp:RequiredFieldValidator>

                <asp:TextBox ID="loginPass" runat="server" ValidationGroup="login" type="password" class="input-field" TextMode="Password" placeholder="Password" Width="350px"></asp:TextBox>

                <br />

                <asp:CheckBox ValidationGroup="login" ID="rememberMe" runat="server" class="chech-box" Text="Remember Me" />
                <br />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="login" runat="server" ControlToValidate="loginPass" ErrorMessage="Password is required" CssClass="errors"></asp:RequiredFieldValidator>
                <asp:HyperLink ID="HyperLink1" class="pass" ValidationGroup="login" runat="server">Forgot Password?</asp:HyperLink>
                <asp:Button ValidationGroup="login" ID="login_btn" class="submit-btn" runat="server" Text="Login" OnClick="login_Click" />
            </div>

            <div id="register" hidden="hidden" style="padding-left: 1em;">
                <asp:TextBox ValidationGroup="register" ID="facilityName" class="input-field" placeholder="Facility Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator4" runat="server" ControlToValidate="facilityName" ErrorMessage="Facility name is required" CssClass="errors"></asp:RequiredFieldValidator>

                <asp:TextBox ID="taxNum" ValidationGroup="register" class="input-field" runat="server" placeholder="Tax Number"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator3" runat="server" ControlToValidate="taxNum" ErrorMessage="Tax Number is required" CssClass="errors"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="userE" ValidationGroup="register" runat="server" Text=" " ForeColor="Red"></asp:Label>

                <asp:TextBox ValidationGroup="register" ID="phone" runat="server" class="input-field" placeholder="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator6" runat="server" ControlToValidate="phone" ErrorMessage="phone number is required" CssClass="errors"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ValidationGroup="register" ID="phoneE" runat="server" Text=" " ForeColor="Red"></asp:Label>

                <asp:TextBox ValidationGroup="register" ID="email" runat="server" class="input-field" placeholder="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ErrorMessage="email is required" CssClass="errors"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ValidationGroup="register" ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="you must enter valid email address" CssClass="errors" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ValidationGroup="register" ID="emailE" runat="server" Text=" " ForeColor="Red"></asp:Label>

                <asp:TextBox ValidationGroup="register" ID="pass" runat="server" TextMode="Password" class="input-field" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator7" runat="server" ControlToValidate="pass" ErrorMessage="password is required" CssClass="errors"></asp:RequiredFieldValidator>

                <asp:TextBox ValidationGroup="register" ID="confirmPass" runat="server" TextMode="Password" class="input-field" placeholder="Confirm Password"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator8" runat="server" ControlToValidate="confirmPass" ErrorMessage="confirm password is required" CssClass="errors"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ValidationGroup="register" ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="confirmPass" ErrorMessage="passwords must be the same" CssClass="errors"></asp:CompareValidator>
                <br />
                <br />
                <asp:Label ValidationGroup="register" class="radiobnt" runat="server" Text="Tax Period:" Font-Size="Medium"></asp:Label>

                <asp:RequiredFieldValidator ValidationGroup="register" ID="RequiredFieldValidator9" runat="server" ControlToValidate="taxPeriod" ErrorMessage="You have to select tax period " CssClass="errors" Font-Bold="False"></asp:RequiredFieldValidator>

                <asp:RadioButtonList ValidationGroup="register" ID="taxPeriod" runat="server" Width="250px" Class="radio" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="7">
                    <asp:ListItem Value="Monthly">Monthly report</asp:ListItem>
                    <asp:ListItem Value="Quarterly">Quarterly report</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button ValidationGroup="register" ID="register_btn" class="submit-btn" runat="server" Text="Register" OnClick="register_Click" />
            </div>

        </div>
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
    </form>
</body>
</html>
