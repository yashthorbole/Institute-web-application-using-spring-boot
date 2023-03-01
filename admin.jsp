<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin</title>
<style type="text/css">
body{
box-sizing: border-box;
background-color: gray;
margin: 0px;
}
#t1,#t2,#t3,#t4,#t5,th,td{
border: thin solid;
border-collapse: collapse;
margin: 10px;
padding: 3px;
text-align: center;
}
#div{
width: 100%;
height: 2%;
/*position: fixed;*/
background-color: aqua;
}
#div1{
font-size: 35px;
color: white;
padding: 5px 5px 0px 45px  ;
}
#div2,#a{
border: thin;
color: navy;
font-size: 20px;
padding: 10px 10px 0px 55px  ;
}
#h3{
text-align: center;
color: white;
text-decoration: underline yellow;
}
</style>
</head>
<body>
<div id="div">
<div id="div1">Admin Pannel</div>
<div id="div2">
<a id="a" href="freg">Register Faculty</a>
<a id="a" href="cadd">Add Course</a>
<a id="a" href="placeds">Add Placed Students</a>
<a id="a" href="tjob">Add Vacancies</a>
<a id="a" href="home">Log Out</a>
</div>
</div>
<form action="admin">


<table id="t1">
<tr>
<thead><h2 id="h3">FACULTY DATA</h2><thead>
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
<td>${f.id}</td>
<td>${f.ffname}</td>
<td>${f.flname}</td>
<td>${f.fq}</td>
<td>${f.fexp}</td>
<td>${f.sub}</td>
</tr>
</c:forEach>
</table>


<table id="t2">
<tr>
<thead><h2 id="h3">COURSES</h2></thead>
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


<table id="t3">
<tr>
<thead><h2 id="h3">Placement's</h2></thead>
</tr>
<tr>
<th>Package</th>
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

<table id="t4">
<tr>
<thead><h2 id="h3">New Openings..</h2></thead>
</tr>
<tr >
<th >Sr. No.</th>
<th >Company Name</th>
<th >URL to apply</th>
</tr>
<c:forEach items="${dataj}" var="j">
<tr >
<td >${j.id}</td>
<td >${j.cname}</td>
<td >${j.curl}</td>
</tr>
</c:forEach>
</table>

<table id="t5">
<tr>
<thead><h2 id="h3">STUDENTS DATA</h2></thead>
</tr>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email Id.</th>
<th>Password</th>
<th>Address</th>
<th>Mobile No.</th>
<th>Date of Birth</th>
<th>Gender</th>
<th>Degree</th>
<th>Action</th>
</tr>
<c:forEach items="${data}" var="s">
<tr>
<td>${s.fname}</td>
<td>${s.lname}</td>
<td>${s.id}</td>
<td>${s.password}</td>
<td>${s.address}</td>
<td>${s.mno}</td>
<td>${s.dob}</td>
<td>${s.gender}</td>
<td>${s.degree}</td>
<td><a href="delete?id=${s.id}">Delete</a></td>

</tr>
</c:forEach>
</table>

</form>


</body>
</html>