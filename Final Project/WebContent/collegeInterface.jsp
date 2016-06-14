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

<body>
<%@include file="databasecon.jsp" %> 
<jsp:include page="navigation.jsp"></jsp:include>
<% if(session.getAttribute("college")!=null)
{ 
if(request.getParameter("successful")==null)
{ 
%>
 <form class="form-horizontal col-md-5 col-md-offset-3" style="margin-top:10px;" action="addcollegesql.jsp">
  <div class="form-group" >
    <label class="control-label col-sm-2" for="university">College Name</label>
    <input list="colleges"  name="colleges" class="form-control"style="width:400px; margin-left:-290px;">
    <span><%if(request.getParameter("error")!=null)out.println("<h5 style=\"color:red\"> College Name"+request.getParameter("college")+" already exists "); %></span>
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
	<form class="form-horizontal col-md-5 col-md-offset-3" style="margin-top:-340px;"  method="post" action="updatecollegesql.jsp">
 <h4>Please enter college information <% %></h4>
<div class="form-horizontal">
   <div class="control-group">
  IT branch:<input type="number" class="form-control" name="it" value="0"><br>
  IT Filled seats:<input type="number" class="form-control" name="it" value="0"><br>
  CS branch:<input type="number"  class="form-control" name="cs" value="0"><br>
  CS filled seats:<input type="number"  class="form-control" name="csfill"value="0"><br>
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
  </div>
  </div>
</form>

<%}
}
    else
    {
    	out.println("College is registerd successfully");
    	//response.sendRedirect("index.jsp");
    }
%>
<!--  <form method="post" action="query.jsp" class="form-inline">
<div class="col-md-3"> 
<select class="form-control">
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
</select>
</div>
<div class="col-md-3">
<select class="form-control">
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
</select>
</div>
<div class="col-md-3">
<select class="form-control">
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
	<option>hello</option>
</select>
</div>
<div class="row"><input type="submit" class="btn btn-block btn-success" style="width:400px; margin-left:550px; margin-top:100px;"></div>
</form>

<div class="col-md-offset-4 col-lg-5">
jjcjhcjnczx nzm kzbcjknbcjkjcb znxmn bcbkjABKJBA c  MNC KjbcckjABC xm AJHCBakjj aXNa haBKJabjk
</div> -->

</body>
</html>
