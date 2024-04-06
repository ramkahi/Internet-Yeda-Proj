<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkColum()
        {
            var colum = document.getElementById("colum").value;

            if (colum != "Uname" && colum != "pass" && colum != "pass2" && colum != "age" && colum != "isAdmin" && colum != "Fname" && colum != "Lname" && colum != "gender" && colum != "Interests" && colum != "numYears" && colum != "favorite" && colum != "email" && colum != "phoneNumber" && colum != "Color")
            {
                window.alert("The colum name is Incorrect");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .formAdmin
        {
            text-align:justify;
            margin: 0 auto;
            width: 30em;
        }
    </style>
    <h1 style="background-color:burlywood">This is the Admin page</h1>
    <form class="formAdmin" id="form1" name="form1" runat="server" method="post" action="" >
        <textarea name="message" rows="5" cols ="30">
            Enter here what would you like to wirte to everyone:
        </textarea><br />
        <input type="submit"  id="submit" name="submit" value="submit"/>
        <input type="submit" id="reset" name="reset" value="reset" /><br />


        <h2>Please choose what user you want to delete:</h2><br />
        user: <input type="text" id="uName" name="uName"><br />
        <input type="submit" id="delete" name="delete" value="delete" /><br />

        <h2>Please choose what user to apdate</h2><br />
        User:<input type="text" id="uName1" name="uName1"/><br />
        age:<input type="text" id="age" name="age"><br />
        <input  type="submit" id="update" name="update" value="update" /><br />

        <h2>Please choose what user you want to make admin</h2>
        User: <input type="text" id="uName2" name="uName2" />
        <input type="submit" id="Ad" name="Ad" value="Make Admin" /><br />

        <h2>Please choose what user you want to change</h2>
        User:<input type="text" id="uName3" name="uName3" /><br />
        <h2>Please choose what you want to change in a user</h2>
        Colum: <input type="text" id="colum" name="colum" /><br />
        <h2>Please Enter the changed value you want</h2>
        Value: <input type="text" id="NewValue" name="NewValue" /><br />
        <input type="submit" id="change" name="change" value="change" onclick="return checkColum()"/><br />
        
    </form>
    <h1>all users on this site:</h1>
    <center >
    <%=prTable%><br />

    <h1>all users in this site in order of age</h1>
    <%=prTable2 %><br />

    <h2>all male users in this site</h2>
    <%=prTable3 %><br />

    <h2>all female users in this site</h2>
    <%=prTable4 %>
    </center>
    
    
</asp:Content>

