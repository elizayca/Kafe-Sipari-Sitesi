<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="auto-style52">


       
            <div class="auto-style30">
                <br />
                <br />
                <br />
                <div class="auto-style32" style="margin-left:620px">
                    <i class="fa fa-phone-square" style="font-size:60px">

                    </i>
                </div>
                <strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label style="margin-left:500px; margin-right:200px;" ID="Label1" runat="server" Text="İLETİŞİM" CssClass="auto-style31" Font-Size="40pt" Font-Names="Segoe UI"></asp:Label>
                <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label style="margin-left:450px; margin-right:200px;" ID="Label2" runat="server" Text="BİZE ULAŞIN" CssClass="auto-style31" Font-Size="40pt" Font-Names="Segoe UI"></asp:Label>
                </strong>
            </div>


            <div id="labellerin altındaki div" class="auto-style51">

            
                <table class="auto-style35">
                    <tr>
                        <td class="auto-style47">
                            <asp:Label ID="Label3" runat="server" Text="Ad Soyad" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large"></asp:Label>
                        </td>
                        <td class="auto-style48">
                            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="461px" CssClass="tb8" TextMode="MultiLine" ToolTip="Sadece karakter giriniz." ValidationGroup="iletisim"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="iletisim"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ToolTip="Sadece karakter girebilirsiniz." ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                        </td>
                       <%-- <td>&nbsp;</td>
                         <td>&nbsp;</td>--%>
                    </tr>
                    <tr>
                        <td class="auto-style49">
                            <strong>
                            <asp:Label ID="Label4" runat="server" Text="Telefon Numarası" Font-Names="Segoe UI" Font-Size="Large"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style50">
                            <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="461px" CssClass="tb8"  TextMode="Number" MaxLength="11" ValidationGroup="iletisim"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="iletisim"></asp:RequiredFieldValidator>
                        </td>
                       
                    </tr>
                    <tr>
                        <td class="auto-style36">
                            <strong>
                            <asp:Label ID="Label5" runat="server" Text="Konu" Font-Names="Segoe UI" Font-Size="Large"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style37">
                            <asp:TextBox ID="TextBox3" runat="server" Height="38px" TextMode="MultiLine" Width="459px" CssClass="tb8" MaxLength="20" ValidationGroup="iletisim"></asp:TextBox>
                        </td>
                       
                        
                    </tr>


                    <tr>
                        <td class="auto-style36">
                            <strong>
                            <asp:Label ID="Label6" runat="server" Text="Mesaj" Font-Names="Segoe UI" Font-Size="Large"></asp:Label>
                            </strong>
                        </td>
                        <td class="auto-style37">
                            <asp:TextBox ID="TextBox4" runat="server" Height="74px" TextMode="MultiLine" Width="459px" CssClass="tb8" MaxLength="200" ValidationGroup="iletisim"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ValidationGroup="iletisim"></asp:RequiredFieldValidator>
                        </td>
                       
                        
                    </tr>


                     <tr>
                        <td class="auto-style44">
                           
                        </td>
                        <td class="auto-style45">
                           
                        </td>
                          
                    </tr>
                    <tr>
                        <td class="auto-style36">
                           
                        </td>
                        <td class="auto-style37">
                            <asp:Button ID="Button1" runat="server" Text="GÖNDER" CssClass="auto-style39" Width="187px" OnClick="Button1_Click" Height="35px" ValidationGroup="iletisim" />
                        </td>
                      
                    </tr>
                </table>
            </div>



            <div>
            <div id="butonun altındaki div" class="auto-style42" style="margin-left:400px">
                  <style type="text/css">
#div1  {float: left;
background: #edeaea;
height: 100px;
width: 250px;
}
#div2  {float: left;
margin:auto;
background: #edeaea;
height: 100px;
width: 250px;
}
#div3  {float: left;
background: #edeaea;
height: 100px;
width: 250px;
}
                      .auto-style43 {
                          width: 279px;
                      }
                      .auto-style44 {
                          width: 125px;
                          height: 33px;
                      }
                      .auto-style45 {
                          width: 323px;
                          height: 33px;
                      }
                      .auto-style47 {
        width: 125px;
        height: 36px;
    }
    .auto-style48 {
        width: 323px;
        height: 36px;
    }
    .auto-style49 {
        width: 125px;
        height: 34px;
    }
    .auto-style50 {
        width: 323px;
        height: 34px;
    }
    .auto-style51 {
        height: 375px;
        float: left;
        width: 99%;
        margin: auto;
        background: #e9ece5;
    }
                      .auto-style52 {
        height: 900px;
        margin-top: 0px;
    }
                      </style>
  <div id="div1" class="auto-style43">
       <a href="https://www.facebook.com/thelemontreekids/" target="_blank" style="color:black;">
    <i class="fa fa-facebook"  style="font-size:50px">   
       
       
     </i>
            </a>
 </div>
<div id="div2">
    <a href="https://www.instagram.com/lemontree_by_twochefstravels/?hl=tr"  target="_blank" style="color:black;">
    <i class="fa fa-instagram" style="font-size:50px">
    </i>
        </a>

</div>
<div id="div3">
    <a href="https://twitter.com/search?q=the%20lemon%20tree&src=typd " target="_blank" style="color:black;">

     <i class="fa fa-twitter" style="font-size:50px">


   </i>
    </a>
</div>
  

            </div>



            </div>



  
    </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style29 {
            height: 1348px;
        }
        .auto-style30 {
            width: 1496px;
            height: 345px;
        margin-top: 86px;
    }
        .auto-style31 {
            font-size: xx-large;
        }
        .auto-style32 {
            width: 168px;
            height: 68px;
            margin-left: 540px;
            margin-top: 0px;
        }
        .auto-style35 {
            width: 956px;
            height: 203px;
            margin-left: 248px;
            margin-top: 15px;
        }
        .auto-style36 {
            width: 125px;
        }
        .auto-style37 {
            width: 323px;
        }
        .auto-style39 {
        margin-left: 130px;
    }
        .auto-style42 {
            height: 95px;
            margin-top: 0px;
        }
    </style>
</asp:Content>