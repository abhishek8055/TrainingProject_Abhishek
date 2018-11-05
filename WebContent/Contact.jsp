<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Contact | TechAspect</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/common.css">	
	</head>
	<body>
	

<!-- NAVBAR STARTS -->
		<%@ include file="LoginHeader.jsp" %>
<!-- NAVBAR ENDS -->
	  	
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>CONTACT</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item "><a href="index.jsp">HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">CONTACT</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->
	
	    
<!-- CONTENT STARTS --> 
		<div class="container">   
	        <div class="row"  id="mainBody">
		        	<div class="col-md-8">
		        		<hr>
		        		<h5 class="font-weight-bold">WE ARE HERE TO HELP YOU</h5>
		        		
		        		<br>
		        		<p class="text-muted">Are you curious about something? Do you have some kind of problem with our
		        			product? Feel free to contact to our customer representatives 24/7 available
		        			for you. Our vision is to provide best service and support to our customers.
		        			We would love to help you in any technical need reach out to our technical 
		        		    representatives working 24/7.
		        		</p>
		        		<br>
		        		<p class="text-muted">feel free to <a href="#" style="color:#20B2AA">contact us</a>,
		        		our customer care service center is working for you 24/7.</p>
		        		<hr>
		        		
		        		<h4 class="font-weight-bold float-sm-center">CONTACT FORM</h4>
		        		<hr>
		        		
	<!-- CONTACT FORM STARTS -->
		        		
			        		<form action="contact" method="POST" class="text-dark">	
			        		
			        		<% 
								String pass = (String)request.getAttribute("flag1");
		        				String fail = (String)request.getAttribute("flag2");
				        		if(pass != null){
							%>
									<div class="alert alert-success">
										<h5>Your message has been recorded, Our tech representative will reach you soon!</h5>
									</div>
							<% 		 
				        		}else if(fail != null) {
				        	%>
									<div class="alert alert-danger">
										<h5>Something went wrong please try again!</h5>
									</div>
							<% 	
								} 					
							%>
			        			        		
			        			<div class="row font-weight-normal">
			        				<div class="col-md-4 form-group font-weight-normal">
			        					<label for="fname">First Name</label>
			   							<input type="text" class="form-control" name="fname" required>
			        				</div>
			        				<div class="col-md-4 form-group">
			        					<label for="lname">Last Name</label>
			   							<input type="text" class="form-control" name="lname" required>
			        				</div>
			        			</div>
			        			<div class="row">
			        				<div class="col-md-4 form-group">
			        					<label for="email">Email</label>
		   								<input type="text" class="form-control" name="email" required>
			        				</div>
			        				<div class="col-md-4 form-group">
			        					<label for="sub">Subject</label>
		    							<input type="text" class="form-control" name="sub" required>
			        				</div>
			        			</div>
			        			<div class="row form-group">
			        				<div class="col-md-8">
			        					<label for="message">Message</label>
	  									<textarea class="form-control" rows="5" name="message" required></textarea>
	  								</div>
			        			</div>
			        			<div class="row form-group">
			        				<div class="col-md-8">
			        					<button class="button button1" name="ContactProcess.jsp">
			        						<span class="fa fa-send"></span>&nbsp;SEND MESSAGE
			        					</button>
			        				</div>
			        			</div>
			        		</form>
		        		
	<!-- CONTACT FORM ENDS -->
						
					<hr>
		        	</div>
		        	
		        	<div class="col-md-4">
		        		<hr>
		        		<h5 class="font-weight-bold">ADDRESS</h5>
		        		<br>
		        		<p class="text-muted">TechAspect Solutions Pvt Ltd.<br>
		        		 	Plot No. 38, N-Heights 3rd Floor, Hitec City Phase-2 Madhapur Hyderabad
		        			Telangana-500086 <b>India</b>.
		        		</p>
		        		<hr>
		        		<h5 class="font-weight-bold">CALL CENTER</h4>
		        		<p class="text-muted">This number is toll free if you are calling from India only, Otherwise you 
		        			may charged according to your service provider plans.
		        		</p>
		        		<p style="color:#20B2AA">+91 9452056704</p>
		        		<hr>
		        		
		        		<h5 class="font-weight-bold">ELECTRONIC SUPPORT</h5>
		        		<p class="text-muted">feel free to <a href="#" style="color:#20B2AA">contact us</a>,
		        			our customer care service center is working for you 24/7.
		        		</p>
		        		<ul>
		        			<li><a href="#" style="color:#20B2AA">info@techaspect.com</a></li>
		        			<li class="text-muted"><a href="#" style="color:#20B2AA">Tech 360</a>-our ticketing support platform</li>
		        		</ul>
						<hr>
		        	</div>
	        	</div>
	        </div>
<!-- CONTENT ENDS -->
	        
<!-- MAP API -->        
	        <div class="row">
	        	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3806.178065136883!2d78.36861241478358!3d17.451189405555482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb93c4906aaaab%3A0xffff6077e5d9c41b!2sTechAspect+Solutions+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1535662704178" width="100%" height="200" frameborder="0" style="border:0" allowfullscreen></iframe>
	        </div>

	        
<!-- FOOTER STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER ENDS -->

<!-- JAVASCRIPT CODE -->
	    
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>