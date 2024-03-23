using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    public string msg = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Form["submit"] != null)
        {
            string Uname = Request.Form["Uname"];
            string pass= Request.Form["password"];
            string sql1 = "select * from [info] where Uname='" + Uname + "' and pass='" + pass + "'";
            if (MyAdoHelper.IsExist("Database.mdf", sql1))
            {
                Session["user"] = Uname;
                string sqlAdmin = "select * from [info] where isAdmin = 'true' and Uname = '" + Uname + "'";
                if (MyAdoHelper.IsExist("Database.mdf", sqlAdmin))
                {
                    Session["Admin"] = Uname;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }

            }
            else
            {
                msg = "user of password does not exist";
            }
         
        }
    }
}