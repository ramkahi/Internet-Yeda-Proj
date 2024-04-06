<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkLogin()
        {
            if (check2Pass() == false)
            {
                return false;
            }
            if (checkPass2() == false)
            {
                return false
            }

            if (checkUname2() == false)
            {
                return false;
            }
            return true;
        }
        function checkUname2() {
            let Uname = document.getElementById("Uname").value;
            if (Uname.length < 4) {
                document.getElementById("submit").type = "button";
                window.alert("User name needs to be at least 4 characters");
                return false;
            }

            for (let i = 0; i < Uname.length; i++) {
                if (Uname.charAt(i) >= '!' && Uname.charAt(i) <= ')' || Uname.charAt(i) == ' ') {
                    document.getElementById("submit").type = "button";
                    window.alert("User name can't have strange characters");
                    return false;
                }
            }
            document.getElementById("submit").type = "submit";
            return true;
        }
        function check2Pass()
        {
            var pass = document.getElementById("pass").value;
            var pass2 = document.getElementById("pass2").value;

            if (pass != pass2)
            {
                document.getElementById("submit").type = "button";
                window.alert("passwords doesn't align");
                return false;
            }
            document.getElementById("submit").type = "submit";
            return true;
        }

        function checkPass2() {
            //at least 6 character
            var pass = document.getElementById("pass").value;
            if (pass.length < 6) {
                document.getElementById("submit").type = "button";
                window.alert("Password needs to be at least 6 characters");
                return false;
            }

            //at least one capital character
            var countCaps = 0;
            for (var i = 0; i < pass.length; i++) {
                if (pass.charAt(i) >= 'A' && pass.charAt(i) <= 'Z') {
                    countCaps++;
                }
            }
            window.alert(countCaps);
            if (countCaps == 0) {
                document.getElementById("submit").type = "button";
                window.alert("Password needs at least one capital character");
                return false;
            }

            // at least one regular character
            var countRegular = 0;
            for (var i = 0; i < pass.length; i++) {
                if (pass.charAt(i) >= 'a' && pass.charAt(i) <= 'z') {
                    countRegular++;
                }
            }

            if (countRegular == 0) {
                document.getElementById("submit").type = "button";
                window.alert("Password needs at least one regular character");
                return false;
            }

            //at least one number
            var countNum = 0;
            for (var i = 0; i < pass.length; i++) {
                if (pass.charAt(i) >= '0' && pass.charAt(i) <= '9') {
                    countNum++;
                }
            }

            if (countNum == 0) {
                document.getElementById("submit").type = "button";
                window.alert("Password needs at least one number");
                return false;
            }

            // no space
            for (var i = 0; i < pass.length; i++) {
                if (pass.charAt(i) == ' ') {
                    document.getElementById("submit").type = "button";
                    window.alert("Password can't have spaces");
                    return false;
                }
            }

            // one weird character
            var countWeird = 0;
            for (var i = 0; i < pass.length; i++) {
                if (pass.charAt(i) >= '!' && pass.charAt(i) <= ')' || pass.charAt(i) == '{' || pass.charAt(i) == '}') {
                    countWeird++;
                }
            }

            if (countWeird == 0) {
                document.getElementById("submit").type = "button";
                window.alert("Password needs at least one strange character");
                return false;
            }
            document.getElementById("submit").type = "submit";
            return true;
        }
    </script>
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
        Enter password: <input type="password" id="pass" name="password" required /><br />
        <h1> </h1>
        Enter password again: <input type="password" id="pass2" name="pass2" /><br />
        <h1> </h1>
        <input type="submit" id="submit" name="submit" onclick="return checkLogin()" value="submit"/>
        <input type="reset" value="clear" />
        <a href="UpdatePass.aspx"><input type="button" id="UpdateP" name="UpdateP" value="Change password" /></a>
        <a href="logout.aspx"><input type="button" id="logout" name="logout" value="logout"></a>
    </form>
</asp:Content>

