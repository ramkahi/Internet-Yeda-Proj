<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="violin1.aspx.cs" Inherits="violin1" %>

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
        <td><img src="Images/imagesShop/violin1.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>D Z Strad Violin </h2>
            <h4>Model 101</h4>
            <h4>cost: $359</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: wood</h3>                
                         
            <h3>about this item:</h3>
            <h4>
                1. Carved top violin made with select tight grain Spruce
            </h4>
            <h4>
                2. Beautifully figured Maple back and sides with an
                Ebony fingerboard
            </h4>
            <h4>
                3. 
                come with Case, Bow, and Rosin (4/4 - Full Size)
            </h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input type="submit" id="buy" name="buy"  value="buy"  />
            </form>
</table>
</asp:Content>

