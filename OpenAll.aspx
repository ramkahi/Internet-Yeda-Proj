<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OpenAll.aspx.cs" Inherits="OpenAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1 style="background-color:burlywood">shop</h1>
    <h3>Here you can shop your instruments of your</h3>
    <h3>liking. below the instrument there is the price</h3>
    <h3> and there name</h3>
    
    <style>
        .TaSh
        {
            border-spacing:45px;
        }
        img
        {
            width:200px;
            height:200px;
              
            padding:0;     
        }
        .TdSh
        {
            border:solid;
            border-collapse:collapse;
            text-align:left;
            vertical-align:top;
        }
    </style>
    
    <div>
        <table align="center" class="TaSh">
            <tr> 
                <td class="TdSh">
                    <a href="sax1.aspx"><img src="imagesProtected/alto-sax3.jpg" /></a><br />
                    <h4>1. Jean Paul Alto Saxophone</h4>
                    <h4>Golden Brass Lacquered </h4>
                    <h4>price: $599</h4>
                    <h4>the number of</h4>
                    <h4>saxophone1 that was</h4>
                    <h4> bout is: <%=num_sax1%></h4>
                </td>
                <td class="TdSh"><a href="sax2.aspx"><img src="imagesShop/tenor%20-%20sax4.jpg" /></a><br />
                    <h4>2. eastrock Tenor </h4>
                    <h4> Saxophone B Flat </h4>
                    <h4> Black/Gold Laquer</h4>
                    <h4>price: $449</h4>
                    <h4>the number of</h4>
                    <h4>saxophone2 is: <%=num_sax2%></h4>
                </td>
                <td class="TdSh">
                    <a href="sax3.aspx"><img src="imagesShop/alto - sax 1.jpg" /></a><br />
                    <h4>3. Eastar Professional Alto </h4>
                    <h4>Saxophone E Flat Alto</h4>
                    <h4>price: $399</h4>
                    <h4>the number of</h4>
                    <h4>saxophone3 is: <%=num_sax3%></h4>
                </td>
            </tr>
            <tr>
                <td class="TdSh">
                    <a href="clarinet1.aspx"><img src="imagesShop/clarinet1.jpg" /></a><br />
                    <h4>1. owell Clarinet Professional</h4>
                    <h4>17 keys B Flat</h4>
                    <h4>price: $408</h4>
                    <h4>the number of</h4>
                    <h4>clarinet1 is: <%=num_clarinet1%></h4>
                </td>
                <td class="TdSh">
                    <a href="clarinet2.aspx"><img src="imagesShop/clarinet2.jpg" /></a>
                    <h4>2. Mendini by Cecilio </h4>
                    <h4>B Flat</h4>
                    <h4>price: $180</h4>
                    <h4>the number of</h4>
                    <h4>clarinet2 is: <%=num_clarinet2%></h4>
                </td>
                <td class="TdSh">
                    <a href="clarinet3.aspx"><img src="imagesShop/clarinet4.jpg" /></a>
                    <h4>3. Jean Paul USA CL-300</h4>
                    <h4>Clarinet B Flat</h4>
                    <h4>price: $249</h4>
                    <h4>the number of</h4>
                    <h4>clarinet3 is: <%=num_clarinet3%></h4>
                </td>

            </tr>
            <tr>
                <td class="TdSh">
                    <a href="violin1.aspx"><img src="imagesShop/violin1.jpg" /></a>
                    <h4>1. D Z Strad Violin </h4>
                    <h4>Model 101 </h4>
                    <h4>price: $359</h4>
                    <h4>the number of</h4>
                    <h4>violin1 is: <%=num_violin1%></h4>
                </td>
                <td class="TdSh">
                    <a href="violin2.aspx"><img src="imagesShop/violin2.jpg" /></a>
                    <h4>2. D Z Strad Violin  </h4>
                    <h4>Model 601F with Inlay</h4>
                    <h4>Dot-and-Diamond</h4>
                    <h4>price: $1,999</h4>
                    <h4>the number of</h4>
                    <h4>violin2 is: <%=num_violin2%></h4>
                </td>
                <td class="TdSh">
                    <a href="violin3.aspx"><img src="imagesShop/violin4.jpg" /></a>
                    <h4>3. Eastar Violin Full </h4>
                    <h4>Size for Adults,</h4>
                    <h4> Violin Set for Beginners</h4>
                    <h4>price: $149</h4>
                    <h4>the number of</h4>
                    <h4>violin3 is: <%=num_violin3%></h4>
                </td>
            </tr>
        </table>
    </div>




</asp:Content>

