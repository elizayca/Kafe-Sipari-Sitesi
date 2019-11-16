<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="SiparisBilgileri.aspx.cs" Inherits="SiparisBilgileri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="472px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="Kullaniciid" HeaderText="Kullanıcı ID" SortExpression="Kullaniciid" />
                <asp:BoundField DataField="SiparisAraToplam" HeaderText="AraToplam" SortExpression="SiparisAraToplam" />
                <asp:BoundField DataField="SiparisAd" HeaderText="Ad" SortExpression="SiparisAd" />
                <asp:BoundField DataField="SiparisAdet" HeaderText="Adet" SortExpression="SiparisAdet" />
                <asp:BoundField DataField="SiparisGenelToplam" HeaderText="GenelToplam" SortExpression="SiparisGenelToplam" />
                <asp:BoundField DataField="SiparisTarih" HeaderText="Tarih" SortExpression="SiparisTarih" />
            </Columns>

            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>" SelectCommand="SELECT [Kullaniciid], [SiparisAraToplam], [SiparisAd], [SiparisAdet], [SiparisGenelToplam], [SiparisTarih] FROM [Table_Siparis]"></asp:SqlDataSource>
    </div>
</asp:Content>

