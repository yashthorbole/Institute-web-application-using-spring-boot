<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Yash Institute</title>
<style type="text/css">
.bb{
box-sizing:border-box;
margin:0px 10px ;
background-color: black;

}
marquee{
background-color: gray;
color: purple;
font-size: 30px;
}
#main{
height: 50px;
width: 1500px;
background-color: darkcyan;
text-align: center;
font-size: 30px;
}
.one{
color: white;
}
h1{
color: darkblue;
}
#mainone{
height: 500px;
width: 1500px;
background-color: white;
padding: 5px;
}
#mone{
height: 500px;
width: 750px;
text-align: justify;

}
#mtwo{
height: 500px;
width: 750px;
}
.two{
font-style: italic;
font-size: 25px;
}
#done{
height:50px;
width: 1500px;
text-align: center;
font-size: 50px;
background-color: white;
}
#maintwo{
height: 500px;
width: 1500px;
background: white;
}
#hone{
text-align: center;
}
#pone{
text-align: justify;
}
#m2-1{
width: 500px;
border: thin solid cyan;
padding: 10px;
background-color: white;
}
#m2-2{
width: 500px;
border: thin solid cyan;
padding: 10px;
margin: 5px;
background-color: white;
}
#m2-3{
width: 500px;
border: thin solid cyan;
padding: 10px;
background-color: white;
}
#m2-1,#m2-2,#m2-3{
font-family: monospace;
}
#btn{
border:thin solid red;
border-radius: 5px;
padding: 5px;
cursor: pointer;
background-color: orange;
}

#d{
height: 250px;
width: 1500px;
background-color: gray;
font-size: 25px;
text-align: center;
}
.last{
color: maroon;
border: thin  ;
padding: 5px;

}
#w{
height:200px;
width: 1500px;
background-color:aqua;
}
#intro{
color: white;
}
#s1{
color: red;
}
#firstimg{
padding: 75px;
width: 600px;
}
</style>
</head>
<body class="bb">
<form action="welcome">
</form>
<marquee behavior="alternate" scrollamount="15" direction="right"><i><b>It's Yash's Institute</b></i><sub><span id="s1"> *</span>Register & access our free content.<span id="s1">*</span></sub></marquee>
<table id="main">
<tr>
<th><a href="home" class="one">Home</a></th>
<th><a href="ourcourse" class="one">Courses</a></th>
<th><a href="ourfaculty" class="one">Faculty</a></th>
<th><a href="ourplacement" class="one">Placements</a></th>
<th><a href="ourjob" class="one">Jobs</a></th>
<th><a href="log" class="one">Login</a></th>
<th><a href="reg" class="one">Register</a></th>
</tr>
</table>

<h4 id="intro">welcome to</h4>
<h1 id="intro">Yash's IT Training and Placement Institute.....</h1>

<table id="mainone">
<tr id="mone">
<td>
<p class="two"><span style="font-size: 40px;">Y</span>ash IT Training and Placement Institute is a professional education and training organization that provides job-oriented courses in the field of information technology. The institute is dedicated to providing quality training to students, equipping them with the skills and knowledge necessary for a successful career in the IT industry. The training programs offered by Yash IT include courses in software development, web development, data analytics, cloud computing, and digital marketing. The institute also provides placement support to students, helping them find suitable job opportunities in the IT sector. With a team of experienced instructors and state-of-the-art facilities,
 Yash IT is a leading choice for students looking to advance their careers in the fast-paced world of technology.</p>
</td>
<td id="mtwo">
<img src="${pageContext.request.contextPath}/images/about.jpg" alt="My Image" id="firstimg">
</td>
</tr>
</table>
<div id="done">
Our Popular courses
</div>
<table class="maintwo">
<tr>
<td id="m2-1">
<h3 id="hone">Java</h3>
<p id="pone">Definition : Java is a general purpose, class-based, object oriented programming language designed for having lesser implementation dependencies.</p>
<button id="btn"><a href="ourcourse" >Explore more</a></button>
</td>
<td id="m2-2">
<h3 id="hone">Machine Learning</h3>
<p id="pone">Definition : Machine learning is a subfield of AI which allows a machine to automatically learn from past data without programming explicitly. </p>
<button id="btn"><a href="ourcourse" >Explore more</a></button>
</td>
<td id="m2-3">
<h3 id="hone">Artificial Intelligence</h3>
<p id="pone">Definition : Artificial Intelligence is the ability  of a computer to do task that are usually done by human's, because they require human intelligence.</p>
<button id="btn"><a href="ourcourse" >Explore more</a></button>
</td>
</tr>
</table>

<div id="w">
<p>Why</p>
<h2>Train with US?</h2>
<ul>
<li>Interview preparation</li>
<li>Resume analysis</li>
<li>LinkedIn and Naukri profile review</li>
<li>Access to Employee Referral Program</li>
<li>Completion certificate with online verification facility</li>
</ul>
</div>
<div id="d">
<br><u>Thank You & Visit Again</u><hr>
<tr>
<th><a href="home" class="last">Top</a></th>
<th><a href="ourcourse" class="last">Our Courses</a></th>
<th><a href="ourfaculty" class="last">Our Faculty</a></th>
<th><a href="ourplacement" class="last">Placements</a></th>
<th><a href="ourjob" class="last">Opennings</a></th>
<th><a href="log" class="last">Login</a></th>
<th><a href="reg" class="last">Register</a></th><hr>
<th><p class="last">Contact details<br><a href="yashthorbole@gmail.com">yashthorbole@gmail.com</a><br>9921721264</p></th>
</tr>
</div>
</body>
</html>