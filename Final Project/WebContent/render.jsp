<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="navigation.jsp"></jsp:include>

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
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
</body>
</html>