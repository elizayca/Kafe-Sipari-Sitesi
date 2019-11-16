<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="KayitliKullanici.aspx.cs" Inherits="KayitliKullanici" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 801px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Kullaniciid" DataSourceID="SqlDataSource1" ForeColor="Black" Height="197px" Width="758px">
            <Columns>
                <asp:BoundField DataField="KullaniciAdSoyad" HeaderText="AdSoyad" SortExpression="KullaniciAdSoyad" />
                <asp:BoundField DataField="KullaniciAdres" HeaderText="Adres" SortExpression="KullaniciAdres" />
                <asp:BoundField DataField="KullaniciMail" HeaderText="Mail" SortExpression="KullaniciMail" />
                <asp:BoundField DataField="KullaniciDogum" HeaderText="Doğum Tarihi" SortExpression="KullaniciDogum" />
                <asp:BoundField DataField="KullaniciSifre" HeaderText="Şifre" SortExpression="KullaniciSifre" />
                <asp:BoundField DataField="KullaniciAd" HeaderText="Kullanıcı Ad" SortExpression="KullaniciAd" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>" SelectCommand="SELECT [Kullaniciid], [KullaniciAdSoyad], [KullaniciAdres], [KullaniciMail], [KullaniciDogum], [KullaniciSifre], [KullaniciAd] FROM [Table_Kaydol]"></asp:SqlDataSource>
    </div>
</asp:Content>

