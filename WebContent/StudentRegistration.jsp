<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="StudentRegistrationSubmit.jsp">
<center>
<h1><font color="blue"face="arial black"><b><u>REGISTRATION FORM</b></u></font></h1>
<table border-collapse:collapse width:100%>
<tr><td><font size="4"><b>Student Login ID</b></font></td><td><input type="text"name="slid"placeholder="Login ID"></td></tr>
<tr><td><font size="4"><b>Enter Password</b></font></td><td><input type="password" name="pwd" placeholder="Password"></td></tr>
<tr><td><font size="4"><b>Re-Enter Password</b></font></td><td><input type="password" name="rpwd" placeholder="Re-Enter Password"></td></tr>
<tr><td><font size="4"><b>Student Name</b></font></td><td><input type="text"name="sname"placeholder="Student Name"></td></tr>
<tr><td><font size="4"><b>Select Date of Birth</b></font></td><td><input type="date"name="dob"></td></tr>
<tr><td><font size="4"><b>Contact Number</b></font></td><td><input type="number"name="mobno"></td></tr>
<tr><td><font size="4"><b>Email Address</b></font></td><td><input type="email"name="mail"placeholder="(e.g. abc@xyz.com)"></td></tr>

<tr><td><font size="4"><b>Select Gender</b></font></td><td><input type="radio"name="gender"value="male"Checked>Male<input type="radio"name="gender"value="female">Female</td></tr>
<tr><td><font size="4"><b>Student Degree</b></font></td><td><input type="text"name="deg"></td></tr>
<tr><td><font size="4"><b>Student Year</b></font></td><td><input type="text"name="year"></td></tr>
<tr><td><font size="4"><b>Personal Address</b></font></td><td><textarea name="add" rows="5"cols="40"></textarea></td></tr>
<tr><td><font size="4"><b>Select City</b></font></td><td><select name="city"><option value="select">(Please select city from here)</option>
<option value="gwl">Gwalior</option><option value="bpl">Bhopal</option><option value="ind">Indore</option><option value="ujn">Ujjain</option></select></td></tr>
<tr><td><font size="4"><b>Enter PinCode</b></font></td><td><input type="number"name="pin"placeholder="e.g. 123456"></td></tr>
<tr><td><input type="submit"value="Submit"></td><td><input type="reset"value="Reset"></td></tr>
<tr><td><a href = "StudentLogin.jsp">Already have an account</a></td></tr>
</table>
</center>
</form>
</body>
</html>