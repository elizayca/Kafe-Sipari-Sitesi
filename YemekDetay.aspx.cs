using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class YemekDetay : System.Web.UI.Page
{
    sqlbgl bgl = new sqlbgl();
    string yemekid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["Yemekid"];

        SqlDataSource1.DataBind();

        SqlCommand komut = new SqlCommand("Select Yemekad From Table_Menu where yemekid=@p1", bgl.baglan());

        komut.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            labelad.Text = dr[0].ToString();
        }

        SqlCommand komut2 = new SqlCommand("Select YemekResim From Table_Menu where yemekid=@p2", bgl.baglan());
        komut2.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        while (dr2.Read())
        {
            imgdet.ImageUrl = dr2[0].ToString();
        }

    }
}