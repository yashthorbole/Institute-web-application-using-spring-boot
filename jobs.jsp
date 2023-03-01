<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Openings</title>
<style type="text/css">
#pre{
margin: 0px;
background-image: linear-gradient(yellow,red,purple);
background-repeat: no-repeat;
background-size: cover;
background-attachment: fixed;
}
#h3{
text-align: center;
color: white;
text-decoration: underline yellow;
}
#t4,th,td{
border: thin solid;
border-collapse: collapse;
margin: 50px 400px;
font-size:22px;
padding: 5px;
text-align: center;
background-color: olive;
color: white;
}
th{
background-color: green;
}
#id{
background-color: gray;
}
#h4{
margin:10px;
text-align: center;
}
#s1{
color: red;
}
</style>
</head>
<body id="pre">
<table id="t4">
<tr>
<thead><h1 id="h3">New Openings..</h1></thead>
<h3 id="h4"><span id="s1">*</span>Register & access our free content.<span id="s1">*</span></h3>
</tr>
<tr >
<th >Sr. No.</th>
<th >Company Name</th>
<th >URL to apply</th>
</tr>
<c:forEach items="${dataj}" var="j">
<tr >
<td id="id" >${j.id}</td>
<td >${j.cname}</td>
<td ><a href="${j.curl}" target="blank">${j.curl}</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>