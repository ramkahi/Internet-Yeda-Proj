using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OpenAll : System.Web.UI.Page
{
    public string num_sax1 = "";
    public string num_sax2 = "";
    public string num_sax3 = "";
    public string num_clarinet1 = "";
    public string num_clarinet2 = "";
    public string num_clarinet3 = "";
    public string num_violin1 = "";
    public string num_violin2 = "";
    public string num_violin3 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
		string sql1 = "select saxophone1 from [Stats] where Id = 1;";
		string sql2 = "select saxophone2 from [Stats] where Id = 1;";
		string sql3 = "select saxophone3 from [Stats] where Id = 1;";
		string sql4 = "select clarinet1 from [Stats] where Id = 1;";
		string sql5 = "select clarinet2 from [Stats] where Id = 1;";
		string sql6 = "select clarinet3 from [Stats] where Id = 1;";
		string sql7 = "select violin1 from [Stats] where Id = 1;";
		string sql8 = "select violin2 from [Stats] where Id = 1;";
		string sql9 = "select violin3 from [Stats] where Id = 1;";

		string st1 = MyAdoHelper.DoQueryGetInstrument("Database.mdf",sql1, "saxophone1");
		string st2 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql2, "saxophone2");
		string st3 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql3, "saxophone3");
		string st4 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql4, "clarinet1");
		string st5 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql5, "clarinet2");
		string st6 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql6, "clarinet3");
		string st7 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql7, "violin1");
		string st8 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql8, "violin2");
		string st9 = MyAdoHelper.DoQueryGetInstrument("Database.mdf", sql9, "violin3");

		num_sax1 = st1;
        num_sax2 = st2;
		num_sax3 = st3;
		num_clarinet1 = st4;
		num_clarinet2 = st5;
		num_clarinet3 = st6;
		num_violin1 = st7;
		num_violin2 = st8;
		num_violin3 = st9;


	}
}