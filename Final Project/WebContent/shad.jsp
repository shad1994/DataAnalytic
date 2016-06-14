<body>

</body>
</html>
<%@include file="databasecon.jsp" %>
<style>
.row1
{
margin:30px;
}
.col-md-3
{
margin-top:20px;
}
.a
{
text-decoration:none;
}
</style>
<jsp:include page="navigation.jsp"></jsp:include>


</head>
<div class="container">
<form method="post" action="shad.jsp">
<div class="col-md-3"> 
College Name:
<select class="form-control" name="college">
<option value="all">All</option>
<% 
Statement stmt = con.createStatement();
ResultSet rs= stmt.executeQuery("select * from collegename");
while(rs.next())
{
	out.println("<option value=\""+rs.getString("collegename")+"\">"+rs.getString("collegename")+"</option>");	
}

 %>
</select>
</div>
<div class="col-md-3">
Branches
<select class="form-control" name="branch">
<option value="all">All</option>
<% 
stmt = con.createStatement();
 rs= stmt.executeQuery("select * from branch");
while(rs.next())
{
	out.println("<option value=\""+rs.getString("branchname")+"\">"+rs.getString("branchname")+"</option>");	
}

 %>
</select>
</div>
<div class="col-md-3">
Location
<select class="form-control" name="location">
			<option value="" disabled selected>Select your location</option>
			<option value="all">All</option>
  			<option value="delhi">Delhi</option>
  			<option value="noida">Noida</option>
  			<option value="faridabad">Faridabad</option>
  			<option value="gurgaon">Gurgaon</option>
  			<option value="Ghaziabad">Ghaziabad</option>
</select>
</div>
<div class="col-md-3"> 
University:
<select class="form-control" name="university">
<option value="" disabled selected>Select your university</option>
<option value="all">All</option>
<% 
stmt = con.createStatement();
rs= stmt.executeQuery("select * from universitylist");
while(rs.next())
{
	out.println("<option value=\""+rs.getString("university")+"\">"+rs.getString("university")+"</option>");	
}

 %>
</select>
</div>

<div class="col-md-3 col-md-offset-5"> 
Graph Type
<select class="form-control" name="graph">
<option value="bar">Bar</option>
<option value="pie">pie</option>
<option value="heat">Heat</option>
</select>
</div>
<br><br>
<br>
<div class="row"><input type="submit" class="btn btn-block btn-success" style="width:400px; margin-left:430px; margin-top:100px;" name="submit"></div>
</form>
</div>
<% 
if(request.getParameter("submit")!=null)
{
if((request.getParameter("graph").equals("pie")) && (!request.getParameter("collegename").equals("All")) && (request.getParameter("branch").equals("All")))
{ 
out.println("hello");
}
}
%>
