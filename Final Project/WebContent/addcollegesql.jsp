<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	if(session.getAttribute("admin")!=null)
	{
	PreparedStatement stmt;
	PreparedStatement stmt1;
	ResultSet rs;
	%> 
		<%@include file="databasecon.jsp" %>
	<% 
	if(request.getParameter("submit")!=null)
	{
		 stmt=con.prepareStatement("SELECT collegename FROM collegename where collegename=?");
		 stmt.setString(1, request.getParameter("colleges"));
		 rs=stmt.executeQuery();
		 
		 rs.next();
		 
		 if(rs.getRow()!=0)
		 {
			//already colege name exissts
			//redirect with proper error message
			String redirectURL = "http://localhost:8080/shadproj/addcollegenew.jsp?error=1&college="+request.getParameter("colleges");
			response.sendRedirect(redirectURL);
		 }
		 else
		 {
			 stmt1=con.prepareStatement("SELECT university FROM universitylist where university=?");
			 stmt1.setString(1, request.getParameter("universities"));
			 rs=stmt1.executeQuery();
			 rs.next();
			 if(rs.getRow()==0)
			 {
				 stmt=con.prepareStatement("INSERT INTO universitylist(university) values(?)");
				 stmt.setString(1, request.getParameter("universities"));
				 stmt.executeUpdate();
			 }

			 stmt1=con.prepareStatement("INSERT INTO collegename(collegename) values(?)");
			 stmt1.setString(1, request.getParameter("colleges"));
			 stmt1.executeUpdate();
			 stmt1=con.prepareStatement("insert INTO collegedata(location,institute_type,university,collegename) values(?,?,?,?)");
			 stmt1.setString(1, request.getParameter("location"));
			 stmt1.setString(2, request.getParameter("institutetype"));
			 stmt1.setString(3, request.getParameter("universities"));
			 stmt1.setString(4, request.getParameter("colleges"));
			 stmt1.executeUpdate();
			 session.setAttribute("college",request.getParameter("colleges"));
			 String redirectURL = "http://localhost:8080/shadproj/addcollegenew.jsp?successful=1";
			 response.sendRedirect(redirectURL);
		 }
	}
	else
	{
		//direct page opened
		String redirectURL = "http://localhost:8080/shadproj/addcollegenew.jsp";
	    response.sendRedirect(redirectURL);
	}
		/* if(request.getParameter("add")!=null&&request.getParameter("successful")!=null)
		{
			String ParameterNames = "";
			for(Enumeration<String> e = request.getParameterNames(); e.hasMoreElements(); )
			{
				ParameterNames = (String)e.nextElement();
				if(request.getParameter(ParameterNames)!="0")
				{
					out.println(ParameterNames);
				}
			}
		}
		else
		{
			
		}*/
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
	
	%>
</body>
</html>