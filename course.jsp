<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update course data</title>
<style type="text/css">
body{
box-sizing: border-box;
background-color:gray;
margin: 0px;
}
a{
font-size: 20px;
}
.two{
text-align: center;
font-size: 30px;
border-collapse: collapse;
}
#btn{
font-size: 20px;
background-color:white;
color: red;
border-radius: 10px;
}

#main{
margin: 100px 400px 100px 480px;
border: thin solid darkcyan;
padding: 50px;
font-size: 30px;
border-radius: 10px;
background-color: white;
}
.main,.m1{
border: thin solid;
border-collapse: collapse;
text-align: center;
margin: 15px;
font-size: 20px;
}
#div{
width: 100%;
height: 2%;
background-color: aqua;
}
#div1{
font-size: 35px;
color: white;
padding: 5px 5px 0px 45px  ;
}
</style>
</head>
<body>
<div id="div">
<div id="div1">Add Course</div>
</div>

<form action="course">
<table id="main">
<tr>
<td>Course Duration : </td>
<td><input type="text" name="id"></td>
</tr>
<tr>
<td>Course Name : </td>
<td><input type="text" name="cname"></td>
</tr>
<tr>
<td>Professor : </td>
<td><input type="text" name="cprof"></td>
</tr>
<tr>
<td>Course Details : </td>
<td><textarea maxlength="300" name="cdetails"></textarea></td>
</tr>
<tr>
<td><button id="btn" type="submit">Submit</button></td>
<td><button id="btn" type="reset">Reset</button></td>
</tr>
<tr>
<td><a href="log">Log out</a></td>
<td><a href="back">Back</a></td>
</tr>
</table>



<br><br>
<table class="main">
<tr >
<th class="m1">Course Duration</th>
<th class="m1">Course Name</th>
<th class="m1" >Professor</th>
<th class="m1">Course details</th>
<th class="m1">Action</th>
</tr>
<c:forEach items="${datac}" var="c">
<tr >
<td class="m1">${c.id}</td>
<td class="m1">${c.cname}</td>
<td class="m1">${c.cprof}</td>
<td class="m1">${c.cdetails}</td>
<td class="m1"><a href="delete2?id=${c.id}">Delete</a></td>
</tr>
</c:forEach>
</table>

</form>
</body>
</html>