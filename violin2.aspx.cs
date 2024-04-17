using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class violin2 : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.Form["add"] != null)
		{
			int num = 1;
			if (Session["user"].ToString() != "guest")
			{
				string sql1 = "select violin2 from [Stats] where Uname ='" + Session["user"].ToString() + "'";
				string st = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql1, "violin2");
				if (st != " ")
				{
					num = Int32.Parse(st) + 1;
				}

				string sql2 = "update [Stats] set violin2 = " + num + " where Uname='" + Session["user"].ToString() + "'";
				MyAdoHelper.DoQuery("Database.mdf", sql2);

				string sql3 = "";
				string instrument = "";
				string sql4 = "";
				string[] stArr = new string[9];
				stArr[0] = "first";
				stArr[1] = "second";
				stArr[2] = "third";
				stArr[3] = "fourth";
				stArr[4] = "fifth";
				stArr[5] = "sixth";
				stArr[6] = "seventh";
				stArr[7] = "eighth";
				stArr[8] = "ninth";
				int count = 0;
				for (int i = 0; i < 9; i++)
				{
					sql3 = "select " + stArr[i] + " from [Cart] where Uname = '" + Session["user"].ToString() + "'";
					instrument = MyAdoHelper.getString("Database.mdf", sql3, stArr[i]);
					if (instrument == "violin2")
					{
						count++;
					}
				}

				if (count == 0)
				{
					for (int i = 0; i < 9; i++)
					{
						sql3 = "select " + stArr[i] + " from [Cart] where Uname = '" + Session["user"].ToString() + "'";
						instrument = MyAdoHelper.getString("Database.mdf", sql3, stArr[i]);
						if (instrument == "")
						{
							sql4 = "update [Cart] set " + stArr[i] + "='violin2' where Uname = '" + Session["user"].ToString() + "'";
							MyAdoHelper.DoQuery("Database.mdf", sql4);
							i = 9;
						}
					}
				}

				else
				{
					Response.Write("To add to cart you need to log in    ");
				}
			}

			if (Request.Form["Buy"] != null)
			{
				Response.Redirect("Buy.aspx");
			}
		}
	}
}