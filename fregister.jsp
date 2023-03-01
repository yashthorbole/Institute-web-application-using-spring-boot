<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Faculty Registeration</title>
<style type="text/css">
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
#btn{
font-size: 20px;
background-color:white;
color: red;
border-radius: 10px;
}
a{
font-size: 20px;
}
#pre{
background-color: gray;
margin: 0px;
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
<body id="pre">
<div id="div">
<div id="div1">Add Faculty</div>
</div>
<form action="fregister">
<table id="main">
<tr>
<td>Faculty ID : </td>
<td><input type="number" name="id" ></td>
</tr>
<tr>
<td>First Name : </td>
<td><input type="text" name="ffname" ></td>
</tr>
<tr>
<td>Last Name : </td>
<td><input type="text" name="flname"></td>
</tr>
<tr>
<td>Qualification : </td>
<td><input type="text" name="fq"></td>
</tr>
<tr>
<td>Experience : </td>
<td><input type="number" name="fexp"></td>
</tr>
<tr>
<td>Subject : </td>
<td><input type="text" name="sub"></td>
</tr>
<tr>
<td><button id="btn" type="submit">Submit</button></td>
<td><button id="btn" type="reset">Reset</button></td>
</tr>
<tr>
<td><a href="log">Log Out</a></td>
<td><a href="back">Back</a></td>
</tr>
</table>
<table class="main">

<tr>
<th class="m1">ID</th>
<th class="m1">First Name</th>
<th class="m1">Last Name</th>
<th class="m1">Qualification</th>
<th class="m1">Experience</th>
<th class="m1">Subject</th>
<th class="m1">Action</th>
</tr>

<c:forEach items="${dataf}" var="f">
<tr>
<td class="m1">${f.id}</td>
<td class="m1">${f.ffname}</td>
<td class="m1">${f.flname}</td>
<td class="m1">${f.fq}</td>
<td class="m1">${f.fexp}</td>
<td class="m1">${f.sub}</td>
<td class="m1"><a href="delete3?id=${f.id}">Delete</a></td>
</tr>
</c:forEach>

</table>
</form>
</body>
</html>