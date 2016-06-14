<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="databasecon.jsp" %> 
<%@include file="adminInterface.jsp"%>
<% if(session.getAttribute("admin")!=null)
{ 
if(request.getParameter("submit")==null) {
	//if(request.getParameter("suc").equals("1")) out.println("<h4 style=\"margin-top:-250px;\" class=\"col-md-5 col-md-offset-3\">successfully updated rating of the college</h4>");
%>
 <form class="form-horizontal col-md-5 col-md-offset-3" style="margin-top:-200px;" action="rating.jsp" method="get">
  <div class="form-group" >
    <label class="control-label col-sm-2" for="university">College Name</label>
    <select id="colleges" name="colleges" class="form-control"style="width:400px; margin-left:-290px;">
    <% 
    PreparedStatement stmt=con.prepareStatement("SELECT collegename FROM collegename");
	ResultSet rs=stmt.executeQuery();
    		while(rs.next())
    		{
    			out.println("<option value=\""+rs.getString("collegename")+"\">"+rs.getString("collegename")+"</option>");
    		}
    %>
	</select>    
	<input type="submit" name="submit">
   </form>
   
<%
}
if(request.getParameter("colleges")!=null)
{ 
	session.setAttribute("col", request.getParameter("colleges"));


%>
<form method="post" action="ratingsql.jsp?complete=1" class="form-horizontal col-md-5 col-md-offset-3" style="margin-top:-200px;" >
<input type="number" name="rating" placeholder="rating" class="form-control">
<input type="submit" class="btn btn-primary">
</form>

<%}
}

%>  
  </div>