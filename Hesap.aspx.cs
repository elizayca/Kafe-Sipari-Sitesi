using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Hesap : System.Web.UI.Page
{
    sqlbgl bgl = new sqlbgl();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            int ID = Convert.ToInt16(Session["Kullaniciid"]);



            SqlCommand komut = new SqlCommand("Select * From Table_Kaydol Where Kullaniciid =" + ID + "", bgl.baglan());
            komut.Connection = bgl.baglan();

            SqlDataAdapter oku = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            oku.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                txtKullaniciAdSoyadd.Text = dr[1].ToString();
                txtKullaniciadres.Text = dr[2].ToString();
                txtKullaniciMail.Text = dr[3].ToString();
                txtKullaniciDogum.Text = dr[4].ToString();
                txtKullaniciAd.Text = dr[6].ToString();
                txtKullaniciSifre.Text = dr[5].ToString();
            }
            else
            {

                Response.Write("<script language='javascript'>alert('Hesabınızı görüntülemek için giriş yapınız.Kullanıcı değilseniz kaydolun.. ');</script>");


            }
        }

    }

    protected void butonguncelle_Click(object send, EventArgs a)
    {

        int ID = Convert.ToInt16(Session["Kullaniciid"]);
        SqlCommand komut1 = new SqlCommand("UPDATE Table_Kaydol SET KullaniciAdSoyad=@KullaniciAdSoyad,KullaniciAdres=@KullaniciAdres,KullaniciMail=@KullaniciMail,KullaniciDogum=@KullaniciDogum,KullaniciAd=@KullaniciAd,KullaniciSifre=@KullaniciSifre  WHERE Kullaniciid =" + ID + "", bgl.baglan());
        komut1.Connection = bgl.baglan();




        komut1.Parameters.AddWithValue("@KullaniciAdSoyad", txtKullaniciAdSoyadd.Text);
        komut1.Parameters.AddWithValue("@KullaniciAdres", txtKullaniciadres.Text);
        komut1.Parameters.AddWithValue("@KullaniciMail", txtKullaniciMail.Text);
        komut1.Parameters.AddWithValue("@KullaniciDogum", txtKullaniciDogum.Text);
        komut1.Parameters.AddWithValue("@KullaniciAd", txtKullaniciAd.Text);
        komut1.Parameters.AddWithValue("@KullaniciSifre", txtKullaniciSifre.Text);
        komut1.ExecuteNonQuery();

    }

    protected void LinkButton1_Click(object sende, EventArgs b)
    {

        Session.Abandon();
        txtKullaniciAdSoyadd.Text = "";
        txtKullaniciadres.Text = "";
        txtKullaniciMail.Text = "";
        txtKullaniciDogum.Text = "";
        txtKullaniciAd.Text = "";
        txtKullaniciSifre.Text = "";


    }
}