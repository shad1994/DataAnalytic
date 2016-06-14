<%
if(request.getParameter("graph").equals("pie"))
{ %>
<div class="col-md-offset-4 col-lg-5">
<div id="chartContainer" style="height: 300px;">
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {<% String str="2";%>
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "COLLEGE WISE SEATS FILLED"              
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "doughnut",
			dataPoints: [
				<% int i=0;
				String label="{ label:";
				String arr[]={"akg","ims","hrit","abes","abesit","sunderdeep","chomucolege"};
				String arr1[]={"20","30","40","50","0","17","0"};
				while(i!=7)
				{
					if(i<=5)
					{
						if(arr1[i]!="0")
						{
							out.println(label+"\""+ arr[i]+"\"," +"y:"+ arr1[i]+"},");
							i++;
						}
						else
						{
						i++;
						}
					}
				else
				{
					if(arr1[i]!="0")
					{
						out.println(label+"\""+ arr[i]+"\"," +"y:"+ arr1[i]+"}");
						i++;
					}
					else
					{
					i++;
					}
		}
				
				}%>
				
			]
		}
		]
	});
	chart.render();
}

</script>
</div>
</div>
<% } 
if(request.getParameter("graph").equals("bar"))
{ %>
<div class="col-md-offset-4 col-lg-5">
<div id="chartContainer" style="height: 300px;">
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {<% String str="2";%>
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "COLLEGE WISE SEATS FILLED"              
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "line",
			dataPoints: [
				<% int i=0;
				String label="{ label:";
				String arr[]={"akg","ims","hrit","abes","abesit","sunderdeep","chomucolege"};
				String arr1[]={"20","30","40","50","0","17","0"};
				while(i!=7)
				{
					if(i<=5)
					{
						if(arr1[i]!="0")
						{
							out.println(label+"\""+ arr[i]+"\"," +"y:"+ arr1[i]+"},");
							i++;
						}
						else
						{
						i++;
						}
					}
				else
				{
					if(arr1[i]!="0")
					{
						out.println(label+"\""+ arr[i]+"\"," +"y:"+ arr1[i]+"}");
						i++;
					}
					else
					{
					i++;
					}
		}
				
				}%>
				
			]
		}
		]
	});
	chart.render();
}

</script>
</div>
</div>
<% } 
if(request.getParameter("graph").equals("heat"))
{ %>
<div class="col-md-offset-4 col-lg-5">
<div id="chartContainer" style="height: 300px;">
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {<% String str="2";%>
	var chart = new CanvasJS.Chart("chartContainer", {
		title:{
			text: "COLLEGE WISE SEATS FILLED"              
		},
		data: [              
		{
			// Change type to "doughnut", "line", "splineArea", etc.
			type: "splineArea",
			dataPoints: [
				<% int i=0;
				String label="{ label:";
				String arr[]={"akg","ims","hrit","abes","abesit","sunderdeep","chomucolege"};
				String arr1[]={"20","30","40","50","0","17","0"};
				while(i!=7)
				{
					if(i<=5)
					{
						if(arr1[i]!="0")
						{
							out.println(label+"\""+ arr[i]+"\"," +"y:"+ arr1[i]+"},");
							i++;
						}
						else
						{
						i++;
						}
					}
				else
				{
					if(arr1[i]!="0")
					{
						out.println(label+"\""+ arr[i]+"\"," +"y:"+ arr1[i]+"}");
						i++;
					}
					else
					{
					i++;
					}
		}
				
				}%>
				
			]
		}
		]
	});
	chart.render();
}

</script>
</div>
</div>
<% } %>	

