<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="databasecon.jsp" %> 
<%@include file="adminInterface.jsp"%>
<% if(session.getAttribute("admin")!=null)
{ 
if(request.getParameter("successful")==null)
{ 
%>
 <form class="form-horizontal col-md-5 col-md-offset-3" style="margin-top:-200px;" action="addcollegesql.jsp">
  <div class="form-group" >
    <label class="control-label col-sm-2" for="university">College Name</label>
    <input list="colleges"  name="colleges" class="form-control"style="width:400px; margin-left:-290px; style="margin-top:-200px">
    <span><%if(request.getParameter("error")!=null)out.println("<h5 style=\"color:red\"> College Name "+request.getParameter("college").toUpperCase()+" already exists "); %></span>
    <datalist id="colleges">
    <% 
    PreparedStatement stmt=con.prepareStatement("SELECT collegename FROM collegename");
	ResultSet rs=stmt.executeQuery();
    		while(rs.next())
    		{
    			out.println("<option value=\""+rs.getString("collegename")+"\">");
    		}
    %>
	</datalist>    
   
    
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="location">Location</label>
    <div class="col-sm-10">
     	<select class="form-control" name="location">
  			<option value="delhi">Delhi</option>
  			<option value="noida">Noida</option>
  			<option value="faridabad">Faridabad</option>
  			<option value="gurgaon">Gurgaon</option>
  			<option value="Ghaziabad">Ghaziabad</option>
		</select>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="institutetype">Institute Type</label>
    <div class="col-sm-10">
     	<select class="form-control" name="institutetype">
  			<option value="Government">Government</option>
  			<option value="Private">Private</option>
  		</select>
    </div>
  </div>
  <div class="form-group" >
    <label class="control-label col-sm-2" for="university">University</label>
    <input list="Universities"  name="universities" class="form-control"style="width:400px; margin-left:-290px;">
    <datalist id="Universities">
    <% 
    stmt=con.prepareStatement("SELECT university FROM universitylist");
	rs=stmt.executeQuery();
    		while(rs.next())
    		{
    			out.println("<option value=\""+rs.getString("university")+"\">");
    		}
    %>
	</datalist>    
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn-block btn-primary btn-lg" name="submit">
    </div>
  </div>
</form>

<% 
 }
else 
{
%>
	<form class="form-horizontal col-md-5 col-md-offset-3" style="margin-top:-200px;"  method="post" action="updatecollegesql.jsp">
 <h4>Please enter college information <% %></h4>
<div class="form-horizontal">
   <div class="control-group">
  IT branch:<input type="number" class="form-control" name="it" value="0"  ><br>
  IT Filled seats:<input type="number" class="form-control" name="itfill" value="0"><br>
  CS branch:<input type="number"  class="form-control" name="cs" value="0"><br>
  CS filled seats:<input type="number"  class="form-control" name="csfill"value="0"><br>
  Biotech branch:<input type="number"  class="form-control" name="bio" value="0"><br>
  Biotech filled seats:<input type="number"  class="form-control" name="biofill"value="0"><br>
  Production and industrial eng:<input type="number"  class="form-control" name="PIE" value="0"><br>
  Production and industrial eng filled seats:<input type="number"  class="form-control" name="PIEfill" value="0"><br>
  Environmental eng:<input type="number"  class="form-control" name="environmentaleng" value="0"><br>
  Environmet eng filled seats:<input type="number"  class="form-control" name="environmentalengfill" value="0"><br>
  Polymer science and chemical technology:<input type="number"  class="form-control" name="PSCT" value="0"><br>
  Polymer science and chemical technology filled seats:<input type="number" class="form-control" name="PSCTfill" value="0"><br>
  Software eng:<input type="number"  class="form-control" name="softwareeng" value="0"><br>
  Software eng filled seats:<input type="number"  class="form-control"name="softwareengfill" value="0"><br>
  Automobile eng:<input type="number"  class="form-control"name="automobileeng" value="0"><br>
  Automobile eng filled seats:<input type="number"  class="form-control"name="automobileengfill" value="0"><br>
  Electrical and electronics eng:<input type="number" class="form-control" name="EEE" value="0"><br>
  Electrical and electronics eng filled seats:<input type="number"  class="form-control"  name="EEEfill" value="0"><br>
  Civil eng:<input type="number"  class="form-control" name="civileng" value="0"><br>
  Civil eng filled seats:<input type="number"  class="form-control"name="civilengfill"value="0"><br>
  Electrical eng:<input type="number"  class="form-control" name="electricaleng" value="0"><br>
  Electrical eng filled seats:<input type="number"  class="form-control" name="electricalengfill" value="0"><br>
  Electronics and communication eng:<input type="number"  class="form-control" name="ECE" value="0"><br>
  Electronics and communication eng filled seats:<input type="number"  class="form-control" name="ECEfill" value="0"><br>
  Mechanical eng :<input type="number"  class="form-control" name="mechanicaleng" value="0"><br>
  Mechanical eng filled seats:<input type="number"  class="form-control" name="mechanicalengfill" value="0"><br>
  Manufacturing process and automation:<input type="number"  class="form-control" name="MPA" value="0"><br>
  Manufacturing process and automation filled seats:<input type="number"  class="form-control" name="MPAfill" value="0"><br>
  Instrumentation and control eng:<input type="number"  class="form-control" name="ICE" value="0"><br>
  Instrumentation and control eng filled seats:<input type="number"  class="form-control" name="ICEfill" value="0"><br>
  Rating<input type="number"  class="form-control" name="rating" value="0"><br>
  <input type="submit" class="btn btn-primary" name="add">
  </div>
  </div>
</form>

<%}
}
    else
    {
    	response.sendRedirect("index.jsp");
    }
%>
</body>
</html>