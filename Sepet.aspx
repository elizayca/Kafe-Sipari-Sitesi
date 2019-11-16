<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="Sepet.aspx.cs" Inherits="Sepet" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    
    <div class="auto-style38">
    <h1>&nbsp;&nbsp;&nbsp; <span class="auto-style52"  style="font-size:40px;color:#3a3b36;font-family:'Segoe UI'">SİPARİŞ DETAYLARI</span></h1>
    <hr class="auto-style51" style="background-color: #3a3b36; height: 9px; margin-top: 0px;">
        

    <div >

        <div>
             
            
            <asp:GridView ID="GridView1" runat="server" Height="254px" Width="659px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" AutoGenerateColumns="False" CellSpacing="2"    >
               <Columns>

                    <%--<asp:TemplateField HeaderText="Adet">
            <ItemTemplate>
                <asp:DropDownList ID="dropdownadet" runat="server"  Height="18px" Width="52px" AppendDataBoundItems="False" AutoPostBack="True" OnSelectedIndexChanged="dropdownadet_SelectedIndexChanged1">
                    <asp:ListItem Text="1" Value="1">1</asp:ListItem>
                    <asp:ListItem Text="2" Value="2">2</asp:ListItem>
                    <asp:ListItem Text="3" Value="3">3</asp:ListItem>
                    <asp:ListItem Text="4" Value="4">4</asp:ListItem>
                    <asp:ListItem Text="5" Value="5">5</asp:ListItem>
                </asp:DropDownList>
           </ItemTemplate>
        </asp:TemplateField>--%>


                   


                   <asp:ImageField DataImageUrlField="UrunResim" HeaderText="ÜrünResim">
                   
                        <ControlStyle Height="150px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="UrunAd" HeaderText="Ürün Ad" />
       

                   


                   <asp:BoundField DataField="UrunFiyat" HeaderText="Fiyat" />

       <asp:TemplateField >
        <ItemTemplate>
            <asp:Button ID="Button3" runat="server" Text="Sil" OnClick="Button3_Click" />
        </ItemTemplate>
    </asp:TemplateField>

                   


                  

                   


               </Columns>
                
                   
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                
            </asp:GridView>
           
           
             
           
            <div>
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#333333" BorderStyle="Solid" Height="46px" OnClick="Button1_Click" Text="Alışverişi Tamamla" Width="162px" />
                <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="#333333" BorderStyle="Solid" Height="46px" OnClick="Button2_Click" Text="Alışverişe Devam Et" Width="162px" />



            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Names="Segoe UI" Text="*Ödeme şekli sadece kapıda ödeme şeklindedir."></asp:Label>



            &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>



            </div>


        </div>

    </div>
  
</div>

   
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style38 {
            height: 339px;
        }
        </style>
</asp:Content>











