<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="clarinet2.aspx.cs" Inherits="clarinet2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1 style="background-color:burlywood">order:</h1>
<style>
    
    .TdPo
    { 
        text-align:justify;
        margin: 0 auto;
        width: 30em;
        vertical-align:top;  
    }
    .imgcolor
    {
        border:dotted;
    }
</style>

<table align="center" class="TaPr">
    <tr>
        <td><img src="Images/imagesShop/clarinet2.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>Mendini by Cecilio B Flat</h2>
            <h4>for Beginner Student</h4>
            <h4>cost: $180</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: black and silver</h3>                
                         
            <h3>about this item:</h3>
            <h4>
                1. [Student Clarinet] High grade B Flat clarinet with
                durable nickel plated keys
            </h4>
            <h4>
                2. [Quality Control] Mendini by Cecilio clarinets
                are the perfect instrument for the beginner 
                student musicians
            </h4>
            <h4>
                3. [History] Mendini by Cecilio 
                inspires musical talent with
                quality and value instruments 
                since 2004, which makes them top sellers
            </h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input type="submit" id="buy" name="buy"  value="buy"  />
            </form>
        </td>   
</table>
</asp:Content>

