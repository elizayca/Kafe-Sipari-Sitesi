using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class anasayfa2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnmenu_Click(object sender, EventArgs e)
    {

    }

    


    protected void btnanasayfa_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Anasayfa.aspx");
    }

    protected void btnmenu_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }

    protected void btniletisim_Click1(object sender, EventArgs e)
    {
        Response.Redirect("iletisim.aspx");
    }

    protected void btngaleri_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Galeri.aspx");
    }

    protected void btnsiparis_Click1(object sender, EventArgs e)
    {
        if (Session["Kullaniciid"] != null)
        {
            Response.Redirect("Siparis.aspx");
        }
        else
        {
            
            
                Response.Write("<script language='javascript'>alert('Sipariş vermek için kullanıcı olmanız gerekmektedir.');</script>");
            
        }
    }

    protected void btniletisim0_Click(object sender, EventArgs e)
    {

    }
}
