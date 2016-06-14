<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!Doctype html>
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
        <a class="navbar-brand" href="index.jsp">CollegeDataAnalytics</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="practice.jsp?college=all&branch=all&location=all&graph=bar&submit=Submit">Bar Analytics</a></li>
         <li><a href="practice.jsp?college=all&branch=all&location=all&graph=pie&submit=Submit">Pie Analytics</a></li>
         <li><a href="practice.jsp?college=all&branch=all&location=all&graph=spline&submit=Submit">Spline Analytics</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <% %>
        <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>