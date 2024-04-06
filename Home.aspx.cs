using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    public string num = "";
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Session["user"].ToString() != "guest") 
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
			string sql ="";
			int num2 = 0;
			string st = "";
			for (int i = 0; i < strings.Length; i++)
			{

				sql = "select " + strings[i] + " from [Stats] where Uname = '" + Session["user"].ToString() + "'";
				st = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql, strings[i]);
				if(st != " ")
				{
					num2 += Int32.Parse(st);
				}			
			}
			num = "" + num2 + "";
		}
		
    }
}