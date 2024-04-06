using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class violin3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (Request.Form["buy"] != null)
		{
			Response.Redirect("Buy.aspx");
		}
	}
}