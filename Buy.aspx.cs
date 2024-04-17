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
			string[] strings = new string[9];
			strings[0] = "saxophone1";
			strings[1] = "saxophone2";
			strings[2] = "saxophone3";
			strings[3] = "clarinet1";
			strings[4] = "clarinet2";
			strings[5] = "clarinet3";
			strings[6] = "violin1";
			strings[7] = "violin2";
			strings[8] = "violin3";
			string sqlU = "";
			int numU = 0;
			string st = "";
			string sqlI = "";
			string st1 = "";
			int numI = 0;
			int sum = 0;
			string sqlUpdateI = "";
			string sqlUpdateU = "";
			for (int i = 0; i < strings.Length; i++)
			{

				sqlU = "select " + strings[i] + " from [Stats] where Uname = '" + Session["user"].ToString() + "'";
				st = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sqlU, strings[i]);
				if (st != " ")
				{
					numU = Int32.Parse(st);
				}
				sqlI = "select " + strings[i] + " from [Stats] where Id = 1";
				st1 = MyAdoHelper.DoQueryGetInstrument("Database.mdf",sqlI,st1);
				if(st1 != " ")
				{
					numI = Int32.Parse(st1);
				}
				sum = numI + numU;
				sqlUpdateI = "update [Stats] set " + strings[i] +"="+ sum +" where Id = 1";
				MyAdoHelper.DoQuery("Database.mdf",sqlUpdateI);
				sqlUpdateU = "update [Stats] set " + strings[i] + "= 0 where Uname = '" + Session["user"].ToString()+"'";
				MyAdoHelper.DoQuery("Database.mdf", sqlUpdateU);
				Response.Write("The transaction was a success");
			}
		}
    }
}