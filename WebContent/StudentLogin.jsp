<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="StudentChkLogin.jsp">
<center>
<h1><font color="blue"face="arial black"><b><u>LOGIN FORM</b></u></font></h1>
<table border="1">
<tr><td><font size="4"><b>Enter Student Login ID</b></font></td><td><input type="text"name="slid"placeholder="Login Id"></td></tr>
<tr><td><font size="4"><b>Enter Password</b></font></td><td><input type="password"name="pwd"placeholder="Password"></td></tr>
<tr><td><input type="submit"value="Login"></td><td><input type="reset"value="Clear"></td></tr>
<tr><td><a href = "StudentRegistration.jsp">New User Login</a></td><td><a href="ForgetPassword.jsp">Forgotten Password?</a></td></tr>
</table>
</center>
</form>
</body>
</html>