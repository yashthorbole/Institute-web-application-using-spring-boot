<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#pre{
background-color: gray;
margin: 0px;
background-image: url("${pageContext.request.contextPath}/images/backone.jpg");
background-attachment: fixed;
background-repeat: no-repeat;
background-size: cover;
color: white;
}
#t1,th,td{
border: thin solid;
border-collapse: collapse;
margin: 50px 400px;
padding: 3px;
text-align: center;
font-size: 25px;
}
th{
background-color: green;
}
td{
background-color:orange;
}
#h3{
text-align: center;
color: white;
text-decoration: underline yellow;
}
#h4{
margin:10px;
text-align: center;
color: black;
}
#s1{
color: red;
}
#id{
background-color: gray;
}
</style>
</head>
<body id="pre">
<table id="t1">
<tr>
<thead><h1 id="h3">FACULTY DATA</h1><thead>
<h3 id="h4"><span id="s1">*</span>Register & access our free content.<span id="s1">*</span></h3>
</tr>
<tr>
<th>ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Qualification</th>
<th>Experience</th>
<th>Subject</th>
</tr>

<c:forEach items="${dataf}" var="f">
<tr>
<td id="id">${f.id}</td>
<td>${f.ffname}</td>
<td>${f.flname}</td>
<td>${f.fq}</td>
<td>${f.fexp}</td>
<td>${f.sub}</td>
</tr>
</c:forEach>
</table>
</body>
</html>