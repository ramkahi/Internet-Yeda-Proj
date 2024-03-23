<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="violin2.aspx.cs" Inherits="violin2" %>

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
        <td><img src="imagesShop/violin2.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>D Z Strad Violin Model 601F</h2>
            <h4> with Inlay Dot-and-Diamond</h4>
            <h4>cost: $1999</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: wood</h3>                
                         
            <h3>about this item:</h3>
            <h4>
                1. 
                nstrument is meticulously handmade, graduated,
                carved, and inlaid by prize-winning luthiers
            </h4>
            <h4>
                2.
                This value-packed violin outfit package includes a case,
                two bows (Brazilwood and Carbon Fiber),
            </h4>
            <h4>
                3. 
                Beautifully crafted with select, lightly-flamed Maple

            </h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input type="submit" id="buy" name="buy"  value="buy"/>
            </form>
            
        </td>   
</table>
</asp:Content>

