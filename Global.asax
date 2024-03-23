<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["msg"] = "";
        Application["sax1"] = 0;
        Application["sax2"] = 0;
        Application["sax3"] = 0;
        Application["clarinet1"] = 0;
        Application["clarinet2"] = 0;
        Application["clarinet3"] = 0;
        Application["violin1"] = 0;
        Application["violin2"] = 0;
        Application["violin3"]= 0;
        
        
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
       
    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["user"] = "guest";
        Session["Admin"] = null;
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
