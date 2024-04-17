using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{

	public string one = "";
	public string text1 = "";
	public string price1 = "";

	public string two = "";
	public string text2 = "";
	public string price2 = "";

	public string three = "";
	public string text3 = "";
	public string price3 = "";

	public string four = "";
	public string text4 = "";
	public string price4 = "";

	public string five = "";
	public string text5 = "";
	public string price5 = "";

	public string six = "";
	public string text6 = "";
	public string price6 = "";

	public string seven = "";
	public string text7 = "";
	public string price7 = "";

	public string eight = "";
	public string text8 = "";
	public string price8 = "";

	public string nine = "";
	public string text9 = "";
	public string price9 = "";
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Session["user"].ToString() == "guest")
		{
			Response.Redirect("OpenAll.aspx");
		}
		if (Request.Form["buy"] != null)
		{
			Response.Redirect("Buy.aspx");
		}

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

		string[] text = new string[9];
		string[] cost = new string[9];
		string[] img = new string[9];
		string sql3 = "";
		string instrument = "";
		string[] Cart = new string[9];

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
		string sql = "";
		int num2 = 0;
		string st = "";

		string[] strings2 = new string[9];
		strings2[0] = "saxophone1";
		strings2[1] = "saxophone2";
		strings2[2] = "saxophone3";
		strings2[3] = "clarinet1";
		strings2[4] = "clarinet2";
		strings2[5] = "clarinet3";
		strings2[6] = "violin1";
		strings2[7] = "violin2";
		strings2[8] = "violin3";

		string sqlPlus = "";
		string sqlNegi = "";
		int n = 0;
		int place = 0;
		string plus = "plus";
		string negi = "negi";
		string sqlselect = "";
		string select = "";
		string Uname = Session["user"].ToString();
		


		
		for (int i = 0; i < 9; i++)
		{
			sql3 = "select " + stArr[i] + " from [Cart] where Uname = '" +Uname + "'";
			instrument = MyAdoHelper.getString("Database.mdf", sql3, stArr[i]);
			if (instrument == "saxophone1")
			{
				img[i] = " Images/imagesShop/alto-sax1.jpg";
				text[i] = " Jean Paul AS400 Alto Saxophone - Golden Brass Lacquered";
				cost[i] = " $599";
			}

			if (instrument == "saxophone2")
			{
				img[i] = "Images/imagesShop/tenor - sax2.jpg";
				text[i] = "EASTROCK tenor saxophone B flat laquer sax students beginner";
				cost[i] = " $459";
			}
			if (instrument == "saxophone3")
			{
				img[i] = "Images/imagesShop/alto - sax 3.jpg";
				text[i] = "Eastar professional alto saxophone E flat";
				cost[i] = " $399";
			}

			if (instrument == "clarinet1")
			{
				img[i] = "Images/imagesShop/clarinet1.jpg";
				text[i] = "ROWELL clarinet B flat for beginner student";
				cost[i] = " $408";
			}
			if (instrument == "clarinet2")
			{
				img[i] = "Images/imagesShop/clarinet2.jpg";
				text[i] = "Mendini by cecilio B flat for feginner student";
				cost[i] = " $180";
			}

			if (instrument == "clarinet3")
			{
				img[i] = "Images/imagesShop/clarinet4.jpg";
				text[i] = "Jean paul USA CL-300 student clarinet B flat";
				cost[i] = " $249";
			}

			if (instrument == "violin1")
			{
				img[i] = "Images/imagesShop/violin1.jpg";
				text[i] = "DZ Strad violin model 101";
				cost[i] = " $359";
			}

			if (instrument == "violin2")
			{
				img[i] = "Images/imagesShop/violin2.jpg";
				text[i] = "D Z Strad violin model 601F with inlay dot and diamond";
				cost[i] = " $1999";
			}
			if (instrument == "violin3")
			{
				img[i] = "Images/imagesShop/violin4.jpg";
				text[i] = "Eastar violin 4/4 full Size for adults";
				cost[i] = " $149";
			}

			if(instrument == "")
			{
				img[i] = "Images/imagesShop/white.jpg";
			}
			Cart[i] = instrument;
		}
		one = img[0];
		text1 = text[0];
		price1 = cost[0];

		two = img[1];
		text2 = text[1];
		price2 = cost[1];

		three = img[2];
		text3 = text[2];
		price3 = cost[2];

		four = img[3];
		text4 = text[3];
		price4 = cost[3];

		five = img[4];
		text5 = text[4];
		price5 = cost[4];

		six = img[5];
		text6 = text[5];
		price6 = cost[5];

		seven = img[6];
		text7 = text[6];
		price7 = cost[6];

		eight = img[7];
		text8 = text[7];
		price8 = cost[7];

		nine = img[8];
		text9 = text[8];
		price9 = cost[8];

		
		for (int i = 0; i < strings.Length; i++)
		{//show the number of each instrument the user wants to buy

			sql = "select " + strings[i] + "  from [Stats] where Uname = '" + Session["user"].ToString() + "'";
			st = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql, strings[i]);
			if (st != " ")
			{
				num2 = Int32.Parse(st);
			}
			strings[i] = num2.ToString();
			num2 = 0;
		}
		
		for (int i = 0; i < 9; i++)
		{
			if (Cart[i] != "")
			{
				for (int j = 0; j < 9; j++)
				{
					if (strings2[j] == Cart[i])
					{
						place = j;
						j = 9;
					}
				}
				negi = negi + (i + 1);
				plus = plus + (i + 1);
				if (Request.Form[plus] != null)
				{
					try
					{
						n = Int32.Parse(strings[place]);
					}
					catch
					{
						n = 0;
					}
					n++;
					sqlPlus = "update [Stats] set " + Cart[i] + " = " + n + " where Uname ='" + Uname + "'";
					MyAdoHelper.DoQuery("Database.mdf", sqlPlus);
				}

				if (Request.Form[negi] != null)
				{
					n = Int32.Parse(strings[place]);
					n--;
					sqlNegi = "update [Stats] set " + Cart[i] + " = " + n + " where Uname ='" + Uname + "'";
					MyAdoHelper.DoQuery("Database.mdf", sqlNegi);
				}

				n = Int32.Parse(strings[place]);
				string sqlChange = "";
				string sql5 = "update [Cart] set " + stArr[place] + " = '' where Uname = '" + Uname+ "'";
				MyAdoHelper.DoQuery("Database.mdf", sql5);

				if (n <= 0)
				{
					for (int j = place; j < 8; j++)
					{
						sqlChange = "update [Cart] set " + stArr[j] + " ='" + Cart[j + 1] + "' where Uname = '" + Uname + "'";
						MyAdoHelper.DoQuery("Database.mdf", sqlChange);
					}
				}

			}

		}
	}
	
}