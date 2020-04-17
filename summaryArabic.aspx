<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="summaryArabic.aspx.cs" Inherits="Ehsbha_SP.summaryArabic" %>

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

        /*form ==================================================*/

        .invoic-box {
            width: 70%;
            height: auto;
            position: center;
            
            background: #fff;
            margin:0;
            padding: 10px 0 30px 0;
            box-shadow: 0 0 15px 5px gray;
            border-radius: 18px;
            overflow: hidden;
            display:inline;
            text-align:center;
            align-items:center;
        }

        .input-group {
            position: center;
            overflow: hidden;
            margin: 0;
            transition: .5s;
            // margin-top: 40px;
            text-align: center;
            // margin-bottom: 20px;
            height: auto;
            width: 46%;
        }

        #sale {
            padding-left: 8em;
            display: inline-block;
            float: left;
            margin-left: auto;
            //position:center;
        }

        #purchase {
            display: inline-block;
            float: right;
            margin-right: auto;
        }

        #div1 {
            height: 30px;
            width: 87%;
            padding: 0;
            margin-left: 47px;
            margin-right: auto;
            background-color: #02614D;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

            #div1 th {
                border: 1px solid #CE9C2B;
                table-layout: fixed;
            }

        #table1 {
            font-size: 10px;
            width: 100%;
            height: 100%;
            color: white;
            border-spacing: 0px;
            border: 1px solid #ddd;
            border-radius: 5px;
            table-layout: fixed;
        }



        #div2 {
            height: 200px;
            width: 90%;
            overflow: auto;
            border: 1px solid #02614D;
            border-radius: 5px;
            margin-left: auto;
            margin-right: auto;
            overflow: scroll;
            height: auto;
            max-height: 400px;
        }

            #div2 td {
                border: 1px solid #CE9C2B;
                table-layout: fixed;
            }

        #table2 {
            text-align: center;
            height: inherit;
            font-size: 4px;
            width: 100%;
            color: black;
            border-spacing: 0px;
            height: 100%;
            border: 1px solid #CE9C2B;
            border-radius: 5px;
            table-layout: fixed;
            height: auto;
        }

        td {
            padding: 10px;
            white-space: nowrap;
        }

        tr {
            white-space: nowrap;
        }

        td button {
            background-color: #02614D;
            border-color: #CE9C2B;
            color: white;
            border-radius: 5px;
            padding: 3px;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
        }
    </style>



</head>
<body style="background-color: rgba(215,233, 216,0.5); flex-grow: 0; position: relative;">




    <div class="icon-bar">

        <a href="mailto: Ehsbha.2020@gmail.com "><i class="fa fa-envelope" hspace="20"></i></a>
        <a href="https://twitter.com/Ehsbha1"><i class="fa fa-twitter"></i></a>
        <a href="https://instagram.com/ehabha_?igshid=2psslfjek1tm"><i class="fa fa-instagram"></i></a>
    </div>
    <form runat="server">
        <div style="                background-color: rgba(2, 67, 53, 0.90); direction:rtl;
                color: white;
                font-family: 'Times New Roman';
                font-size: 15px;
                padding: 5px;" class="auto-style2" >

            <asp:Label ID="fName" runat="server" Style="display: inline-block "  Text=" "></asp:Label>
            
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
    
        </div>


        <div class="input-box" >
           
            <div id="sale" runat="server" visible="true" class="auto-style1">
                <br />
                <p style="font-family:'Times New Roman';font-size:30px; color:#02614D; align-content:center" class="auto-style1">فواتير المبيعات</p><br />
                <asp:SqlDataSource ID="salesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegesterationConnectionString %>" DeleteCommand="DELETE FROM [sale] WHERE [saleId] = @saleId" InsertCommand="INSERT INTO [sale] ([date], [price], [classification], [adjasment]) VALUES (@date, @price, @classification, @adjasment)" SelectCommand="SELECT [saleId], [date], [price], [classification], [adjasment] FROM [sale] WHERE ([userId] = @userId)" UpdateCommand="UPDATE [sale] SET [date] = @date, [price] = @price, [classification] = @classification, [adjasment] = @adjasment WHERE [saleId] = @saleId">
                    <DeleteParameters>
                        <asp:Parameter Name="saleId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="classification" Type="String" />
                        <asp:Parameter Name="adjasment" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="userId" SessionField="User" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="classification" Type="String" />
                        <asp:Parameter Name="adjasment" Type="String" />
                        <asp:Parameter Name="saleId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="salesGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="saleId" DataSourceID="salesDataSource" Width="574px" Height="545px" AllowPaging="True" rir="rtl">
                    <Columns>
                        <asp:BoundField DataField="saleId" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="saleId" />
                        <asp:BoundField DataField="date" HeaderText="التاريخ" SortExpression="date" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="price" HeaderText="المبلغ (ريال)" SortExpression="price" />
                        <asp:BoundField DataField="classification" HeaderText="التصنيف" SortExpression="classification" />
                        <asp:BoundField DataField="adjasment" HeaderText="التعديل" SortExpression="adjasment" />
                        <asp:CommandField DeleteText="X" ShowDeleteButton="True">
                            <ItemStyle ForeColor="Red" />
                        </asp:CommandField>
                    </Columns>

                    <FooterStyle BackColor="#1C5E55" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>

            </div>
            <div id="purchase" runat="server" class="input-group">
                <br />
                <p style="font-family:'Times New Roman';font-size:30px; color:#02614D">فواتير المشتريات</p><br />
                <asp:SqlDataSource ID="purchaseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegesterationConnectionString %>" DeleteCommand="DELETE FROM [purchase] WHERE [purchaseId] = @purchaseId" InsertCommand="INSERT INTO [purchase] ([date], [price], [classification], [adjasment]) VALUES (@date, @price, @classification, @adjasment)" SelectCommand="SELECT [purchaseId], [date], [price], [classification], [adjasment] FROM [purchase] WHERE ([userId] = @userId)" UpdateCommand="UPDATE [purchase] SET [date] = @date, [price] = @price, [classification] = @classification, [adjasment] = @adjasment WHERE [purchaseId] = @purchaseId">
                    <DeleteParameters>
                        <asp:Parameter Name="purchaseId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="classification" Type="String" />
                        <asp:Parameter Name="adjasment" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="userId" SessionField="User" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="classification" Type="String" />
                        <asp:Parameter Name="adjasment" Type="String" />
                        <asp:Parameter Name="purchaseId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <asp:GridView ID="purchaseGridView" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="purchaseDataSource" AutoGenerateColumns="False" DataKeyNames="purchaseId" Width="574px" Height="545px" AllowPaging="True">
                    <Columns>
                        <asp:BoundField DataField="purchaseId" HeaderText="#" InsertVisible="False" ReadOnly="True" SortExpression="purchaseId" />
                        <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="التاريخ" SortExpression="date" />
                        <asp:BoundField DataField="price" HeaderText="Value (SAR)" SortExpression="المبلغ (ريال) " />
                        <asp:BoundField DataField="classification" HeaderText="Classification" SortExpression="التصنيف" />
                        <asp:BoundField DataField="adjasment" HeaderText="Adjasment" SortExpression="التعديل" />
                        <asp:CommandField DeleteText="X" ShowDeleteButton="True">
                            <ItemStyle ForeColor="Red" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor= "#1C5E55"/>
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>


            </div>
            </div>
    </form>
</body>
</html>

