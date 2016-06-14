
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="databasecon.jsp" %> 
<%@include file="adminInterface.jsp"%>
<%
if(session.getAttribute("admin")!=null)
{
if(request.getParameter("complete").equals("1")&&session.getAttribute("admin")!=null)
{
	String str=(String)session.getAttribute("col");
	out.println(request.getParameter("rating"));
	
PreparedStatement stmt=con.prepareStatement("UPDATE collegedata SET rating=? where collegename=?");

stmt.setString(1, request.getParameter("rating"));
stmt.setString(2, str);
stmt.executeUpdate();
session.removeAttribute("col");
response.sendRedirect("http://localhost:8080/shadproj/rating.jsp?suc=1");
}
}
else
{
	response.sendRedirect("index.jsp");
	}
	
%>