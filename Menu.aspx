<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>&nbsp;&nbsp;&nbsp; <span class="auto-style52" style="font-size: 40px ; color:#3a3b36 ; font-family:'Segoe UI'" >MENÜLER</span></h1>
    <hr class="auto-style51" style="background-color: #3a3b36; height: 9px; margin-top: 0px;">
   

    <div >
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>" SelectCommand="SELECT [YemekResim], [YemekAd],[Yemekid] FROM [Table_Menu]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" RepeatColumns="3" CssClass="auto-style53" Height="880px">
              <ItemTemplate>
                 
                       <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>" >
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("YemekResim") %>' CssClass="img" style="width:350px; height:350px; margin-left:50px; margin-top:25px; border-color:#3a3b36;border-style:solid; border-width:10px;"/>
               
                 </a>
                 
                  <asp:Label ID="YemekAdLabel" runat="server" Text='<%# Eval("YemekAd") %>' style="margin-left:160px ; font-size:24px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-right:50px"/>
             
                 
                      
                  </ItemTemplate>
              </asp:DataList>
                   
        </div>
             <hr style="background-color: #3a3b36; " class="auto-style54">

</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    
    <style type="text/css">
        .auto-style51 {
            height: 10px;
        }
        .auto-style52 {
            font-size: xx-large;
        }
        .img{
            border-radius:50%;
        }
        .auto-style53 {
            margin-top: 1px;
        }
        .auto-style54 {
            height: 9px;
            margin-top: 33px;
        margin-bottom: 0px;
    }
        </style>


</asp:Content>