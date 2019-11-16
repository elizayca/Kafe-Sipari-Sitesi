using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    sqlbgl bgl = new sqlbgl();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Buttongrs_Click(object sender, EventArgs e)
    {

        SqlCommand komut = new SqlCommand("Select * From Tbl_Admin WHERE adminKullanici='" + txtAdminAd.Text + "' AND adminSifre='" + txtAdminSifre.Text + "'", bgl.baglan());
        SqlDataAdapter oku = new SqlDataAdapter(komut);
        DataTable dt = new DataTable();
        oku.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            DataRow dr = dt.Rows[0];
            Session["adminID"] = dr["adminID"];
            Response.Redirect("KayitliKullanici.aspx");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Kullanıcı adı veya şifreniz hatalı lütfen tekrar deneyiniz.');</script>");
        }
        bgl.baglan().Close();

    }
}