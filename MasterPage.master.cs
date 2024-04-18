using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string num = "";
    protected void Page_Load(object sender, EventArgs e)
    {
		Response.Write("hello to " + Session["user"]);
		Response.Write("     " + Application["msg"]);
		int num2 = 0;
		if (Session["user"].ToString() != "guest")
		{
			string[] stArr = new string[9];
			stArr[0] = "saxophone1";
			stArr[1] = "saxophone2";
			stArr[2] = "saxophone3";
			stArr[3] = "clarinet1";
			stArr[4] = "clarinet2";
			stArr[5] = "clarinet3";
			stArr[6] = "violin1";
			stArr[7] = "violin2";
			stArr[8] = "violin2";
			string sql = "";
			string selected = "";
			for (int i = 0; i < 9; i++)
			{
				sql = "select " + stArr[i] + " from [Stats] where Uname = '" + Session["user"].ToString() + "'";
				selected = MyAdoHelper.getString("Database.mdf", sql, stArr[i]);
				if (selected != "")
				{
					num2 += Int32.Parse(selected); 		
				}

			}
		}
		num = num2.ToString();
    }
}
