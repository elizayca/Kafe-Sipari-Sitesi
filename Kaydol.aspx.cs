using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kaydol : System.Web.UI.Page
{
    sqlbgl bgl = new sqlbgl();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn_kaydol_Click(object sender, EventArgs e)
    {


        SqlCommand komut = new SqlCommand("insert into Table_Kaydol(KullaniciAdSoyad,KullaniciAdres,KullaniciMail,KullaniciDogum,KullaniciAd,KullaniciSifre)values(@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglan());
        komut.Parameters.AddWithValue("@t1", txtKullaniciAdSoyadd.Text);
        komut.Parameters.AddWithValue("@t2", txtKullaniciadres.Text);
        komut.Parameters.AddWithValue("@t3", txtKullaniciMail.Text);
        komut.Parameters.AddWithValue("@t4", txtKullaniciDogum.Text);
        komut.Parameters.AddWithValue("@t5", txtKullaniciAd.Text);
        komut.Parameters.AddWithValue("@t6", txtKullaniciSifre.Text);

        komut.ExecuteNonQuery();
        bgl.baglan().Close();
        

        Response.Redirect("Anasayfa.aspx");

        //Servisim.WebServiceSoapClient client = new Servisim.WebServiceSoapClient();
        //var response = client.kaydol(txtKullaniciAdSoyadd.Text,txtKullaniciadres.Text,txtKullaniciMail.Text,txtKullaniciDogum.Text,txtKullaniciAd.Text,txtKullaniciSifre.Text);
        //Response.Redirect("Anasayfa.aspx");

    }

    protected void txtKullaniciadres_TextChanged(object sender, EventArgs e)
    {

    }
}