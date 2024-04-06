<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="quiz.aspx.cs" Inherits="quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="background-color:burlywood"> quiz about jazz and classical music</h1>
    <style>
        .form1
        {
            text-align:justify;
            margin: 0 auto;
            width: 30em;
        }
    </style>
    <form class="form1" id="form1" name="form1" action="" runat="server" method="post">
        
        <h3>was the jazz invented:</h3> 
        <input type="radio" id="19th" name="jazz" value="19th"/> in 19th - 20th<br />
        <input type="radio" id="16th" name="jazz" value="16th"/> in 16th - 17th<br />
        <input type="radio" id="17th" name="jazz" value="17th"/> in 17th - 19th<br /><br />
        
        <h3> instrument is not traditionally associated with jazz music:</h3>
        <input type="radio" id="saxophone" name="instrument" value="saxophone"/> saxophone<br />
        <input type="radio" id="trumpet" name="instrument" value="trumpet"/> trumpet<br />
        <input type="radio" id="violin" name="instrument" value="violin"/> violin<br /><br />

        <h3> is the name of the influential style of jazz developed in the early</h3>
        20th century in New Orleans, characterized by collective improvisation and syncopated rhythms:<br />
        <input type="radio" id="bebop" name="style"/>bebop<br />
        <input type="radio" id="dixie" name="style" value="dixie"/> dixieland<br />
        <input type="radio" id="coolJazz" name="style"/> cool jazz<br /><br />

        <h3> Which term best describes the rhythmic feel commonly found in jazz music:</h3>
        <input type="radio" id="rubato" name="style"/>rubato<br />
        <input type="radio" id="swing" name="style" value="swing"/> swing<br />
        <input type="radio" id="legto" name="style"/> legato<br /><br />

        <h3> Which of the following composers is known for his contributions to both</h3>
        jazz and classical music, blending elements of both genres in his compositions:<br />
        <input type="radio" id="Miles Davis" name="composers" value="miles davis"/> Miles Davis<br />
        <input type="radio" id="Jon Coltrane" name="composres" /> John Coltrane<br />
        <input type="radio" id="Duke Ellington" name="composres" />Duke Ellington<br /><br />

        <h3> who was bach:</h3>
        <input type="radio" id="greatW" name="bach" /> A great warrior<br />
        <input type="radio" id="composer" name="bach" value="composer"/> A composer<br />
        <input type="radio" id="singer" name="bach" /> A singer<br /><br />

        <h3> when was the classical era:</h3>
        <input type="radio" id="1820" name="era" />1820 - 1900<br />
        <input type="radio" id="1543" name="era" /> 1543-1610<br />
        <input type="radio" id="1750" name="era" value="1750"/> 1750 - 1820 <br /> <br />

        <h3> Which musical instrument family includes the violin, viola,</h3>
        <h3>  cello, and double bass:</h3>
        <input type="radio" id="strings" name="family" value="strings" /> strings<br />
        <input type="radio" id="woodwinds" name="family" /> woodwinds<br />
        <input type="radio" id="brass" name="family" /> brass<br /> <br />
        <input type="submit" id="submit" name="submit" value="check" /> 
    </form>
</asp:Content>

