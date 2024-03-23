<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdatePass.aspx.cs" Inherits="UpdatePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:burlywood;">Update your password</h1>
    <form id="form1" name="form" action="" runat="server" method="post">
        User name: <input type="text" id="Uname" name="Uname" /><br /><br />
        Previous password: <input type="password" id="pass" name="pass" /><br /><br />
        new password: <input type="password" id="Npass" name="Npass" /> <br /><br />
        <input type="submit" id="submit" name="submit" />
    </form>
</asp:Content>

