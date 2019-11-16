<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="Siparis.aspx.cs" Inherits="Siparis" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style37">
   <h1>&nbsp;&nbsp;&nbsp; <span class="auto-style52"  style="font-size:40px;color:#3a3b36;font-family:'Segoe UI'">SİPARİŞ</span></h1>
    <hr class="auto-style51" style="background-color: #3a3b36; height: 9px; margin-top: 0px;">
        
        
        <asp:DataList ID="DataListsiparis" runat="server" DataSourceID="SqlDataSource1"  HorizontalAlign="Left" RepeatColumns="3" RepeatDirection="Horizontal">
       <ItemTemplate>
           <div style="margin-left:80px; margin-right:50px; margin-bottom:10px; font-family: 'segoe UI', Tahoma, Geneva, Verdana, sans-serif;">
           <asp:Image ID="imgsiparis" runat="server" style="border:solid" border-color="#808080" Height="280px" Width="300px" ImageUrl='<%# Eval("UrunResim") %>' CssClass="img-bir" />
           <br />
           &nbsp;<asp:Label ID="UrunAdLabel" runat="server" Text='<%# Eval("UrunAd") %>' Font-Names="Segoe UI" />
           &nbsp;&nbsp;<asp:Label ID="UrunFiyatLabel" runat="server" Text='<%# Eval("UrunFiyat") %>' CssClass="auto-style38" Font-Names="Segoe UI" ForeColor="Blue" />
               <asp:Label ID="Label1" runat="server" Font-Names="Arial" ForeColor="Blue" Text="₺"></asp:Label>
               &nbsp;<br />&nbsp;&nbsp;<a href="Sepet.aspx?Urunid=<%#Eval("Urunid") %>" style="color: #0000FF">Sepete Ekle</a>
              <%-- <asp:Button Text="SepeteEkle" runat="server"  OnClick="Unnamed1_Click" />--%>
                  
                 
                                                                                                
               
           <br />
           <br />
           <br />
           </div>
  </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>" SelectCommand="SELECT [UrunAd], [UrunFiyat], [UrunResim],[Urunid] FROM [Table_Urun]"></asp:SqlDataSource>
    </div>  
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style37 {
        height: 38px;
        margin-left: 0px;
        margin-top: 0px;
    }
        .auto-style38 {
        color: black;
        background-color: #E9ECE5;
    }
        </style>
</asp:Content>


