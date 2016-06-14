<%@page import="java.util.ArrayList"%>
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
<form method="get" action="practice.jsp">
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
			<option value="all">All</option>
  			<option value="delhi">Delhi</option>
  			<option value="noida">Noida</option>
  			<option value="faridabad">Faridabad</option>
  			<option value="gurgaon">Gurgaon</option>
  			<option value="Ghaziabad">Ghaziabad</option>
</select>
</div>

<div class="col-md-3 "> 
Graph Type
<select class="form-control" name="graph">
<option value="bar">Bar</option>
<option value="pie">pie</option>
<option value="spline">Spline</option>
</select>
</div>
<br><br>
<br>
<div class="row"><input type="submit" class="btn btn-block btn-success" style="margin-top:100px;" name="submit"></div>
</form>
</div>
<%
if(request.getParameter("submit")!=null)
{
	String query=null;
	String graph=request.getParameter("graph");
	PreparedStatement stmt1=null;
	PreparedStatement stmt2=null;
	ResultSet rs2=null;
	graph="\""+graph+"\"";
	ArrayList<String> column=new ArrayList<String>(); 
	ArrayList<String> colvalues=new ArrayList<String>(); 
	// select branches for a college
	if(request.getParameter("college").equals("all")&&request.getParameter("location").equals("all")&&request.getParameter("branch").equals("all"))
	{
	//out.println("hello");
	stmt1=con.prepareStatement("SELECT collegename from collegedata");
	//stmt1.setString(1, request.getParameter("location"));
	rs=stmt1.executeQuery();
	while(rs.next())
	{
		stmt1=con.prepareStatement("SELECT *from collegedata where collegename=?");
		stmt1.setString(1, rs.getString(1));
		rs2=stmt1.executeQuery();
		ResultSetMetaData rsMetaData = rs2.getMetaData();
	    int numberOfColumns = rsMetaData.getColumnCount();
	    Integer value=0;
	    while(rs2.next())
	    {
	    	for(int i=5;i<=numberOfColumns-2;i+=2)
			{
	    	value=value+Integer.valueOf(rs2.getString(i));
			}
	    	colvalues.add(value.toString());
	    }
	    column.add(rs.getString(1));
	}		
	}
	if(request.getParameter("college")!="all")
	{
		
		stmt1=con.prepareStatement("SELECT  *FROM collegedata where collegename=?");
		stmt1.setString(1, request.getParameter("college"));
		rs=stmt1.executeQuery();
		ResultSetMetaData rsMetaData = rs.getMetaData();
	    int numberOfColumns = rsMetaData.getColumnCount();
	    //out.println(numberOfColumns);
	    //rsMetaData.getColumnName(column);
		while(rs.next())
		{
			for(int i=5;i<=numberOfColumns-2;i+=2)
			{
				if(Integer.valueOf(rs.getString(i))!=0)
				{
					colvalues.add(rs.getString(i));
					stmt2=con.prepareStatement("Select branchname from branch where columnname= ?");
					stmt2.setString(1, rsMetaData.getColumnName(i));
					rs2=stmt2.executeQuery();
					//rs2.first();
					while(rs2.next())
					column.add(rs2.getString(1));
				}
				
			}
		}
		//out.println(column.size());
	}
	if(request.getParameter("college").equals("all")&&!request.getParameter("branch").equals("all"))
	{
		String branchname=null;
		stmt1=con.prepareStatement("SELECT columnname from branch where branchname=?");
		stmt1.setString(1, request.getParameter("branch"));
		rs=stmt1.executeQuery();
		while(rs.next()){  branchname=rs.getString(1);}
		String branchquery="Select collegename, "+branchname+" From collegedata";
		stmt2=con.prepareStatement(branchquery);
		rs=stmt2.executeQuery();
		
		while(rs.next())
		{
			column.add(rs.getString("collegename"));
			colvalues.add(rs.getString(2));
		}
		
		
	
	}
	if(!request.getParameter("location").equals("all"))
	{
		//String branchname=null;
		stmt1=con.prepareStatement("SELECT collegename from collegedata where location=?");
		stmt1.setString(1, request.getParameter("location"));
		rs=stmt1.executeQuery();
		while(rs.next())
		{
			stmt1=con.prepareStatement("SELECT *from collegedata where collegename=?");
			stmt1.setString(1, rs.getString(1));
			rs2=stmt1.executeQuery();
			ResultSetMetaData rsMetaData = rs2.getMetaData();
		    int numberOfColumns = rsMetaData.getColumnCount();
		    Integer value=0;
		    while(rs2.next())
		    {
		    	for(int i=5;i<=numberOfColumns-2;i+=2)
				{
		    	value=value+Integer.valueOf(rs2.getString(i));
				}
		    	colvalues.add(value.toString());
		    }
		    column.add(rs.getString(1));
		}		
	
	}

	
	
	//
	%>
		<div class="col-md-offset-2 col-lg-7">
		<div id="chartContainer" style="height: 500px;width:700px; ">
		<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
		<script type="text/javascript">

window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "COLLEGE WISE SEATS FILLED"              
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: <%=graph%>,
			axisY: {
				labelFontSize: 10,
				labelFontColor: "dimGrey"},
				axisX: {
					labelFontSize: 10,
					labelFontColor: "dimGrey"},
			dataPoints: [
				<% 
			
				int i=0;
				String label="{ label:";
				while(i!=column.size())
				{
					if(i<=column.size()-2)
					{
							out.println(label+"\""+ column.get(i)+"\"," +"y:"+ colvalues.get(i)+"},");
							i++;
						
					}
				   else
					{
							out.println(label+"\""+ column.get(i)+"\"," +"y:"+ colvalues.get(i)+"}");
							i++;
					}
				
				} 
				%>
				
			]
		}
		]
	});
	chart.render();
}

</script>
</div>
</div>
<% }%> 
	

