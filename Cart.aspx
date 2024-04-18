<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:burlywood">Cart</h1>
    <style>   
        .buy
        {
            height: 50px;
            width: 100px;
            font:30px;
            background-color:burlywood;
        }
        .h3
        {
            text-align:justify;
            margin: 0 auto;
            width: 30em;
        }
        .td
        {
            border-collapse:collapse;
            vertical-align:bottom;
            padding-bottom:20px;
            padding-top:20px;
            width:300px;
            height:150px;
            border-top-style:groove;
            border-bottom-style:groove;
        }
        .table 
        {
            border-collapse:collapse;
        }
        .img
        {
            width:150px;
            height:150px;
        }

        .form 
        {
            text-align:right;
            
        }
    </style>
    <form id="form1" name="form" action="" runat="server" method="post" >
            <table class="table" align="center">
                <tr>
                    <td class="td"><img class="img" src="<%=one %>"/> </td>
                    <td class="td">
                        <h3><%=text1%></h3>
                        <h3><%=price1 %></h3>
                        <input type="submit" id="negi1" name="negi1" value="-"/>
                        <input type="submit" id="plus1" name="plus1" value="+"/>
                    </td>
                </tr>
                <tr>
                    <td class="td"><img class="img" src="<%=two %>" /></td>
                    <td class="td">
                        <h3><%=text2%></h3>
                        <h3><%=price2%></h3>
                        <input type="submit" id="negi2" name="negi2" value="-"/>
                        <input type="submit" id="plus2" name="plus2" value="+"/>
                    </td>
                    <td><img class="img" src="Images/imagesShop/white2.png"/></td>
                    <td><img class="img" src="Images/imagesShop/white2.png"/></td>
                    <td class="form"><input class="buy" type="submit" id="buy" name="buy"  value="Buy"/>  </td>
                </tr>
                <tr>
                    <td class="td"><img class="img" src="<%=three%>"></td>
                    <td class="td">
                        <h3><%=text3%></h3>
                        <h3><%=price3%></h3>
                        <input type="submit" id="negi3" name="negi3" value="-"/>
                        <input type="submit" id="plus3" name="plus3" value="+"/>
                    </td>
                </tr>
                <tr>
                    <td class="td"><img class="img" src="<%=four %>" /></td>
                    <td class="td">
                        <h3><%=text4%></h3>
                        <h3><%=price4%></h3>
                        <input type="submit" id="negi4" name="negi4" value="-"/>
                        <input type="submit" id="plus4" name="plus4" value="+"/>
                    </td>
                </tr>
                <tr>
                    <td class="td"><img class="img" src="<%=five %>" /></td>
                    <td class="td">
                        <h3><%=text5%></h3>
                        <h3><%=price5%></h3>
                        <input type="submit" id="negi5" name="negi5" value="-"/>
                        <input type="submit" id="plus5" name="plus5" value="+"/>
                    </td>
                </tr>
                <tr>
                    <td class="td"><img class="img" src="<%=six %>" /></td>
                    <td class="td">
                        <h3><%=text6%></h3>
                        <h3><%=price6%></h3>
                        <input type="submit" id="negi6" name="negi6" value="-"/>
                        <input type="submit" id="plus6" name="plus6" value="+"/>
                    </td>
                </tr>

                <tr>
                    <td class="td"><img class="img" src="<%=seven %>" /></td>
                    <td class="td">
                        <h3><%=text7%></h3>
                        <h3><%=price7%></h3>
                        <input type="submit" id="negi7" name="negi7" value="-"/>
                        <input type="submit" id="plus7" name="plus7" value="+"/>
                    </td>
                </tr>

                <tr>
                    <td class="td"><img class="img" src="<%=eight %>" /></td>
                    <td class="td">
                        <h3><%=text8%></h3>
                        <h3><%=price8%></h3>
                        <input type="submit" id="negi8" name="negi8" value="-"/>
                        <input type="submit" id="plus8" name="plus8" value="+"/>
                    </td>
                </tr>
                <tr>
                    <td class="td"><img class="img" src="<%=nine%>" /></td>
                    <td class="td">
                        <h3><%=text9%></h3>
                        <h3><%=price9%></h3>
                        <input type="submit" id="negi9" name="negi9" value="-"/>
                        <input type="submit" id="plus9" name="plus9" value="+"/>
                    </td>
                </tr>

            </table>
    </form>
</asp:Content>

