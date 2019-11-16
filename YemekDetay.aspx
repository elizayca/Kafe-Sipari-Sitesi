<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa2.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        
                
    <div class="auto-style35" style="margin-left:150px; ">
        
        <asp:Image  id="imgdet" runat="server"   CssClass="auto-style40"  width="350px" Height="350px" BorderStyle="Inset" BorderColor="Black" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
        <div >
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
        <asp:Label ID="labelad" runat="server" CssClass="auto-style41" Font-Names="Segoe UI"></asp:Label>
         <hr class="auto-style51" style="background-color: #3a3b36; height: 2px; margin-top: 0px;">

            <br />
            <br />
            <br />

            <br />
            <br />
        

            <asp:DataList runat="server"   DataSourceID="SqlDataSource1"  CssClass ="auto-style39" RepeatColumns="1" RepeatDirection="Horizontal">
                <ItemTemplate>
                    
                    &nbsp;<asp:Label ID="Labelyemekbilgi" runat="server" Text='<%# Eval("YemekDetayBilgi") %>'></asp:Label>
                    .......&nbsp;<strong><asp:Label ID="Labelyemekdetay" runat="server" Text='<%# Eval("YemekDetayFiyat") %>' Font-Names="Arial" />
                    </strong>
                    <br />
                    <br />
         </ItemTemplate>
        </asp:DataList>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbo_projeödeviConnectionString %>" SelectCommand="SELECT [YemekDetayBilgi], [YemekDetayFiyat] FROM [Table_YemekDetay] WHERE ([Yemekid] = @Yemekid)">

               <SelectParameters>
                   <asp:QueryStringParameter Name="Yemekid" QueryStringField="Yemekid" Type="Int32" />
               </SelectParameters>
                
            </asp:SqlDataSource>
            
        </div>
        
       
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style35 {
            height: 398px;
            margin-top: 130px;
            float: left;
        }
        .img{
            border-radius:50%;
        }
        .auto-style36 {
            height: 626px;
            
            margin-left: 618px;
            width: 656px;
        }
        .auto-style38 {
            height: 1361px;
            margin-top: 85px;
        }
        .auto-style39 {
            font-size: 30px;
            margin-top: 0px;
        }
        .auto-style40 {
            border-radius: 50%;
            margin-top: 135px;
        }
        .auto-style41 {
            font-size: xx-large;
        }
    </style>
</asp:Content>