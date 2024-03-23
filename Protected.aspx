<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Protected.aspx.cs" Inherits="Protected" %>

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
            <td><img src="imagesProtected/alto-sax3.jpg" width="600" height="600"/></td>
            <td class="TdPo"><h2>Jean Paul AS-400 Alto Saxophone - Golden Brass Lacquered</h2>
                <h4>brand:Jean Paul USA</h4>
                <h4>cost: $599</h4>
                <h4>returnable until may 2024</h4>
                <h3>color: </h3>                
                             
                <h3>about this item:</h3>
                <h4>1. Ergonomic Keywork helps you play more comfortably</h4>
                <h4>2. Contoured Carrying Case For Easy Transportation</h4>
                <h4>3. Beautiful Yellow Brass Body Construction With Lacquer Finish</h4><br />
                <input type="button" id="buy" name="buy" title="buy" value="buy"/>
            </td>   
    </table>
    
</asp:Content>

