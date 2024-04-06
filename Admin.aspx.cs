using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Admin : System.Web.UI.Page
{
    public string prTable = "";
    public string prTable2 = "";
	public string prTable3 = "";
	public string prTable4 = "";
	protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Admin"] == null)
        {
            Response.Redirect("Home.aspx");
        }

        else
        {
            if (Request.Form["submit"] != null)
            {
                string msg = Request.Form["message"];
                Application["msg"] = msg;
                Response.Redirect("Admin.aspx");
            }
            if (Request.Form["reset"] != null)
            {
                Application["msg"] = "";
                Response.Redirect("Admin.aspx");
            }
            if (Request.Form["delete"] != null)
            {
                string uName = Request.Form["uName"];
                string sqlDelete = "Delete from [info] where Uname= '" + uName + "'";
                MyAdoHelper.DoQuery("Database.mdf", sqlDelete);
                Response.Redirect("Admin.aspx");
            }

            if (Request.Form["update"] != null)
            {
                string uName1 = Request.Form["uName1"];
                int age = Convert.ToInt32(Request.Form["age"]);
                string sqlUpdate = "UPDATE [info] SET age =" + age + " WHERE Uname = '" + uName1 + "'";
                MyAdoHelper.DoQuery("Database.mdf", sqlUpdate);
                Response.Redirect("Admin.aspx");
            }

            if (Request.Form["Ad"] != null)
            {
                string uName2 = Request.Form["uName2"];
                string sql2 = "UPDATE [info] SET isAdmin = 'true' WHERE Uname = '" + uName2 + "'";
                MyAdoHelper.DoQuery("Database.mdf", sql2);
                Response.Redirect("Admin.aspx");
            }

            if (Request.Form["change"] != null) 
            {
                string colum = Request.Form["colum"];
                string nValue = Request.Form["NewValue"];
                string uName3 = Request.Form["uName3"];
                string sqlChange = "UPDATE [info] SET "+colum+" = '"+nValue+"' WHERE Uname = '" + uName3 + "'";
                MyAdoHelper.DoQuery("Database.mdf", sqlChange);
			}

            
			string sql = "select * from [info]";
			prTable = MyAdoHelper.printDataTable("Database.mdf", sql);

			
            string sql1 = "SELECT * FROM [info] ORDER BY Age";
			prTable2 = MyAdoHelper.printDataTable("Database.mdf", sql1);
			

            
			string sql3 = "SELECT * FROM [info] WHERE gender = 'male'";
			prTable3 = MyAdoHelper.printDataTable("Database.mdf", sql3);
			

            
			string sql4 = "SELECT * FROM [info] WHERE gender = 'female'";
			prTable4 = MyAdoHelper.printDataTable("Database.mdf", sql4);
			
			
		}
    }
}
