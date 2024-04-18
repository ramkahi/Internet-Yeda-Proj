<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="clarinet1.aspx.cs" Inherits="clarinet1" %>

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
        font: 30px;
    }
</style>

<table align="center" class="TaPr">
    <tr>
        <td><img src="Images/imagesShop/clarinet1.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>ROWELL clarinet B flat </h2>
            <h2>for beginner student</h2>
            <h4>cost: $408</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: black and silver</h3>                
                         
            <h3>about this item:</h3>
            <h4>
                1. 
                [Professional Clarinet] omplex bore design and ABS composite
                body offer a full and rich soud when play.
                easy to install,durable.
            </h4>
            <h4>
                2.
                [classic Bb Clarinet Mouthpiece] Industry standard
                mouthpiece, rich sound,well balanced tone, preferred
                by students & professionals.
            </h4>
            <h4>
                3. 
                [Rich Sound] Bb flat clarinet is equipped with 
                Silver-plated keys 17 keys for smooth playing,
                steady and pleasant voice 

            </h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input class="buy" type="submit" id="add" name="add"  value="Add to cart"/>
                <input class="buy" type="submit" id="buy" name="buy" value="Buy"/>
            </form>
        </td>   
</table>
</asp:Content>

