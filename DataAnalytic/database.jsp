<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<%@page import= "java.util.*"%>
<%@page import= "java.lang.*"%>
<%
try{
Class.forName("com.mysql.jdbc.driver");
Connection con=DriverManager.getConnection("jdbc:mysql://192.100.0.000:3306/dataanalytic","root","");
Statement state =con.createStatement();
//out.println("hello");
state.executeUpdate("INSERT INTO datanalytic.admin(email_id,name,password) VALUES('hjhj','jhj','jhjhj')");
}
catch(Exception e)
{
out.println("hello "+e);
}



%>