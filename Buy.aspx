<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:burlywood">buy</h1>
    <form id="form1" name="form" action="" runat="server" method="post">
        Enter the kind of instrument:<input type="text" id="kind" name="kind">
        Enter the number of the instrument:<input type="text" id="num" name="num">

    </form>
</asp:Content>

