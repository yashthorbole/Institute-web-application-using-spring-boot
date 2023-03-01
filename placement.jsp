<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add placements</title>
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
#pre{
background-color: gray;
margin: 0px;
}
a{
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
<body id="pre">
<div id="div">
<div id="div1">Add Placed Students here...</div>
</div>
<form action="placement">
<table id="main">

<tr>
<td>Package (CTC) : </td>
<td><input type="text" name="id" placeholder="eg.- 5.2"></td>
</tr>
<tr>
<td>Student Name : </td>
<td><input type="text" name="sname" ></td>
</tr>
<tr>
<td>Company Name : </td>
<td><input type="text" name="scompany"></td>
</tr>
<tr>
<td>Qualification : </td>
<td><input type="text" name="sdegree"></td>
</tr>
<tr>
<td>College Name : </td>
<td><input type="text" name="sclgname"></td>
</tr>
<tr>
<td>CGPA : </td>
<td><input type="text" name="cgpa" placeholder="eg.- 8.2"></td>
</tr>
<tr>
<td>Role : </td>
<td><select name="role">
<option>Select</option>
<option>Developer</option>
<option>Tester</option>
</select>
</td>
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
<th class="m1">Package</th>
<th class="m1">Student Name</th>
<th class="m1">Company Name</th>
<th class="m1">Qualification</th>
<th class="m1">College Name</th>
<th class="m1">CGPA</th>
<th class="m1">Role</th>
<th class="m1">Action</th>
</tr>

<c:forEach items="${datap}" var="p">
<tr>
<td class="m1">${p.id}</td>
<td class="m1">${p.sname}</td>
<td class="m1">${p.scompany}</td>
<td class="m1">${p.sdegree}</td>
<td class="m1">${p.sclgname}</td>
<td class="m1">${p.cgpa}</td>
<td class="m1">${p.role}</td>
<td class="m1"><a href="delete4?id=${p.id}">Delete</a></td>
</tr>
</c:forEach>

</table>
</form>
</body>
</html>