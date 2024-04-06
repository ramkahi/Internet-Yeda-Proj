using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class quiz : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (Request.Form["submit"]!= null)
		{
			double count = 0;
			if (Request.Form["jazz"] == "19th")
			{
				count += 12.5;
			}

			if (Request.Form["instrument"] == "violin")
			{
				count += 12.5;
			}

			if (Request.Form["style"] == "swing")
			{
				count += 12.5;
			}

			if (Request.Form["jazz"] == "19th")
			{
				count += 12.5;
			}

			if (Request.Form["composers"] == "miles davis")
			{
				count += 12.5;
			}

			if (Request.Form["bach"] == "composer")
			{
				count += 12.5;
			}

			if (Request.Form["era"] == "1750")
			{
				count += 12.5;
			}

			if (Request.Form["family"] == "strings")
			{
				count += 12.5;
			}
			Response.Write("your score is: "+ count+ "  ");
		}



	}
}