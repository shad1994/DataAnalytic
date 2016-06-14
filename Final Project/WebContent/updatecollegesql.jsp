<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("admin")!=null)
{%>
<%@include file="databasecon.jsp" %>
<%
try{
	if((request.getParameter("add")!=null)&&session.getAttribute("college")!=null)
		{
		PreparedStatement stmt=null;
		//out.println(session.getAttribute("college"));
		String sql="UPDATE collegedata SET IT=?, IT_fill=?, CS=?, CS_fill=?, biotechnology=?, biotechnology_fill=?, production_and_industrial_eng=?, production_and_industrial_eng_fill=?, environmental_eng=?, environmental_eng_fill=?, polymer_science_and_chemical_eng=?, polymer_science_and_chemical_eng_fill=?, software_eng=?, software_eng_fill=?, automobile_eng=?, automobile_eng_fill=?, electrical_and_electronics_eng=?, electrical_and_electronics_eng_fill=?, civil_eng=?, civil_eng_fill=?, electrical_eng=?, electrical_eng_fill=?, electronics_and_communicational_eng=?, electronics_and_communicational_eng_fill=?, mechanical_eng=?, mechanical_eng_fill=?, manufacturing_process_and_automation_eng=?,manufacturing_process_and_automation_eng_fill=?, instrumentation_and_control_eng=?, instrumentation_and_control_eng_fill=?, rating=? where collegename= \'"+session.getAttribute("college")+"\'";
		int i=1;
		//out.println(sql+"<br>"); 
		stmt=con.prepareStatement(sql);
		String ParameterNames = "";
			for(Enumeration<String> e = request.getParameterNames(); e.hasMoreElements(); )
				{
				ParameterNames = (String)e.nextElement();
					if(i<=31){
					
					stmt.setString(i, request.getParameter(ParameterNames));
					//out.println(i+""+request.getParameter(ParameterNames)+"<br>");
					i++;
					}
				}
			stmt.executeUpdate();
			response.sendRedirect("adminInterface.jsp?success="+session.getAttribute("college"));	
			session.removeAttribute("college");
		  }
	else
		{
		response.sendRedirect("addcollegenew.jsp");	
		}
	}
catch(Exception e)
{
response.sendRedirect("addcollegenew.jsp?error=sql");	
}
}
else
{
	//response.sendRedirect("index.jsp");
	out.println("hello");
}%>
</body>
</html>