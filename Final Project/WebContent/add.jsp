<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%

if (request.getParameter("submit") != null) 
{
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://localhost:3306/dataanalytics","root","root");
String name=request.getParameter("name");
String pass=request.getParameter("paas");
Statement statement = con.createStatement();
ResultSet resultset = 
//out.println("select * from login where name = '" + name + "' AND pass = '" + pass + "' ");
statement.executeQuery("select * from login where name = '" + name + "' AND pass = '" + pass + "' ");
if(!resultset.next()) {
	String redirectURL = "http://localhost:8080/shadproj/index.jsp";
    response.sendRedirect(redirectURL);
} 
else {
	 
	
	
}
}
%>

