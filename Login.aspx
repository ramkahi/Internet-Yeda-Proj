<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .formL
        {
            text-align:justify;
            margin: 0 auto;
            width: 30em;
        }
        .h1L
        {
            background-color:burlywood;
        }        
    </style>
    <h1 class="h1L">Login to the site</h1>
     <%=msg%>
    <form class="formL" id="form1" name="form" action="" runat="server" method="post" >
        Enter username: <input type="text" id="Uname" name="Uname" required/><br />
        <h1> </h1>
        Enter password: <input type="password" id="password" name="password" required /><br />
        <h1> </h1>
        Enter password again: <input type="password" id="pass2" name="pass2" /><br />
        <h1> </h1>
        <input type="submit" id="submit" name="submit" value="submit"/>
        <input type="reset" value="clear" />
        <a href="UpdatePass.aspx"><input type="button" id="UpdateP" name="UpdateP" value="Change password" /></a>
        <a href="logout.aspx"><input type="button" id="logout" name="logout" value="logout"></a>
    </form>
</asp:Content>

