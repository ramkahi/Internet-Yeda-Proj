<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact us.aspx.cs" Inherits="contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:burlywood">conect us</h1>
    <h3>to conect us you can call this number:</h3>
    <h3>050-3003424</h3>
    <form style="text-align:justify; margin: 0 auto; width: 30em;">
        coments:<br />
        <textarea id="comments" name="comments" cols="50" rows="3">
            
        </textarea><br />
        <input type="submit" id="contact us" name="contact us" value="submit" />
    </form>
</asp:Content>


