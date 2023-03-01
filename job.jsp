<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add vacancies</title>
<style type="text/css">
body{
box-sizing: border-box;
background-color:gray;
margin: 0px;
}
a{
font-size: 20px;
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
#btn{
font-size: 20px;
background-color:white;
color: red;
border-radius: 10px;
}
</style>
</head>
<body>
<div id="div">
<div id="div1">Add Job Openings..</div>
</div>
<form action="job">
<table id="main">
<tr>
<td>Sr. No. : </td>
<td><input type="number" name="id"></td>
</tr>
<tr>
<td>Company Name : </td>
<td><input type="text" name="cname"></td>
</tr>
<tr>
<td>URL to apply : </td>
<td><input type="url" name="curl"></td>
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


<table class="main">
<tr >
<th class="m1">Sr. No.</th>
<th class="m1">Company Name</th>
<th class="m1" >URL to apply</th>
<th class="m1">Action</th>
</tr>
<c:forEach items="${dataj}" var="j">
<tr >
<td class="m1">${j.id}</td>
<td class="m1">${j.cname}</td>
<td class="m1">${j.curl}</td>
<td class="m1"><a href="delete1?id=${j.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>