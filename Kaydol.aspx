<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="Kaydol.aspx.cs" Inherits="Kaydol" %>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="myModal" class="auto-style47">
  <div class="modal-content">


      <a href="Anasayfa.aspx">
    <span class="close">&times;</span>
          </a>
    <p  class="label_yan">KAYDOL</p>
      <hr style="background-color: #000000; font-size: x-large;"/>
       

      <table class="auto-style61" >
          <tr>
              <td class="auto-style64">
                  <asp:Label ID="Label1" CssClass="label_yan" runat="server" Text="Ad Soyad "></asp:Label>
              </td>
              <td class="auto-style65">
                  <asp:TextBox ID="txtKullaniciAdSoyadd" runat="server" CssClass="auto-style58" Width="390px" Height="35px" ValidationGroup="kaydol"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKullaniciAdSoyadd" ErrorMessage="*" ValidationGroup="kaydol"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtKullaniciAdSoyadd" ToolTip="Sadece karakter giriniz." ValidationGroup="kaydol" ErrorMessage="!" ValidationExpression="^[a-zA-Z''-'\s]{1,40}"></asp:RegularExpressionValidator>
                  
              </td>
          </tr>
          <tr>
              <td class="auto-style50">
                  <asp:Label CssClass="label_yan" ID="Label2" runat="server" Text="Adres"></asp:Label>
              </td>
              <td class="auto-style51">
                   <asp:TextBox ID="txtKullaniciadres" runat="server" CssClass="auto-style57" Width="390px" Height="35px" ValidationGroup="kaydol" TextMode="MultiLine" OnTextChanged="txtKullaniciadres_TextChanged"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="*" ValidationGroup="kaydol" ControlToValidate="txtKullaniciadres"></asp:RequiredFieldValidator>

                 
              </td>
          </tr>
          <tr>
              <td class="auto-style50">
                  <asp:Label ID="Label3" CssClass="label_yan" runat="server" Text="Mail"></asp:Label>
              </td>
              <td class="auto-style51">
                    <asp:TextBox ID="txtKullaniciMail" runat="server" CssClass="auto-style52" Width="390px" Height="35px" ValidationGroup="kaydol"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ErrorMessage="*" ValidationGroup="kaydol" ControlToValidate="txtKullaniciMail"></asp:RequiredFieldValidator>

                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtKullaniciMail" ErrorMessage="!" ToolTip="Doğru bir e-posta adresi giriniz." ValidationExpression="^[a-zA-Z0-9]{1,10}@[a-zA-Z]{1,10}.(com|org)$" ValidationGroup="kaydol"></asp:RegularExpressionValidator>

                
              </td>
          </tr>

          <tr>
              <td class="auto-style66">
                  <asp:Label ID="Label4" CssClass="label_yan" runat="server" Text="Doğum Tarihi "></asp:Label>
              </td>
              <td class="auto-style67">
                    <asp:TextBox ID="txtKullaniciDogum" runat="server" CssClass="auto-style48" Width="390px" Height="35px" ValidationGroup="kaydol" TextMode="Date"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ErrorMessage="*" ValidationGroup="kaydol" ControlToValidate="txtKullaniciDogum"></asp:RequiredFieldValidator>

                
              </td>
          </tr>

          <tr>
              <td class="auto-style55">
                  <asp:Label ID="Label5" CssClass="label_yan" runat="server" Text="Kullanıcı Adı "></asp:Label>
              </td>
              <td class="auto-style56">
                  <asp:TextBox ID="txtKullaniciAd" runat="server" CssClass="auto-style52" Width="390px" Height="35px" ValidationGroup="kaydol"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ErrorMessage="*" ValidationGroup="kaydol" ControlToValidate="txtKullaniciAd"></asp:RequiredFieldValidator>

                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtKullaniciAd" ErrorMessage="!" ToolTip="Sadece harf ve rakam özel karakter kullanmayınız." ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="kaydol"></asp:RegularExpressionValidator>

                  
              </td>
          </tr>

          <tr>
              <td class="auto-style39">
                  <asp:Label ID="Label6" CssClass="label_yan" runat="server" Text="Şifre "></asp:Label>
              </td>
              <td class="auto-style60">
                  <asp:TextBox ID="txtKullaniciSifre" runat="server" CssClass="auto-style58" Width="390px" Height="35px" TextMode="Password" ValidationGroup="kaydol"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  ErrorMessage="*" ValidationGroup="kaydol" ControlToValidate="txtKullaniciSifre"></asp:RequiredFieldValidator>

                  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtKullaniciSifre" ErrorMessage="!" ToolTip="8 ile 10 arası karakter içermelidir,özel karakter kullanmayınız." ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="kaydol"></asp:RegularExpressionValidator>

                  
              </td>
          </tr>



      </table>
       

      <br />
      <asp:Button ID="btn_kaydol" ValidationGroup="kaydol" runat="server" CssClass="auto-style44" Height="43px" Text="Kaydol" Width="180px" OnClick="btn_kaydol_Click" />
       

  </div>
</div>
    
    <style>
    /* Popup (arka plan) */
.modal {
    display: flex; /* Varsayılan olarak gizlidir */
    position: fixed; /* Yerinde kal */
    z-index:1; /* Üstte */
    left:0;
    top: 0;
    width:100%; /* Ful Genişlik */
    height:100%; /* Ful Yükseklik */
    overflow: auto; /* Gerekirse kaydırmayı etkinleştir */
    background-color: rgb(0,0,0); /* Yedek renk */
    background-color: rgba(0,0,0,0.5); /* Siyah w / opaklık */
}
/* İçerik / Kutu */
.modal-content {
    border:thick;
    border-color:red;
    background-color: #fefefe;
    margin: 10% auto; /* % 15 üstten ve ortalanmış */
    padding : 20px;
    border: 1px solid #888;
    width: 50%; /* Ekran boyutuna bağlı olarak daha fazla veya daha az olabilir */
    height:550px;
}
/* Kapat Düğmesi */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}
.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

        .auto-style39 {
            width: 227px;
        }
        


        </style>

    <script>


        // Popup Al
        var modal = document.getElementById('myModal');
        // Kipi açan düğmeyi al
        var btn = document.getElementById("blog");
        // Kipi kapatan <span> öğesini edinin
        var span = document.getElementsByClassName("close")[0];
        // Kullanıcı düğmeyi tıklattığında
        btn.onclick = function () {
            modal.style.display = "block";
        }
        // Kullanıcı <span> (x) düğmesini tıkladığında, popup
        span.onclick = function () {
            modal.style.display = "none";
        }
        // Kullanıcı modelden başka herhangi bir yeri tıklattıysa, onu kapatın.
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>


    <style>




        .auto-style44 {
            /* Remove borders */border-style: none;
            border-color: inherit;
            border-width: medium;
            color: black; /* Add a text color */
            padding: 18px 30px;
/* Add some padding */cursor: pointer;
            margin-left: 247px;
        }

        .label_yan{
            font-size:20px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font:bold;
        }


        .txt_yan{
            border-style:solid;
            border-color:#e9ece5;
            background:#ffffff;

        }


        .auto-style47 {
            display: flex;
            position: fixed;
            z-index: 1;
            left: 0;
            top: -88px;
            width: 100%;
            height: 170%;
            overflow: auto;
            margin-bottom: 104px;
            background-color: rgba(0, 0, 0, 0.5);
        }


        .auto-style48 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-top: 2px;
            margin-bottom: 2px;
            margin-left: 6px;
        }
        .auto-style50 {
            height: 39px;
            width: 227px;
        }
        .auto-style51 {
            height: 39px;
            width: 431px;
        }
        .auto-style52 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-top: 9px;
            margin-left: 6px;
        }
        .auto-style55 {
            width: 227px;
            height: 47px;
        }
        .auto-style56 {
            height: 47px;
            width: 431px;
        }
        .auto-style57 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-top: 3px;
            margin-left: 6px;
        }


        .auto-style58 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-left: 6px;
            margin-top: 0px;
        }
        

        .auto-style60 {
            width: 431px;
        }
        .auto-style61 {
            width: 582px;
            height: 313px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
        }


        .auto-style64 {
            height: 33px;
            width: 227px;
        }
        .auto-style65 {
            height: 33px;
            width: 431px;
        }
        .auto-style66 {
            height: 38px;
            width: 227px;
        }
        .auto-style67 {
            height: 38px;
            width: 431px;
        }


    </style>


</asp:Content>