﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class clarinet2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Request.Form["buy"] != null)
		{
			Response.Redirect("Buy.aspx");
		}
	}
}