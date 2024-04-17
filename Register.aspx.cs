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
            string email = Request.Form["email"];
            string phoneNum = Request.Form["phoneNum"];
			string age = Request.Form["age"];
            string interests = Request.Form["interests"];
            string numY = Request.Form["numY"];
            string favorite = Request.Form["favorite"];
			string pass2 = pass;
            string sql1 = "select * from [info] where Uname='" + Uname + "'";
            string sql3 = "insert into [Stats] (Uname) values ('"+Uname+"')";
            string sql4 = "insert into [Cart] (Uname) values ('"+Uname+"')";
            string sql2 = "insert into [info] (Uname, pass, pass2, isAdmin, Fname, Lname, gender,age,interests,numYears,favorite,email,phoneNumber) values ('" + Uname + "','" + pass + "' , '" + pass2 + "' ,'" + false + "' ,'" + Fname + "','" + Lname + "' ,'" + gender + "','"+ age + "','"+ interests +"','"+numY+"','"+favorite+"','"+email+"','"+phoneNum+"')";
            if (MyAdoHelper.IsExist("Database.mdf", sql1))
            {
                Response.Write("user already exists ");
            }

            else
            {
                MyAdoHelper.DoQuery("Database.mdf", sql4);
                MyAdoHelper.DoQuery("Database.mdf", sql3);
                MyAdoHelper.DoQuery("Database.mdf", sql2);
                Session["user"] = Uname;
                Response.Redirect("OpenAll.aspx");
            }
        }
    }
}