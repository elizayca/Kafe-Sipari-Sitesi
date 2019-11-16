<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="Hesap.aspx.cs" Inherits="Hesap" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="myModal" class="auto-style47">
  <div class="modal-content">
      <a href="Anasayfa.aspx">
    <span class="close">&times;</span>
          </a>
    <p  class="label_yan">HESABIM</p>
      <hr style="background-color: #000000; font-size: x-large;"/>
       

      <table >
          <tr>
              <td class="auto-style45">
                  <asp:Label ID="Label1" CssClass="label_yan" runat="server" Text="Ad Soyad : "></asp:Label>
              </td>
              <td class="auto-style46">
                  <asp:TextBox ID="txtKullaniciAdSoyadd" runat="server" CssClass="txt_yan" Width="390px" Height="35px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style50">
                  <asp:Label CssClass="label_yan" ID="Label2" runat="server" Text="Adres: "></asp:Label>
              </td>
              <td class="auto-style51">
                  <asp:TextBox ID="txtKullaniciadres" runat="server" CssClass="auto-style57" Width="390px" Height="35px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style40">
                  <asp:Label ID="Label3" CssClass="label_yan" runat="server" Text="Mail: "></asp:Label>
              </td>
              <td class="auto-style37">
                  <asp:TextBox ID="txtKullaniciMail" runat="server" CssClass="auto-style52" Width="390px" Height="35px"></asp:TextBox>
              </td>
          </tr>

          <tr>
              <td class="auto-style53">
                  <asp:Label ID="Label4" CssClass="label_yan" runat="server" Text="Doğum Tarihi: "></asp:Label>
              </td>
              <td class="auto-style54">
                  <asp:TextBox ID="txtKullaniciDogum" runat="server" CssClass="auto-style48" Width="390px" Height="35px"></asp:TextBox>
              </td>
          </tr>

          <tr>
              <td class="auto-style55">
                  <asp:Label ID="Label5" CssClass="label_yan" runat="server" Text="Kullanıcı Adı: "></asp:Label>
              </td>
              <td class="auto-style56">
                  <asp:TextBox ID="txtKullaniciAd" runat="server" CssClass="txt_yan" Width="390px" Height="35px"></asp:TextBox>
              </td>
          </tr>

          <tr>
              <td class="auto-style39">
                  <asp:Label ID="Label6" CssClass="label_yan" runat="server" Text="Şifre: "></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="txtKullaniciSifre" runat="server" CssClass="auto-style49" Width="390px" Height="35px"></asp:TextBox>
              </td>
          </tr>



      </table>
       

      <br />
      <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Names="Segoe UI">Çıkış Yap</asp:LinkButton>
      <asp:Button ID="butonguncelle" runat="server" CssClass="auto-style44" Height="43px" Text="Güncelle" Width="180px" OnClick="butonguncelle_Click" />
       

      <br />
     
       

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
    height:500px;
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

        .auto-style36 {
            width: 127%;
            margin-left: 0px;
        }
        .auto-style37 {
            height: 50px;
        }
        .auto-style39 {
            width: 160px;
        }
        .auto-style40 {
            height: 50px;
            width: 160px;
        }



        </style>

    <script>


        // Popup Al
        var modal = document.getElementById('myModal');
        // Kipi açan düğmeyi al
        var btn = document.getElementById("projects");
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
            margin-left: 200px;
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


        .auto-style45 {
            height: 27px;
            width: 160px;
        }
        .auto-style46 {
            height: 27px;
        }


        .auto-style47 {
            display: flex;
            position: fixed;
            z-index: 1;
            left: 0;
            top: -88px;
            width: 100%;
            height: 146%;
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
        }
        .auto-style49 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-top: 4px;
        }
        .auto-style50 {
            height: 40px;
            width: 160px;
        }
        .auto-style51 {
            height: 40px;
        }
        .auto-style52 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-top: 2px;
        }
        .auto-style53 {
            height: 39px;
            width: 160px;
        }
        .auto-style54 {
            height: 39px;
        }
        .auto-style55 {
            width: 160px;
            height: 47px;
        }
        .auto-style56 {
            height: 47px;
        }
        .auto-style57 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-top: 3px;
        }


    </style>



</asp:Content>

