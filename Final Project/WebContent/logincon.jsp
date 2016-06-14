<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Data Analytic</title>
</head>
<body>
<%
if(request.getParameter("submit")!=null)
{%>
<%@include file="databasecon.jsp" %>

<%
	if(request.getParameter("privilige").equals("Admin"))
	{try
	{
	PreparedStatement stmt=con.prepareStatement("SELECT email, password FROM admindata WHERE email=? AND password=?");
	stmt.setString(1, request.getParameter("email"));
	stmt.setString(2, request.getParameter("password"));
	ResultSet rs=stmt.executeQuery();
	rs.next();
	int count=rs.getRow();
		if(count==1)
		{
			session.setAttribute("admin",request.getParameter("email"));
			//redirect to admin dashboard
			String redirectURL = "http://localhost:8080/shadproj/adminInterface.jsp";
	         response.sendRedirect(redirectURL);
		}
		else
		{
			
			String redirectURL = "http://localhost:8080/shadproj/login.jsp?error=1&email="+request.getParameter("email");
	         response.sendRedirect(redirectURL);
		}
	}
	catch(Exception e) 
	{
	out.println(e);}
	}
	else
	{
		//college set karo
		PreparedStatement stmt=con.prepareStatement("SELECT email, password FROM collegelogin WHERE email=? AND password=?");
		stmt.setString(1, request.getParameter("email"));
		stmt.setString(2, request.getParameter("password"));
		ResultSet rs=stmt.executeQuery();
		rs.next();
		int count=rs.getRow();
			if(count==1)
			{
				session.setAttribute("college",request.getParameter("email"));
				String redirectURL = "http://localhost:8080/shadproj/collegeInterface.jsp";
		         response.sendRedirect(redirectURL);
				//redirect to college dashboard
			} 
			else
			{
				String redirectURL = "http://localhost:8080/shadproj/login.jsp?error=1";
		         response.sendRedirect(redirectURL);
			}
	}
}
else
{
	         String redirectURL = "http://localhost:8080/shadproj/login.jsp";
	         response.sendRedirect(redirectURL);
}
%>
</body>
</html>