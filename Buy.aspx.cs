using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["user"].ToString() == "guest") 
		{
			Response.Redirect("OpenAll.aspx");
		}
        if (Request.Form["buy"] != null)
        {
			
			string instrument = Request.Form["instrument"];
            string num = Request.Form["num"];
            string Uname = Session["user"].ToString();
			string st = instrument + num;	
			string sql1 = "select " + st + " from [Stats] where Id = 1";
			string sql4 = "select " + st + " from [Stats] where Uname = '"+Uname+"'";
			string st1 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql1, st);
			int num1 = Int32.Parse(st1) + 1;
			string sql = "select " + st + " from [Stats] where Uname = '" + Session["user"].ToString()+"'";
			string st2 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql4, st);
			int num2 = Int32.Parse(st2) + 1;
			string sql2 = "update [Stats] set "+st+" =" + num1 + " where Id = 1";
			string sql3 = "update [Stats] set " + st + " = " + num2 + " where Uname = '"+ Session["user"].ToString() + "'";
			MyAdoHelper.DoQuery("Database.mdf", sql2);
			MyAdoHelper.DoQuery("Database.mdf", sql3);
			Response.Write("The trsnsaction was a success  ");
		}
    }
}