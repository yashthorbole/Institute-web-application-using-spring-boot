<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Courses</title>
<style type="text/css">
#pre{
background-color: gray;
margin: 0px;
background-image: url("${pageContext.request.contextPath}/images/back.jpg");
background-attachment: fixed;
background-repeat: no-repeat;
background-size: cover;
color: white;
}
#h3{
text-align: center;
color: white;
text-decoration: underline yellow;
}
#t2,th,td{
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
#h4{
margin:10px;
text-align: center;
;
}
#s1{
color: red;
}
#firstimg{
float: right;
}
</style>
</head>
<body id="pre">

<table id="t2">
<tr>
<thead><h1 id="h3">COURSES</h1></thead>
<h3 id="h4"><span id="s1">*</span>Register & access our free content.<span id="s1">*</span></h3>
</tr>
<tr>
<th>Course Duration</th>
<th>Course Name</th>
<th>Professor</th>
<th>Course details</th>
</tr>
<c:forEach items="${datac}" var="c">
<tr>
<td>${c.id}</td>
<td>${c.cname}</td>
<td>${c.cprof}</td>
<td>${c.cdetails}</td>
</tr>
</c:forEach>
</table>

</body>
</html>