using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sepet : System.Web.UI.Page
{
    sqlbgl bgl = new sqlbgl();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Kullaniciid"] == null)
        {

            Response.Redirect("Giris.aspx");
                        
                
        }
        else
        {



            if (!Page.IsPostBack)
            {

                if (Request.QueryString["Urunid"] != null && Session["siparisler"] != null)
                {
                    string[] explode = Session["siparisler"].ToString().Split(',');
                    bool flag = false;
                    for (int i = 0; i < explode.Length; i++)
                    {
                        if (explode[i] == Request.QueryString["Urunid"])
                        {
                            flag = true;
                        }

                    }
                    if (!flag)
                    {
                        Session["siparisler"] = Session["siparisler"] + Request.QueryString["Urunid"] + ",";
                    }

                }
                else if (Request.QueryString["Urunid"] != null)
                {
                    Session["siparisler"] = Session["siparisler"] + Request.QueryString["Urunid"] + ",";
                }

                if (Session["siparisler"] != null)
                {
                    string text = Session["siparisler"].ToString().Substring(0, Session["siparisler"].ToString().Length - 1);
                    SqlCommand cmd = new SqlCommand("Select* From Table_Urun Where Urunid in(" + text + ")", bgl.baglan());

                    DataTable dt = new DataTable();
                    SqlDataAdapter adp = new SqlDataAdapter(cmd);
                    adp.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
                
            }

        }

    }

    protected void dropdownadet_SelectedIndexChanged(object sender, EventArgs e)
    {
        
     
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Siparis.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                string Urunadi = HttpUtility.HtmlDecode(GridView1.Rows[i].Cells[1].Text).ToString();
                string UrunFiyat = (GridView1.Rows[i].Cells[3].Text).ToString();
              
                SqlCommand komut = new SqlCommand("insert into Table_Siparis(SiparisAd,SiparisAraToplam,Kullaniciid) values (@p1,@p2,@p5)", bgl.baglan());
                komut.Parameters.AddWithValue("@p1", Urunadi);
                
                komut.Parameters.AddWithValue("@p2", UrunFiyat);
               
                komut.Parameters.AddWithValue("@p5", Session["Kullaniciid"]);
                

               
                komut.ExecuteNonQuery();
                bgl.baglan().Close();

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Siparişiniz Alınmıştır..');</script>");
            
        }

        






    }


    protected void toplam(int a,int b)
    {

    }

    protected void Sil()
    {
        
        string text = Session["siparisler"].ToString().Substring(0, Session["siparisler"].ToString().Length - 1);
        SqlCommand cmd = new SqlCommand("Delete * From Table_Urun Where Urunid in(" + text + ")", bgl.baglan());
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


   

    protected void Button3_Click(object sender, EventArgs e)
    {
        
        Sil();
    }

    protected void dropdownadet_SelectedIndexChanged1(object sender, EventArgs e)
    {
        
    }
}

    