using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
   
public partial class iletisim : System.Web.UI.Page
{
    sqlbgl bgl = new sqlbgl();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Table_Gorus (GorusAdSoyad,GorusNumara,GorusKonu,GorusMesaj)values(@t1,@t2,@t3,@t4)",bgl.baglan());
        komut.Parameters.AddWithValue("@t1", TextBox1.Text);
        komut.Parameters.AddWithValue("@t2", TextBox2.Text);
        komut.Parameters.AddWithValue("@t3", TextBox3.Text);
        komut.Parameters.AddWithValue("@t4", TextBox4.Text);
        
        komut.ExecuteNonQuery();
        bgl.baglan().Close();
       


    }
}