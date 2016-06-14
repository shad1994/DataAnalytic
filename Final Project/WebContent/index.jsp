<%@include file="databasecon.jsp" %>
<!Doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>College Data Analytics</title>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="navigation.jsp"></jsp:include>
<div class="container" style="width:100%; margin-top:-50px;">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img img src="images/images.png"  alt="Bar Analytics" width="100%" height="">
        <div class="carousel-caption">
          
        </div>
      </div>

      <div class="item">
        <img img src="images/image1.png"  alt="Chania" width="100%" height="245">
        <div class="carousel-caption">
          
        </div>
      </div>
    
      <div class="item">
        <img src="images/image3.png" alt="Flower" width="100%"  height="245">
        <div class="carousel-caption">
        </div>
      </div>

      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div id="contact" class="row" style="background:#818181; margin:15px; margin-top:-10px;">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> NEW DELHI, INDIA</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91-9899898989</p>
      <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>    
    </div>
    <form method="post" action="index.jsp?errrpppp">
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-info pull-right" type="submit" name="submit">Send</button>
        </div>
      </div> 
      </form>
    </div>
  </div>
</div>
<% if(request.getParameter("submit")!=null){
	
	Statement stmt = con.createStatement();
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String comment=request.getParameter("comment");
	String query="INSERT INTO comment (contact,email,comment) values('"+name+"\',\'"+email+"\',\'"+comment+"\')";
	stmt.executeUpdate(query);
	
} %>

		<script src="bootstrap/js/jquery.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>