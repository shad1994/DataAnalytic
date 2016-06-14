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
<body>

<div class="row">
<div class="col-md-3 col-lg-3" >
	<div class="row1"><a href="addcollegenew.jsp">Add College</a></div>
	<hr>
	<div class="row1"><a href="rating.jsp">Rating</a></div>
	<hr>
	
</div>
</div>
<% 
if(request.getParameter("success")!=null)
	{
	
	out.println("<div class=\"col-md-4 col-md-offset-5\" style=\"margin-top:-200px; font-size:30px;\">" );
	out.println("College details added successfully for college "+request.getParameter("success").toUpperCase()); 
			out.println("</div></div>");
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
