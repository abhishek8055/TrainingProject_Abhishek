<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>

<% 		
		if(session.getAttribute("CUSTOMERDATA") != null){
			session.removeAttribute("CUSTOMERDATA");
			session.invalidate();
		} else if(session.getAttribute("CUSTOMERDATA") == null) {
			response.sendRedirect("index.jsp");
		}
		
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Welcome | TechAspect</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/common.css">	
	</head>
	<body>
	
<!-- NAVBAR STARTS -->		
		<%@ include file="GuestHeader.html" %>		
<!-- NAVBAR ENDS -->
	  	
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h6><b>NEW ACCOUNT / SIGN IN</b></h6>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item active font-weight-bold">HOME</li>
						<li class="breadcrumb-item"><a href="index.jsp">NEW ACCOUNT</a></li>
						<li class="breadcrumb-item"><a href="index.jsp">SIGN IN</a></li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->


	   	

<!-- MAIN BODY STARTS -->

	<!-- CONTENT STARTS -->
		<div class="p-2 mb-2 text-center bg-danger text-white"><h3>Successfully logged out.</h3></div>
		
	    <!-- CONTENT STARTS -->

		
	    <div class="container-fluid">
        	
        	<!-- Main Body -->
	        <div class="row"  id="mainBody">
	        	<div class="col-md-4 offset-md-2">
	        		<hr>
	        		<h4 class="font-weight-bold">NEW ACCOUNT</h4>
	        		<h6 class="text-danger">Not our registered customer yet?</h6>
	        		<br>
	        		<p>With registration with us new world of fashion, fantastic discounts and much more
	        		opens to you! The whole process will not take you more than a minute!</p>
	        		<br>
	        		<p class="text-secondary">if you have any question, please feel free to <a href="#" style="color:#20B2AA">contact us</a>,
	        		our customer care service center is working for you 24/7.</p>
	        		<hr>
	        		<form action="customerRegister" method="POST" name="myForm">
	        		
	        		<% String flag = (String)request.getAttribute("flag");
	        			if(flag != null){		 				
	        		%>
	        			<div class="row text-danger d-flex justify-content-center">
	        				<h4>Something went wrong! please try again.</h4>
	        			</div>
	        		<% } %>
	        			
	        			<div class="form-group">
	  						<label for="fname">First name&nbsp;&nbsp;<span style="background:#FF99CC" id="fnameError"></span></label>
	   						<input type="text" class="form-control" name="fname" id="fname" onfocusout="validateFname()">
	  					</div>
	  					<div class="form-group">
	  						<label for="lname">Last name&nbsp;&nbsp;<span style="background:#FF99CC" id="lnameError"></span></label>
	   						<input type="text" class="form-control" name="lname" id="lname" onfocusout="validateLname()">
	  					</div>
	  					<div class="form-group">
	  						<label for="email">Email&nbsp;&nbsp;<span style="background:#FF99CC" id="emailError1"></span><span style="background:#FF99CC" id="emailError2"></span></label>
	   						<input type="text" class="form-control" name="email" id="email" onfocusout="validateEmail()">
	  					</div>
	  					<div class="form-group">
	    					<label for="pwd">Password&nbsp;&nbsp;<span style="background:#FF99CC" id="pwdError"></span></label>
	    					<input type="password" class="form-control" name="pwd" id="pwd" onfocusout="validatePassword()">
	  					</div>
	  					<p style="text-align:center">
	  						<button type="submit" name="customerRegister" id="register" class="button button1" onclick="validateSubmit()"><i class="fa fa-user-plus"></i>&nbsp;Register</button>
	  					</p>
	  					
					</form>	
					
	        	</div>
	        	
	        	<div class="col-md-3 offset-md-1">
	        		<hr>
	        		<h4 class="font-weight-bold">LOGIN</h4>
	        		<h6 class="text-success">Already our customer?</h6>
	        		<br>
	        		<p>Get access to your orders, Wishlist and Recommendations.</p>
	        		<hr>
	        		
		<!-- FORM STARTS -->
	        		<form action="customerLogin" method="POST">
	        			<%
	        				if(null !=request.getAttribute("status")){
		        				boolean VISITED = (boolean)request.getAttribute("status");
		        				if(VISITED==true){
	        			%>
	        					<div class="row text-danger d-flex justify-content-center">
	        						<h4>Invalid access</h4>
	        					</div>
	        			<%
	        				} }
	        			%>
	  					<div class="form-group">
	  						<label for="email">Email</label>
	   						<input type="email" class="form-control" name="email" id="LoginEmail" required>
	  					</div>
	  					<div class="form-group">
	    					<label for="pwd">Password</label>
	    					<input type="password" class="form-control" name="pwd" id="LoginPwd" required>
	  					</div>
	  					<p style="text-align:center"><button name="customerLogin" id="login" class="button button1"><span class="fa fa-sign-in"></span>&nbsp;LOG IN</button></p>
					</form>	
										
					<div class="col-md-12 d-flex justify-content-center">
						<p>Skip login and start shopping..</p>
					</div>
										
					<div class="col-md-12 text-success d-flex justify-content-center">
						<a href="guestLogin" style="font-size:15px"><p class="alert alert-danger font-weight-bold">Start Shopping</p></a>
					</div>
									
	        	</div>
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
		<script type="text/javascript" src="js/FormValidation.js"></script>
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>