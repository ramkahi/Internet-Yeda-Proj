<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdatePass.aspx.cs" Inherits="UpdatePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkUpdate()
        {
            var bo = true;
            if (checkUname2() == false)
            {
                bo = false;
            }

            if (checkPass2() == false)
            {
                bo = false;
            }

            if (checkNewPass() == false)
            {
                bo == false;
            }

            return bo;
        }

        function checkUname2()
        {
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
                    window.aler("Password can't have spaces");
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

        function checkNewPass()
        {
            //at least 6 character
            var pass = document.getElementById("NewPass").value;
            if (pass.length < 6
            ) {
                document.getElementById("submit").type = "button";
                window.alert("Password needs to be at least 6 characters");
                return false;
            }

            //at least one capital character
            var countCaps = 0;
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= 'A' && pass.charAt(i) <= 'Z')
                {
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
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= 'a' && pass.charAt(i) <= 'z')
                {
                    countRegular++;
                }
            }

            if (countRegular == 0)
            {
                document.getElementById("submit").type = "button";
                window.alert("Password needs at least one regular character");
                return false;
            }

            //at least one number
            var countNum = 0;
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= '0' && pass.charAt(i) <= '9')
                {
                    countNum++;
                }
            }

            if (countNum == 0)
            {
                document.getElementById("submit").type = "button";
                window.alert("Password needs at least one number");
                return false;
            }

            // no space
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) == ' ')
                {
                    document.getElementById("submit").type = "button";
                    window.aler("Password can't have spaces");
                    return false;
                }
            }

            // one weird character
            var countWeird = 0;
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= '!' && pass.charAt(i) <= ')' || pass.charAt(i) == '{' || pass.charAt(i) == '}')
                {
                    countWeird++;
                }
            }

            if (countWeird == 0)
            {
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
    <h1 style="background-color:burlywood;">Update your password</h1>
    <form id="form1" name="form" action="" runat="server" method="post">
        User name: <input type="text" id="Uname" name="Uname" /><br /><br />
        Previous password: <input type="password" id="pass" name="pass" /><br /><br />
        new password: <input type="password" id="NewPass" name="NewPass" /> <br /><br />
        <input type="submit" id="submit" name="submit" value="submit" onclick="return checkUpdate()" />
    </form>
</asp:Content>

