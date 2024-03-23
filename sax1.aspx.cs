using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jean_Paul_Alto_Saxophone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"].ToString() == "guest")
        {
            Response.Redirect("OpenAll.aspx");
        }
        
        string sql1 = "select sax1 from [Stats] where Id = 1;";
        if (Request.Form["buy"] != null)
        {
            string st = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql1, "sax1");
            int num = Int32.Parse(st) +1;
            string sql2 = "update [Stats] set sax1 =" + num + " where Id = 1";
            MyAdoHelper.DoQuery("Database.mdf", sql2);
        }
    }
}