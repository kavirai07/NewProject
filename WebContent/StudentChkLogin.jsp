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
	String slid = request.getParameter("slid");
    String pwd = request.getParameter("pwd");
    String q="select * from studentreg where stulogin='"+slid+"' and stupwd='"+pwd+"'";
    ResultSet rs = DAO.displayRecord(q);
    if(rs.next())
    {
    	HttpSession ses=request.getSession();
	    ses.putValue("sid",slid);
	    ses.putValue("stime",new java.util.Date().toString());
        response.sendRedirect("StudentHome.jsp");
    }
    else
    {
    	out.println("ID/Password Not Matched..");
    }
}
catch(Exception ex)
{
	out.println("Error: "+ex);	
}
%>
</body>
</html>