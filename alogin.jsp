<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>See</title>
<style type="text/css">
#pre{
margin: 0px;
background-color: black;
}
#divone{
width: 250px;
height: 60px;
font-size: 25px;
background-color: purple;
color: white;
margin: 5px 600px 0px;  
border: thin;
border-radius: 10px;
}
h1{
padding: 0px;
text-align: center;
text-decoration: underline yellow;
}
a{
background-color: red;
color: white;
border-radius: 5px;
padding: 2px;
}
.tone{
color: white;
margin: 0px 200px 50px; ;
font-size: 20px;
}
</style>
</head>
<body id="pre">
<div id="divone">
<h1>Content</h1>
</div><br><br>
<table class="tone">
<tr>
<td>How to install python library =></td>
<td><video width="500" height="500" controls muted >
        <source src="${pageContext.request.contextPath}/videos/Install_python_library.mp4" type="video/mp4">
    </video>
</td>
</tr>
<tr>
<td>Swap Two numbers in java =></td>
<td>
    <video width="500" height="500" controls muted>
        <source src="${pageContext.request.contextPath}/videos/Java.mp4" type="video/mp4">
    </video>
</td>
</tr>
<tr>
<td>How to install minGW Compiler for Cpp =></td>
<td>
     <video width="500" height="500" controls muted>
        <source src="${pageContext.request.contextPath}/videos/minGW.mp4" type="video/mp4">
    </video>
</td>
</tr>
<tr>
<td><a href="home">Log Out</a></td>
</tr>    
</table>

</body>
</html>
