<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>College Data Analytics</title>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="index.html">CollegeDataAnalytics</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li><a href="baranalytics.html">Bar Analytics</a></li>
         <li><a href="pieanalytics.html">Pie Analytics</a></li>
         <li><a href="splineanalytics.html">Spline Analytics</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<form class="form-inline" action="collegeDetails.jsp" method="post">
 <h4>Please enter college information</h4>
<div class="form-horizontal">
   <div class="control-group">
  College name											:<input type="text" name="collegename"><br>
  Location 												:<input type="text" name="location"><br>
  Institute Type										:<input type="text" name="institutetype"><br>
  University											:<input type="text" name="university"><br>
  IT branch 											:<input type="text" name="it"><br>
  IT Filled seats										:<input type="text" name="itfill"><br>
  CS branch 											:<input type="text" name="cs"><br>
  CS filled seats										:<input type="text" name="csfill"><br>
  Production and industrial eng							:<input type="text" name="PIE"><br>
  Production and industrial eng filled seats			:<input type="text" name="PIEfill"><br>
  Environmental eng										:<input type="text" name="environmentaleng"><br>
  Environmet eng filled seats							:<input type="text" name="environmentalengfill"><br>
  Polymer science and chemical technology				:<input type="text" name="PSCT"><br>
  Polymer science and chemical technology filled seats	:<input type="text" name="PSCTfill"><br>
  Software eng											:<input type="text" name="softwareeng"><br>
  Software eng filled seats								:<input type="text" name="softwareengfill"><br>
  Automobile eng										:<input type="text" name="automobileeng"><br>
  Automobile eng filled seats							:<input type="text" name="automobileengfill"><br>
  Electrical and electronics eng						:<input type="text" name="EEE"><br>
  Electrical and electronics eng filled seats:<input type="text" name="EEEfill"><br>
  Civil eng:<input type="text" name="civileng"><br>
  Civil eng filled seats:<input type="text" name="civilengfill"><br>
  Electrical eng:<input type="text" name="electricaleng"><br>
  Electrical eng filled seats:<input type="text" name="electricalengfill"><br>
  Electronics and communication eng:<input type="text" name="ECE"><br>
  Electronics and communication eng filled seats:<input type="text" name="ECEfill"><br>
  Mechanical eng :<input type="text" name="mechanicaleng"><br>
  Mechanical eng filled seats:<input type="text" name="mechanicalengfill"><br>
  Manufacturing process and automation:<input type="text" name="MPA"><br>
  Manufacturing process and automation filled seats:<input type="text" name="MPAfill"><br>
  Instrumentation and control eng:<input type="text" name="ICE"><br>
  Instrumentation and control eng filled seats:<input type="text" name="ICEfill"><br>
  </div>
  </div>
  
 
</form>

</body>
</html>