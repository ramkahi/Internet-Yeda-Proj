<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changeColor.aspx.cs" Inherits="changeColor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function getColor()
        {           
            return document.getElementById("blue").value;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:burlywood">change to the color you like</h1>
    <h3>backround color:</h3>
    <style>
        .TaCC
        {
            border-spacing:45px;
        }
         .TaCC
         {
             border:solid;
             border-collapse:collapse;
             text-align:center;
             vertical-align:bottom;
             width:45px;
             height:45px;
         }
    </style>

    <form id="form1" name="form" action="" runat="server" method="post">
        <table align="center" class="TaCC">
            <tr>
                <td class="TaCC" style="background-color:blue">
                    <input type ="submit" id="blue" name="blue" value="blue" onclick="getColor()"/>
                </td>
                <td class="TaCC" style="background-color:yellow">
                    <input type ="submit" id="yellow" name="yellow" value="yellow"/>
                </td>
                <td class="TaCC" style="background-color:red">
                    <input type ="submit" id="red" name="red" value="red"/>
                </td>
            </tr>
            <tr>
                <td class="TaCC" style="background-color:green">
                    <input type ="submit" id="green" name="green" value="green"/>
                </td>
                <td class="TaCC" style="background-color:pink">
                    <input type ="submit" id="pink" name="pink" value="pink"/>
                </td>
                <td class="TaCC" style="background-color:gray">
                    <input type ="submit" id="gray" name="gray" value="gray"/>
                </td>
            </tr>
             <tr>
                <td class="TaCC" style="background-color:white">
                    <input type ="submit" id="white" name="white" value="white"/>
                </td>
                <td class="TaCC" style="background-color:brown">
                    <input type ="submit" id="brown" name="brown" value="brown"/>
                </td>
                <td class="TaCC" style="background-color:purple">
                    <input type ="submit" id="purple" name="purple" value="purple"/>
                </td>
            </tr>
        </table><br />
        If you didn't find your color
        type it here: <input type="text" id="color" name="color" />
    </form>
    
</asp:Content>

