<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="myModal" class="modal">
  <div class="auto-style48">
      <a href="Admin.aspx">
    <span class="close">&times;</span>
          </a>
    <p  class="label_yan">GİRİŞ YAP</p>
      <hr style="background-color: #000000; font-size: x-large;"/>
       

      <table>
          <tr>
              <td class="auto-style49">
                  <asp:Label ID="Label1" CssClass="label_yan" runat="server" Text="Kullanıcı Adı: "></asp:Label>
              </td>
              <td class="auto-style50">
                  <asp:TextBox ID="txtAdminAd" runat="server" CssClass="txt_yan" Width="390px" Height="35px" ValidationGroup="giris"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="!" ControlToValidate="txtAdminAd" ValidationGroup="giris"></asp:RequiredFieldValidator>
                  </td>
          </tr>
          <tr>
              <td class="auto-style40">
                  <asp:Label CssClass="label_yan" ID="Label2" runat="server" Text="Şifre: "></asp:Label>
              </td>
              <td class="auto-style37">
                 
                 <asp:TextBox ID="txtAdminSifre" runat="server" CssClass="txt_yan" Width="390px" Height="35px" ValidationGroup="giris" TextMode="Password"></asp:TextBox>
                  
              </td>
          </tr>
          <tr>
              <td class="auto-style39">
                  <asp:Label ID="Label3" CssClass="label_yan" runat="server" Text="Şifre Tekrar: "></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="txtAdminsifreee" runat="server" CssClass="auto-style51" Width="390px" Height="35px" ValidationGroup="giris" TextMode="Password"></asp:TextBox>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="!" ControlToCompare="txtAdminSifre" ControlToValidate="txtAdminSifreee" ValidationGroup="giris"></asp:CompareValidator>
                  </td>
          </tr>
      </table>
       

      <br />
      <asp:Button ID="Buttongrs" runat="server" CssClass="auto-style44" style="margin-left:250px" Height="43px" Text="Giriş" Width="180px" OnClick="Buttongrs_Click" ValidationGroup="giris" />
       

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
    height:330px;
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

        .auto-style37 {
            height: 55px;
        }
        .auto-style39 {
            width: 160px;
        }
        .auto-style40 {
            height: 55px;
            width: 160px;
        }



        </style>

    <script>


        // Popup Al
        var modal = document.getElementById('myModal');
        // Kipi açan düğmeyi al
        var btn = document.getElementById("about");
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
            margin-left: 185px;
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


        .auto-style48 {
            width: 52%;
            height: 330px;
            border: 1px solid #888;
            margin: 10% auto;
            padding: 20px;
            background-color: #fefefe;
        }


        .auto-style49 {
            height: 51px;
            width: 160px;
        }
        .auto-style50 {
            height: 51px;
        }
        .auto-style51 {
            border-style: solid;
            border-color: #e9ece5;
            background: #ffffff;
            margin-top: 6px;
        }


    </style>




</asp:Content>

