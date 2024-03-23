using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdatePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Uname = Request.Form["Uname"];
        string pass = Request.Form["pass"];
        string Npass = Request.Form["Npass"];
        if (Request.Form["submit"]!= null)
        {
            string sql1 = "UPDATE info SET pass='"+Npass+"', pass2='"+Npass+"' WHERE pass='"+pass+"'";
            MyAdoHelper.DoQuery("Database.mdf", sql1);
        }
    }
}