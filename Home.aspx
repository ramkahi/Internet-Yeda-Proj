﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1 style="background-color:burlywood">welcome to my site</h1>            
    <h3> this site is about music instruments.</h3>
    <h3> you can buy here any instrument of your liking.</h3>
    <h3> when you found your desirable instrument</h3>
    <h3> you can order it to your adress.</h3>
    
    <style type="text/css">

        .HPT
        {
            border-spacing: 30px;
        }
        img
        {
            border:solid;
            border-color:black;
            padding:0px;
        }
    </style>    
    


    <br /> 
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="HPT" align="center" >
            <tr>
                <td class="HPTD"><img src="imagesHome/saxophone.jpg" width="350" height="300"/></td>
                <td class="HPTD"><img src="imagesHome/piano.jpg" width="350" height="300"/></td>
                <td class="HPTD"><img src="imagesHome/clarinet.jpg" width="350" height="300"/></td>
            </tr>
        </table>

</asp:Content>