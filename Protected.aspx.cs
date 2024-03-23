using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Protected : System.Web.UI.Page
{
    public string protected1 = ""; 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"].ToString() == "guest") 
        {
            Response.Redirect("OpenAll.aspx");
        }
    }
}