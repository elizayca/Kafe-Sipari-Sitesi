<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="Galeri.aspx.cs" Inherits="Galeri" %>

 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>&nbsp;&nbsp;&nbsp; <span class="auto-style52"  style="font-size:40px;color:#3a3b36;font-family:'Segoe UI'">GALERİ</span></h1>
    <hr class="auto-style51" style="background-color: #3a3b36; height: 7px; margin-top: 0px;">

    <div class="auto-style37" style="background-color:#e9ece5; ">
        <asp:DataList runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
            <itemtemplate>
               
        <div style="width:270px; height:270px ; margin-right:20px; margin-top:50px; margin-left:35px; border-style:solid ;border-color:#b3c2bf">
            <asp:Image runat="server" id="img" style=" width:270px; height:270px" ImageUrl='<%# Eval("GaleriResim") %>' CssClass="aw-zoom" />

        </div>
                 
                </itemtemplate>
            </asp:DataList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>"  SelectCommand="SELECT [GaleriResim] FROM [Table_Galeri]"></asp:SqlDataSource>
        <br />
        <br />
        <hr class="auto-style51" style="background-color: #3a3b36; height: 7px; margin-top: 0px;"> 

    </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style36 {
            height: -201px;
            margin-left: 4px;
        }
        .auto-style37 {
            margin-top: 25px;
        }
.aw-zoom
{
    position:relative;
    -webkit-transform: scale(1);
    -ms-transform: scale(1);
    -moz-transform: scale(1);
    transition: all .3s ease-in;
    -moz-transition: all .3s ease-in;
    -webkit-transition: all .3s ease-in;
    -ms-transition:all .3s ease-in;
    
}

.aw-zoom:hover
{
    z-index:2;
    -webkit-transform: scale(1.5);
    -ms-transform: scale(1.5);  
    -moz-transform: scale(1.5);
    transform: scale(1.5);
}

        
    </style>
</asp:Content>