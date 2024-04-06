<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkCredit()
        {
            var credit = document.getElementById("creditNum").value;
            if (credit == "")
            {
                return false;
            }
            if (credit.length < 16)
            {
                window.alert("credit card number is incorrect")
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .formBuy
        {
            text-align:justify;
            margin: 0 auto;
            width: 30em;
        }       
</style>
    <h1 style="background-color:burlywood">buy</h1>
    <form class="formBuy" id="form1" name="form" action="" runat="server" method="post" onsubmit="return checkCredit()">
        Select the instrument you want:<br />
        <select id="instrument" name="instrument" required>
            <option>saxophone</option><option>clarinet</option><option>violin</option>
        </select><br /><br />
        Enter the number of the instrument:<br />
        <select id="num" name="num">
            <option>1</option><option>2</option><option>3</option>
        </select><br />
        Enter cerdit card number:<input type="text" id="creditNum" name="dreditNum" required><br /><br />
        Enter credit card date:<br />
        <select id="month" name="month" required>
            <option>1</option><option>2</option><option>3</option><option>4</option>
            <option>5</option><option>6</option><option>7</option><option>8</option>
            <option>9</option><option>10</option><option>11</option><option>12</option>
        </select>
        <select id="year" name="year" required>
        <option>25</option><option>26</option><option>27</option><option>28</option>
        <option>29</option><option>30</option><option>31</option><option>32</option>
        <option>33</option><option>34</option><option>35</option><option>36</option>
</select><br /><br />
    <input type="submit" id="buy" name="buy" value="buy"/>
    </form>
</asp:Content>

