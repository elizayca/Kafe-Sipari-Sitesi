<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <div class="auto-style25" id="slayt">
    <div class="auto-style43 sliderKonum" >
        <div class="slider" style="left: 0px; top:0px; width:2823px ">
            
            <a href="<%# Eval("AnasayfaResim") %>">
            <asp:DataList runat="server"  DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CssClass="auto-style45"  >
                <ItemTemplate>
                <asp:Image ID="Image1" runat="server" BorderStyle="Solid" Height="400px" Width="780px" ImageUrl='<%# Eval("AnasayfaResim") %>'/>
                    
                </ItemTemplate>
                </asp:DataList>
                </a>

       </div>
    </div>

        <div class="auto-style39">
  
            <br />
            <br />
            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>" SelectCommand="SELECT [AnasayfaResim] FROM [Table_AnasayfaResim]"></asp:SqlDataSource>
<div class="auto-style37">


    <asp:DataList ID="DataList3" runat="server" CssClass="auto-style42" Width="1318px" Height="115px" DataSourceID="SqlDataSource2" RepeatColumns="2" style="mar">
                <ItemTemplate>
                    <asp:Label ID="HakkimizdaAdLabel" runat="server" style="font-size:30px; font-family:'Segoe UI'"  Text='<%# Eval("HakkimizdaAd") %>' Width="307px" />
                    &nbsp;<br />
                    <br />
                    <br />
                    <asp:Label ID="HakkimizdaBilgiLabel" runat="server" style="font-size:20px; font-family:'Segoe UI'"  Text='<%# Eval("HakkimizdaBilgi") %>'></asp:Label>
                    <br />
                </ItemTemplate>
            </asp:DataList>
             
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString2 %>" SelectCommand="SELECT [HakkimizdaBilgi], [HakkimizdaAd] FROM [Table_Hakkimizda]"></asp:SqlDataSource>

    </div>
        </div>

</div>
<div style="background:#e9ece5;" class="auto-style31">
    
    <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" Height="686px" CssClass="auto-style44">
         <ItemTemplate>

             <div style="margin-left:110px">

             <asp:Image ID="Image2" class="img" runat="server" Height="301px" ImageUrl='<%# Eval("AnasayfaAltResim") %>' Width="299px"/>
            </div>
                 &nbsp;<br />
             <br />

         </ItemTemplate>
    </asp:DataList>
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString3 %>" SelectCommand="SELECT [AnasayfaAltResim] FROM [Table_AnasayfaResim]"></asp:SqlDataSource>
    

    </div>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style25 {
            margin: 0 0px;
            slider: 1600px;
            height: 911px;
            float: left;
            width: 1400px;
            overflow:hidden;
            background: #e9ece5;
        }
    .img {
    border-radius:30%;
}
        .auto-style29 {
            margin-left: 327px;
            margin-top: 113px;
        }
        .auto-style31{
        height: 646px;
        float: left;
        width:1361px;
        overflow:hidden;
        margin-left: 0px;
        background: #e9ece5;
            margin-top: 0px;
        }
        .auto-style37 {
            width: 1365px;
            height: 207px;
            margin-left: 14px;
        margin-top: 5px;
    }
        .auto-style39 {
            float: left;
            width: 1372px;
            margin-top: 0px;
            background: #e9ece5;
        }
        .auto-style42 {
        position: relative;
        width: 1000px;
        height: 560px; overflow: hidden;
        float: none;
        left: 0px;
        top: 0px;
    }
    .auto-style43 {
        position: relative;
        width: 1394px;
        height: 558px; 
        overflow: hidden;
        float: none;
        left: 0px;
        top: 0px;
            margin-right: 43px;
        }
        .auto-style44 {
        margin-top: 0px;
        margin-bottom: 0px;
    }
        .auto-style45 {
        margin-top: 13px;
    }
        </style>
</asp:Content>