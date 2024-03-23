<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sax2.aspx.cs" Inherits="eastrock_Tenor" %>

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
        <td><img src="imagesShop/tenor%20-%20sax4.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>EASTROCK Tenor Saxophone B Flat</h2>
            <h4>Laquer Sax Students Beginner</h4>
            <h4>cost: $459</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: black and gold</h3>                
                         
            <h3>about this item:</h3>
            <h4>1. 
                [Top Material] Our beautiful instrument 
                    used selected h68 copper material and multi-layer painted transparent
                    lacquered black,durable and non-fading

            </h4>
            <h4>2.
                [Excellent Sound] The EASTROCK saxophone have been
                    professionally adjusted before leaving the factory to
                    ensure that have good sound without noise

            </h4>
            <h4>3. 
                [Advanced Design] EASTROCK saxophone used upgraded quality leather
                so that make the saxaphone have higher air tightness

            </h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input type="submit" id="buy" name="buy"  value="buy"/>
            </form>
        </td>   
</table>

</asp:Content>
    
