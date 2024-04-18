<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sax1.aspx.cs" Inherits="Jean_Paul_Alto_Saxophone" %>

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
   
    .buy
    {
        height: 50px;
        width: 100px;
        font:30px;
    }
</style>
<table align="center" class="TaPr">
    <tr>
        <td><img src="Images/imagesShop/alto-sax1.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>Jean Paul AS-400 Alto Saxophone - Golden Brass Lacquered</h2>
            <h4>cost: $599</h4>
            <h4>returnable until may 2024</h4>
            <h3>color: gold </h3>                
                         
            <h3>about this item:</h3>
            <h4>1. 
                Ergonomic Keywork helps you play more comfortably</h4>
            <h4>2. 
                Contoured Carrying Case For Easy Transportation</h4>
            <h4>3. 
                Beautiful Yellow Brass Body Construction With Lacquer Finish</h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input class="buy" type="submit" id="add" name="add"  value="Add to cart"/>
                <input class="buy" type="submit" id="buy" name="buy" value="Buy"/>
            </form>
        </td>   
</table>

</asp:Content>
    

