<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <li><a href="practice.jsp">Bar Analytics</a></li>
         <li><a href="practice.jsp">Pie Analytics</a></li>
         <li><a href="practice.jsp">Heat Analytics</a></li> 
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container" >
  <h2 class="col-lg-offset-5">Login form</h2>
  <form class="form-horizontal col-lg-offset-5" role="form" style="width:300px;" action="logincon.jsp">
    <div class="form-group">
      <label class="control-label col-sm-3" for="email">Privilige:</label>
      <div class="col-sm-9">
       <select class="form-control" name="privilige" autofocus>
        <option name="admin">Admin</option>
        <option name="college">College</option>
       </select>
      </div>
    </div>
    <% if(request.getParameter("error")!=null)
    	out.println("<h4 class=\"col-md-offset-4\" style= color:red;>"+"Invalid email/password"+"</h4>");
    	else{}%>
    <div class="form-group">
      <label class="control-label col-sm-3" for="email">Email:</label>
      <div class="col-sm-9">
        <input type="email" class="form-control" id="email" placeholder="Enter email" required name="email" value=<% if(request.getParameter("email")!=null)
        	out.println(request.getParameter("email")); %>
        	>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" for="pwd">Password:</label>
      <div class="col-sm-9">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password"required>
      </div>
    </div>
    <!-- <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox"> Remember me</label>
        </div>
      </div>
    </div> -->
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default btn-primary" style="width:250px;" name="submit">Submit</button>
      </div>
    </div>
  </form>
  <a class="col-lg-offset-7" href="signup.html" style="text-decoration:none;">Sign up</a>
</div>
<script src="bootstrap/js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>