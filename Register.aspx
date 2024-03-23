<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll()
        {
            let bo = true;
            if (checkFirstname() == false)
            {
                bo = false;
            }

            if (checkLastname() == false)
            {
                bo =  false;
            }            
            return bo;
        }

        function checkFirstname()
        {
            let fname = document.getElementById("Fname").value;
            
            if (fname.charAt(0) < 'A' || fname.charAt(0) > 'Z')
            {
                window.alert("First name must start with a capital letter");
                document.getElementById("submit").type = "button";
                return false;
            }

            for (let i = 1; i < fname.length; i++)
            {
                if (fname.charAt(i) < 'a' || fname.charAt(i) > 'z')
                {
                    document.getElementById("submit").type = "button";
                    return false;                                    
                }
            }
            document.getElementById("submit").type = "submit";
            return true;
        }

        function checkLastname()
        {
            let Lname = document.getElementById("Lname").value;
            if (Lname.charAt(0) < 'A' || Lname.charAt(0) > 'Z')
            {
                window.alert("Last name must start with a capital letter");
                document.getElementById("submit").type = "button";
                return false;
            }
            for (let i = 1; i < Lname.length; i++)
            {
                if (Lname.charAt(i) < 'a' || Lname.charAt(i) > 'z')
                {
                    document.getElementById("submit").type = "button";
                    return false;
                }
            }
            document.getElementById("submit").type = "submit";
            return true;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:burlywood">register</h1>
    <style>
        .formR
        {
            text-align:justify;
            margin: 0 auto;
             width: 30em;
        }
    </style>
    <form class="formR" id="form1" name="form1" action="" runat="server" method="post" > 
        First name: <input type="text" id="Fname" name="Fname" required /> <br />
        <h1> </h1>

        Last name: <input type="text" id="Lname" name="Lname" required/> <br />
        <h1> </h1>

        Username: <input type="text" id="Uname" name="Uname" required /> <br />
        <h1> </h1>

        Password: <input type="password" id="pass" name="pass" required /> <br />
        <h1> </h1>

        Gender: <br />
        Male: <input type="radio" id="male" name="gender" value="male" />
        Female: <input type="radio" id="female" name="gender" value="female" />
        Other: <input type="radio" id="other" name="gender" value="other" />
        Prefer not to say:<input type="radio" id="preferN" name="gender" value="other" /><br /> 
        <h1> </h1>
        Age: 
        <select id="age" name="age" required>
            <option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
            <option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>
            <option>11</option><option>12</option><option>13</option><option>14</option><option>15</option>
            <option>16</option><option>17</option><option>18</option><option>19</option><option>20</option>
            <option>21</option><option>22</option><option>23</option><option>24</option><option>25</option>
            <option>26</option><option>27</option><option>28</option><option>29</option><option>30</option>
            <option>31</option><option>32</option><option>33</option><option>34</option><option>35</option>
            <option>36</option><option>37</option><option>38</option><option>39</option><option>40</option>
            <option>41</option><option>42</option><option>43</option><option>44</option><option>45</option>
            <option>46</option><option>47</option><option>48</option><option>49</option><option>50</option>
            <option>51</option><option>52</option><option>53</option><option>54</option><option>55</option>
            <option>56</option><option>57</option><option>58</option><option>59</option><option>60</option>
            <option>61</option><option>62</option><option>63</option><option>64</option><option>65</option>
            <option>66</option><option>67</option><option>68</option><option>69</option><option>70</option>
        </select>
        <br />
        <h1> </h1>
        Interests: <br />
        Musician: <input type="checkbox" id="musician" name="interests" /><br />
        Student: <input type="checkbox" id="student" name="interests" /><br />
        For a present: <input type="checkbox" id="Fpresent" name="interests" /><br />
        <h1> </h1>
        the number of years you play:
        <select>
            <option>0</option><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
            <option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>
            <option>11</option><option>12</option><option>13</option><option>14</option><option>15</option>
        </select>
        <br />
        <br />
        your fevorite instrument: <input type="text" id="fevorite" name="fevorite" /> <br />
        <br />
        <input type="submit" id="submit" name="submit" value="submit" onclick=" return checkAll()" />
        <input type="reset" id="reset" name="reset" />
    </form>
</asp:Content>

