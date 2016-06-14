<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList"%>
<body>

</body>
</html>
<%@include file="databasecon.jsp" %>
<%
String query=null;
String graph=request.getParameter("graph");
PreparedStatement stmt1=null;
PreparedStatement stmt2=null;
ResultSet rs=null;
ArrayList<String> column=new ArrayList<String>(); 
ArrayList<String> colvalues=new ArrayList<String>();
if(request.getParameter("college").equals("all")&&!request.getParameter("branch").equals("all"))
{out.println("hello");
	String branchname=null;
	stmt1=con.prepareStatement("SELECT columnname from branch where branchname=?");
	stmt1.setString(1, request.getParameter("branch"));
	rs=stmt1.executeQuery();
	while(rs.next()){  branchname=rs.getString(1);
	out.println(branchname);}
	String branchquery="Select collegename, "+branchname+" From collegedata";
	stmt2=con.prepareStatement(branchquery);
	int j=1;
	rs=stmt2.executeQuery();
	while(rs.next())
	{
		column.add(rs.getString("collegename"));
		colvalues.add(rs.getString(2));
		j++;
		
	}
	out.println(column+""+colvalues);
	

}
 %>
</body>
</html>