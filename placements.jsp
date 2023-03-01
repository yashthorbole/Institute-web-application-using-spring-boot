<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Achievements</title>
<style type="text/css">
#pre{

margin: 0px;
background-image: url("${pageContext.request.contextPath}/images/backthree.jpg");
background-size: cover;
background-repeat: no-repeat;
background-attachment: fixed;
color: white;
}
#h3{
text-align: center;
color: white;
text-decoration: underline yellow;
}
#t3,th,td{
border: thin solid;
border-collapse: collapse;
margin: 50px 400px;
font-size: 25px;
padding: 3px;
text-align: center;
}
th{
background-color:orange;
}
td{
background-color: purple;
}
#h4{
margin:10px;
text-align: center;
color: black;
}
#s1{
color: red;
}
</style>
</head>
<body id="pre">
<table id="t3">
<tr>
<thead><h1 id="h3">Placement's</h1></thead>
<h3 id="h4"><span id="s1">*</span>Register & access our free content.<span id="s1">*</span></h3>
</tr>
<tr>
<th>Package (CTC)</th>
<th>Student Name</th>
<th>Company Name</th>
<th>Qualification</th>
<th>College Name</th>
<th>CGPA</th>
<th>Role</th>
</tr>

<c:forEach items="${datap}" var="p">
<tr>
<td>${p.id}</td>
<td>${p.sname}</td>
<td>${p.scompany}</td>
<td>${p.sdegree}</td>
<td>${p.sclgname}</td>
<td>${p.cgpa}</td>
<td>${p.role}</td>
</tr>
</c:forEach>
</table>
</body>
</html>