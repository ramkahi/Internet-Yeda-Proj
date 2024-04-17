<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="violin3.aspx.cs" Inherits="violin3" %>

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
         font:20px;
     }
</style>

<table align="center" class="TaPr">
    <tr>
        <td><img src="Images/imagesShop/violin4.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>Eastar Violin 4/4 Full Size for </h2>
            <h2>Adults,</h2>
            <h4>cost: $149</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: wood</h3>                
                         
            <h3>about this item:</h3>
            <h4>
                1.
                The package contains : Eastar EVA-2 4/4 Violin x1,
                Mongolian horse hair bow x1, Rosin x1, Shoulder rest x1,
                Violin bridge x2, Additional violin string x1
            </h4>
            <h4>
                2. 
                Maple wood neck, pear-wood finger board, date wood
                chin rest and tail nail, aluminum alloy strain plate
                and four integrated fine-tuning tuners.
            </h4>
            <h4>
                3. 
                The Eastar EVA-2 4/4 quarter violin is made of 
                spruce wood panel, maple back board and side
                plate with inlaid in antique varnish

            </h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input class="buy" type="submit" id="add" name="add"  value="Add to cart"/>
                <input class="buy" type="submit" id="buy" name="buy" value="Buy"/>
            </form>
        </td>   
</table>
</asp:Content>

