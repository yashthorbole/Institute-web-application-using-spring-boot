<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<style type="text/css">
marquee{
background-color: gray;
color: purple;
font-size: 30px;
}
#pre{
background-color: gray;
}
#main{
margin: 100px 400px 100px 480px;
border: thin solid darkcyan;
padding: 50px;
font-size: 50px;
border-radius: 10px;
background-color: white;
}
#btn{
font-size: 30px;
background-color:white;
color: green;
border-radius: 10px;

}
#btn1{
font-size: 30px;
background-color:white;
color: red;
border-radius: 10px;
}
a{
font-size: 20px;
}
</style>
</head>
<body id="pre">
<marquee behavior="alternate" scrollamount="15" direction="right"><i><b>Welcome to Yash's Institute</b></i></marquee>
<form action="login">
<table id="main">
<tr>
<td>Email id.:</td>
<td><input type="email" required name="id" placeholder="Username"></td>
</tr>
<tr>
<td>Password :</td>
<td><input type="password" required name="password" placeholder="Password"></td>
</tr>
<tr>
<td><button id="btn" type="submit" onclick="li()" >Login</button></td>
<td><button id="btn1" type="reset">Reset</button></td>
</tr>
<tr>
<td><a href="reg" >Register</a></td>
<td><a href="home">Home</a></td>
</tr>
</table>
</form>
<script type="text/javascript">
function li() {
	alert("Logged in Successfully");
}
</script>

</body>
</html>