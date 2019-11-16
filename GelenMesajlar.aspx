<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="GelenMesajlar.aspx.cs" Inherits="GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 245px; width: 800px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="iletisimid" DataSourceID="SqlDataSource1" ForeColor="Black" Width="784px" Height="264px">
        <Columns>
            <asp:BoundField DataField="GorusAdSoyad" HeaderText="Ad Soyad" SortExpression="GorusAdSoyad" />
            <asp:BoundField DataField="GorusNumara" HeaderText="Numara" SortExpression="GorusNumara" />
            <asp:BoundField DataField="GorusKonu" HeaderText="Konu" SortExpression="GorusKonu" />
            <asp:BoundField DataField="GorusMesaj" HeaderText="Mesaj" SortExpression="GorusMesaj" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>" SelectCommand="SELECT [GorusAdSoyad], [GorusNumara], [GorusKonu], [GorusMesaj], [iletisimid] FROM [Table_Gorus]"></asp:SqlDataSource>
        </div>
</asp:Content>

