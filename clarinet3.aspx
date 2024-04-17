<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="clarinet3.aspx.cs" Inherits="clarinet3" %>

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
        <td><img src="Images/imagesShop/clarinet4.jpg" width="600" height="600"/></td>
        <td class="TdPo"><h2>Jean paul USA CL-300 student</h2>
            <h2>clarinet B flat</h2>
            <h4>cost: $249</h4>
            <h4>returnable until 30 days of reseipt</h4>
            <h3>color: black and silver</h3>                
                         
            <h3>about this item:</h3>
            <h4>
                1.
                Robust contoured carrying case for
                quick and easy transportation
            </h4>
            <h4>
                2. 
                Nickel-plated keys for a clear and 
                focused tone
            </h4>
            <h4>
                3. 
                Included accessories: Carrying Case,
                one Rico reed 2.5, cleaning Cloth, and
                cork grease
            </h4><br />
            <form id="form1" name="form" action="" runat="server" method="post" >
                <input class="buy" type="submit" id="add" name="add"  value="Add to cart"/>
                <input class="buy" type="submit" id="buy" name="buy" value="Buy"/>
            </form>
        </td>   
</table>
</asp:Content>

