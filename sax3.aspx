<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sax3.aspx.cs" Inherits="EastarSaxophoneAlto" %>

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
        <td><img src="Images/imagesShop/alto%20-%20sax%201.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>Eastar Professional Alto Saxophone E Flat Alto </h2>
            <h4>cost: $399</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: gold</h3>                
                         
            <h3>about this item:</h3>
            <h4>1.
                [Unmatched Playing Experience] Take your saxophone playing
                to the next level with the Eastar AS-III E flat alto saxophone. 

            </h4>
            <h4>2. 
                [Exceptional Sound Quality] Whether you're playing jazz,
                classical, pop, or any other genre of music, the Eastar
                saxophone delivers exceptional sound quality. 

            </h4>
            <h4>3. 
                [Exquisite Craftsmanship] The Eastar AS-III saxophone
                is not only a musical instrument but also a work of art. 
            </h4><br />
           
           <form id="form1" name="form" action="" runat="server" method="post" >
                <input type="submit" id="buy" name="buy"  value="buy"  />
           </form>
        </td>   
</table>
</asp:Content>

