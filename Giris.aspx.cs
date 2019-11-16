using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Giris : System.Web.UI.Page
{
    sqlbgl bgl = new sqlbgl();
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }


    protected void Buttongrs_Click(object sender, EventArgs e)
    {
       
            SqlCommand komut = new SqlCommand("Select * From Table_Kaydol WHERE KullaniciAd='" + txtKullaniciAd.Text + "' AND KullaniciSifre='" + txtKullaniciSifre.Text + "'", bgl.baglan());


            SqlDataAdapter oku = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            oku.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                Session["Kullaniciid"] = dr["Kullaniciid"];
                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Kullanıcı adı veya şifreniz hatalı lütfen tekrar deneyiniz.');</script>");
            }
            bgl.baglan().Close();

        

    }

}

