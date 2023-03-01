<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style type="text/css">
#pre{
background-color: gray;
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
#main{
margin: 100px 400px 100px 480px;
border: thin solid darkcyan;
padding: 50px;
font-size: 30px;
border-radius: 10px;
background-color: white;
}
a{
font-size: 20px;
}
#s1{
color: red;
}
marquee{
background-color: gray;
color: purple;
font-size: 30px;
}
</style>
</head>
<body id="pre">
<marquee behavior="alternate" scrollamount="15" direction="right"><i><b>It's Yash's Institute</b></i><sub><span id="s1"> *</span>Register & access our free content.<span id="s1">*</span></sub></marquee>
<form action="register">
<table id="main">
<tr>
<td>Enter First Name : </td>
<td><input type="text" name="fname" required></td>
</tr>
<tr>
<td>Enter Last Name : </td>
<td><input type="text" name="lname" required></td>
</tr>
<tr>
<td>Enter Email : </td>
<td><input type="email" name="id" required></td>
</tr>
<tr>
<td>Password : </td>
<td><input type="password" name="password" required></td>
</tr>
<tr>
<td>Enter Highest Qualification : </td>
<td><input type="text" name="degree" required placeholder="eg.-BE IT"></td>
</tr>
<tr>
<td>Enter Address : </td>
<td><textarea cols="20" rows="5" name="address" required="required" ></textarea></td>
</tr>
<tr>
<td>Enter Date of Birth : </td>
<td><input type="date" name="dob" required="required"></td>
</tr>
<tr>
<td>Enter Mobile No. : </td>
<td><input type="text" name="mno" pattern="[0-9]{10}" required></td>
</tr>
<tr>
<td>Gender : </td>
<td>
<select name="gender">
<option>Select</option>
<option>Male</option>
<option>Female</option>
<option>Do not wish to disclosed</option>
</select>
</td>
</tr>
<tr>
<!-- <td>Upload Resume : </td>
<td><input type="file" name="file" accept=".pdf"></td>
</tr>-->
<tr>
<td><button id="btn" type="submit" onclick="as()">Register</button></td>
<td><button id="btn1" type="reset">Reset</button></td>
</tr>
<tr>
<td><a href="log" >Log in</a></td>
<td><a href="home">Home</a></td>
</tr>
</table>
</form>

<script type="text/javascript">
function as() {
	alert("Registeration Done Successefully \n We'll get back to you ASAP....")
}
</script>

</body>
</html>