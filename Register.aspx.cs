using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		ScriptManager.RegisterStartupScript(this, this.GetType(), Guid.NewGuid().ToString(), "var result = checkAll();", true);
		if (Request.Form["submit"] != null)
        {
            string Uname = Request.Form["Uname"];
            string pass = Request.Form["pass"];
			string Fname = Request.Form["Fname"];
            string Lname = Request.Form["Lname"];
            string gender = Request.Form["gender"];
			string age = Request.Form["age"];
			string pass2 = pass;
            string sql1 = "select * from [info] where Uname='" + Uname + "' and pass='" + pass + "'";
            string sql2 = "insert into [info] (Uname,pass,pass2,isAdmin,Fname,Lname,gender,age) values ('" + Uname + "','" + pass + "' , '" + pass2 + "' ,'" +false + "' ,'" + Fname + "','" + Lname + "' ,'" + gender + "','" + age + "')";
            if (MyAdoHelper.IsExist("Database.mdf", sql1))
            {
                Response.Write("user already exists ");
            }

            else
            {
                MyAdoHelper.DoQuery("Database.mdf", sql2);
                Session["user"] = Uname;
                Response.Redirect("OpenAll.aspx");
            }

        }

    }
}