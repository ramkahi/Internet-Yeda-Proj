<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll()
        {
            
            if (checkFirstname() == false)
            {
                return false;
            }

            if (checkLastname() == false)
            {
                return false;
            }     

            if (checkUname() == false)
            {
                return false;
            }

            if (checkPass() == false)
            {
                return false;
            }

            if (checkFavourite() == false)
            {
                return false;
            }

            if (checkPhone() == false)
            {
                return false;
            }

            if (checkEmail() == false)
            {
                return false;
            }
            return true;
        }

        function checkFirstname()
        {
            let fname = document.getElementById("Fname").value;
            if (fname == "")
            {
                return false;
            }
            if (fname.charAt(0) < 'A' || fname.charAt(0) > 'Z')
            {
                window.alert("First name must start with a capital letter");
                
                return false;
            }

            for (let i = 1; i < fname.length; i++)
            {
                if (fname.charAt(i) < 'a' || fname.charAt(i) > 'z')
                {
                    return false;                                    
                }
            }
            
            return true;
        }

        function checkLastname()
        {
            let Lname = document.getElementById("Lname").value;
            if (Lname.charAt(0) < 'A' || Lname.charAt(0) > 'Z')
            {
                window.alert("Last name must start with a capital letter");
                
                return false;
            }
            for (let i = 1; i < Lname.length; i++)
            {
                if (Lname.charAt(i) < 'a' || Lname.charAt(i) > 'z')
                {
                    
                    return false;
                }
            }
            
            return true;
        }

        function checkUname()
        {
            let Uname = document.getElementById("Uname").value;
            if (Uname.length < 4)
            {
                
                window.alert("User name needs to be at least 4 characters");
                return false;
            }

            for (let i = 0; i < Uname.length; i++)
            {
                if (Uname.charAt(i) >= '!' && Uname.charAt(i) <= ')' || Uname.charAt(i)==' ')
                {
                    
                    window.alert("User name can't have strange characters");
                    return false;
                }
            }
            
            return true;
        }

        function checkPass()
        {
            //at least 6 character
            var pass = document.getElementById("pass").value;
            if (pass.length < 6)
            {
                
                window.alert("Password needs to be at least 6 characters");
                return false;
            }

            //at least one capital character
            var countCaps = 0;
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= 'A' && pass.charAt(i) <= 'Z')
                {
                    countCaps++;
                }
            }
            if (countCaps == 0)
            {
                
                window.alert("Password needs at least one capital character");
                return false;
            }

            // at least one regular character
            var countRegular = 0;
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= 'a' && pass.charAt(i) <= 'z')
                {
                    countRegular++;
                }
            }

            if (countRegular == 0)
            {
                
                window.alert("Password needs at least one regular character");
                return false;
            }

            //at least one number
            var countNum = 0;
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= '0' && pass.charAt(i) <= '9')
                {
                    countNum++;
                }
            }

            if (countNum == 0)
            {
                
                window.alert("Password needs at least one number");
                return false;
            }

            // no space
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) == ' ')
                {
                
                    window.alert("Password can't have spaces");
                    return false;
                }
            }

            // one weird character
            var countWeird = 0;
            for (var i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) >= '!' && pass.charAt(i) <= ')' || pass.charAt(i) == '{' || pass.charAt(i) == '}')
                {
                    countWeird++;
                }   
            }

            if (countWeird == 0)
            {
                
                window.alert("Password needs at least one strange character");
                return false;
            }
            
            return true;
        }

        function checkFavourite()
        {
            var favourite = document.getElementById("favourite").value;
            for (var i = 0; i < favourite.length; i++)
            {
                if (favourite.charAt(i) <= '0' && favourite.charAt(i) <= '9')
                {
            
                    window.alert(" Your favorite instrument can't have numbers in it's name")
                    return false;
                }
            }
            
            return true;
        }

        function checkPhone() {
            var phone = document.getElementById("phoneNum").value;
            if (phone.charAt(0) != 0) {
                window.alert("The phone number must start with zero");
                return false;
            }

            if (phone.length != 10) {
                window.alert("The phone number must be a 10 digit number");
                return false;
            }

            for (let i = 0; i < phone.length; i++) {
                if (phone.charAt(i) < '0' || phone.charAt(i) > '9') {
                    window.alert(" The phone number can't obtain characters that aren't numbers");
                    return false;
                }
            }
            return true;
        }

        function checkEmail() {
            var email = document.getElementById("email").value;
            if (email.charAt(0) < 'a' || email.charAt(0) > 'z')
            {
                return false;
            }
            var count1 = 0;
            var count2 = 0;
            for (let i = 0; i < email.length; i++)
            {
                if (email.charAt(i) == '@')
                {
                    count1++;
                }
                if (email.charAt(i) == '.')
                {
                    count2++;
                }
            }

            if (count1 == 0 || count2 == 0) {
                window.alert("Email is incorect")
                return false;
            }

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
    <form class="formR" id="form1" name="form1" action="" runat="server" method="post" onsubmit="return checkAll()"> 
        First name: <input type="text" id="Fname" name="Fname" required /> <br />
        <h1> </h1>

        Last name: <input type="text" id="Lname" name="Lname" required/> <br />
        <h1> </h1>

        Username: <input type="text" id="Uname" name="Uname" required /> <br />
        <h1> </h1>

        Password: <input type="password" id="pass" name="pass" required /> <br />
        <h1> </h1>
        Enter email: <input type="text" id="email" name="email" required /><br />
        <h1> </h1>
        Enter phone number: <input type="text" id="phoneNum" name="phoneNum" required /><br />
        <h1> </h1>
        Gender: <br />
        Male: <input type="radio" id="male" name="gender" value="male" required/>
        Female: <input type="radio" id="female" name="gender" value="female" required/>
        Other: <input type="radio" id="other" name="gender" value="other" required/>
        Prefer not to say:<input type="radio" id="preferN" name="gender" value="other" required/><br /> 
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
        Musician: <input type="checkbox" id="musician" name="interests" value="musician" /><br />
        Student: <input type="checkbox" id="student" name="interests" value="student"/><br />
        For a present: <input type="checkbox" id="Fpresent" name="interests" value="for a present" /><br />
        Teacher: <input type="checkbox" id="Teacher" name="interests" value="Teacher" /><br />
        <h1> </h1>
        the number of years you play:
        <select id="numY" name="numY" required>
            <option>0</option><option>1</option><option>2</option><option>3</option><option>4</option><option>5</option>
            <option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>
            <option>11</option><option>12</option><option>13</option><option>14</option><option>15</option>
        </select>
        <br />
        <br />
        your fevorite instrument: <input type="text" id="favorite" name="favorite" required/> <br />
        <br />
        <input type="submit" id="submit" name="submit" value="submit"  />
        <input type="reset" value="clear"/>
    </form>
</asp:Content>

