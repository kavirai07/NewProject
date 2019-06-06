<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="bs.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String slid=request.getParameter("slid");
	String pwd=request.getParameter("pwd");
	String rpwd=request.getParameter("rpwd");
	String sname=request.getParameter("sname");
	String dob=request.getParameter("dob");
	String mobno=request.getParameter("mobno");
	String mail=request.getParameter("mail");
	String gender=request.getParameter("gender");
	String deg=request.getParameter("deg");
	String year=request.getParameter("year");
	String add=request.getParameter("add");
	String city=request.getParameter("city");
	String pin=request.getParameter("pin");
	Class.forName("com.mysql.jdbc.Driver").newInstance();

	
	if(pwd.equals(rpwd))
	{
		String q="insert into studentreg(stulogin,stupwd,stuname,studob,stumobno,stumail,stugender,studegree,stuyear,stuadd,stucity,stupin)values('"+slid+"','"+pwd+"','"+sname+"','"+dob+"',"+mobno+",'"+mail+"','"+gender+"','"+deg+"','"+year+"','"+add+"','"+city+"',"+pin+")";
	    String res = DAO.updateRecord(q);
        if(res.equals("yes"))
	    {
        	out.println("Record Inserted");
	    }
	    else
	    {
	    	out.println("Record Not Inserted");
	    }
	}
	else
	{
		out.println("Password not matched");
	}	
}
catch(Exception ex)
{
	out.println("Error:"+ex);
}
%>

</body>
</html>