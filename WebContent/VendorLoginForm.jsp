<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Vendor, com.techaspect.entity.Product" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Vendor | LogIn</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/common.css">	
		
	</head>
	<body>
	
<!-- NAVBAR STARTS -->
		<%@ include file="VendorHeader.jsp" %>
<!-- NAVBAR ENDS -->
	
	<% 
		
		if(vendor != null){
			response.sendRedirect("VendorHomePage.jsp");
		}
	%>
	

<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:16px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>VENDOR LOGIN</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item active font-weight-bold">SIGN IN</li>
						<li class="breadcrumb-item"><a href="Contact.jsp">Contact Us</a></li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->

<!-- CONTENT STARTS -->
		<div class="container d-flex justify-content-center">
			<div class="col-md-4 offset-md-1">
        		<hr>
        		<div class="row d-flex justify-content-center text-primary">
        			<h3>Vendor Login here</h3>
        		</div>
        		<hr>	        			        		
		<!-- FORM STARTS -->
        		<form action="vendorLogin" method="POST" class="text-secondary">
        		
        			<%
	        				if(null !=session.getAttribute("status")){
		        				boolean VISITED = (boolean)session.getAttribute("status");
		        				if(VISITED==true){
	        			%>
	        					<div class="row text-danger d-flex justify-content-center">
	        						<h4>Invalid access</h4>
	        					</div>
	        			<%
	        				} }session.removeAttribute("status");
	        			%>
        		
  					<div class="form-group">
  						<label for="email" style="font-size:14px">Email</label>
   						<input type="email" class="form-control" name="email" required>
  					</div>
  					<div class="form-group">
    					<label for="pwd" style="font-size:14px">Password</label>
    					<input type="password" class="form-control" name="pwd" required>
  					</div>
  					<p style="text-align:center">
  						<button class="button button1" name="vendorLogin"><span class="glyphicon glyphicon-log-in"></span>&nbsp;LOG IN</button>
  					</p>
				</form>	
	        </div>
		</div>

<!-- CONTENT ENDS -->

<!-- MAP API -->
	        
        <div class="row">
        	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.178065136883!2d78.36861241478358!3d17.451189405555482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb93c4906aaaab%3A0xffff6077e5d9c41b!2sTechAspect+Solutions+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1535662704178" width="100%" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>

<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->
<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>