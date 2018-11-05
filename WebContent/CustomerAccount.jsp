<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.*" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Account | TechAspect</title>
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
		
		<%
			if(customer == null){
				response.sendRedirect("index.jsp");
			}
		%>
<!-- NAVBAR ENDS -->
	  	
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>MY ACCOUNT</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item "><a href="Home.jsp">HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">MY ACCOUNT</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->

<!-- CONTENT STARTS -->
	
		<div class="container my-5">
			<div class="row">
			
		<!-- COLUMN 1 STARTS -->
				
				<div class="col-md-8">
					<p class="text-success">Change your personal details or password here.</p>
					<p class="text-muted">It takes only few steps to update your account's password. Just follow the procedures.</p>
					<hr>
					<h5><b>CHANGE PASSWORD</b></h5>
					<hr>
					
			<!-- PASSWORD UPDATE FORM STARTS -->
				<% 
						String NewFail = (String)request.getAttribute("NEWFAIL");
						String OldValid = (String)request.getAttribute("SUCCESS");
						String OldFail = (String)request.getAttribute("OLDFAIL");
						if(NewFail != null){
				%>
			
						<div class="row alert alert-danger d-flex justify-content-center">
		        			<p>New password do not match.</p>
		        		</div>
		        		
		        <%
		        			session.removeAttribute("NEWFAIL");
						} else if(OldFail != null){
		        %>
			        		<div class="row alert alert-danger d-flex justify-content-center">
			        			<p>Old password not correct.</p>
			        		</div>
		        		
		        <%
		        			session.removeAttribute("OLDFAIL");
						} else if(OldValid != null) {
		        %>
						
							<div class="row alert alert-success d-flex justify-content-center">
			        			<p>Password updated.</p>
			        		</div>
		        <%
		        			session.removeAttribute("SUCCESS");
						}
		        %>
					<div class="row">
						<div class="col-md-12">
							<form action="updatePassword" method="POST">
								<div class="row">
									<div class="col-md-4 form-group">
				        				<label for="old">Old Password</label>
				   						<input type="password" class="form-control" name="oldp" required>
				        			</div>
								</div>
								<div class="row">
									<div class="col-md-4 form-group">
				        				<label for="new">New Password</label>
				   						<input type="password" class="form-control" name="newp" required>
				        			</div>
				        			<div class="col-md-4 form-group">
				        				<label for="newc">Retype new Password</label>
				   						<input type="password" class="form-control" name="rnewp" required>
				        			</div>
								</div>
								<div class="row form-group form-group">
			        				<div class="col-md-6 d-flex justify-content-center">
			        					<button class="btn btn-outline-danger btn-md btn-block" name="updatePassword">
			        						<span class="fa fa-save"></span>&nbsp;Update password
			        					</button>
			        				</div>
				        		</div>
							</form>
						</div>
					</div>
					<hr>
			<!-- PASSWORD UPDATE FORM ENDS -->
			
					<% String flag1 = (String)request.getAttribute("flag1");
				       String flag2 = (String)request.getAttribute("flag2");
				        						
				     		if(flag1 != null){
				     	%>
				     			<div class="row alert alert-success d-flex justify-content-center">
			        				<h4>Details updated.</h4>
			        			</div>
			        	<%
			        		session.removeAttribute("status1");
				     		}else if(flag2 != null){
				     	%>
				     			<div class="row alert alert-danger d-flex justify-content-center">
			        				<h4>Something went wrong! try again later.</h4>
			        			</div>
			        	<%
			        		session.removeAttribute("status2");
				     		}   
				    	 %>
					
					<h5><b>PERSONAL DETAILS</b></h5>
					<hr>
			<!-- PERSONAL DETAILS FORM STARTS -->
			
					
					
					
					<%
							int cust_id = customer.getId();	
							String fname = customer.getFirstName();	
    						String lname = customer.getLastName();
    						String contact = customer.getContact();
			        		String email = customer.getEmail();
			        		String profilePic = customer.getProfilePicture();
						        		
								
										
       						CustomerAddress cAddress = (CustomerAddress)session.getAttribute("ADDRESS");
       						String address = cAddress.getAddress();
       						String zip = cAddress.getZip();
       						String city = cAddress.getCity();
       						String state = cAddress.getState();
       						String country = cAddress.getCountry();
			        						
					%>
			
					<div class="row">
						<div class="col-md-12">
							<form action="detailsUpdate" method="POST" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-6">
		  								<p><img src="images/uploads/customer/<%= profilePic %>" width="90" height="110"></p>
		  							</div>
		  							<div class="custom-file col-md-6">
									    <input type="file" class="form-control-file border" name="newPic">
									    <label class="form-control-file" for="customFile">Change image</label>
									 </div>
									 <input type="hidden" name="currPic" value="<%= profilePic %>">
				     			</div>
				     			<hr>
								<div class="row">
									<div class="col-md-6 form-group">
				        				<label for="fname">First Name</label>
				   						<input type="text" class="form-control" name="fname" value="<%= fname %>">
				        			</div>
				        			<div class="col-md-6 form-group">
				        				<label for="lname">Last Name</label>
				   						<input type="text" class="form-control" name="lname" value="<%= lname %>" >
				        			</div>
								</div>
								<div class="row">
									<div class="col-md-12">									
										<h5><b>Gender</b></h5>
										<div class="custom-control custom-radio">
	     									 <input type="radio" value="male" class="custom-control-input" id="customRadio1" name="gender">
	      									 <label class="custom-control-label" for="customRadio1">Male</label>
	    								</div>  
									    <div class="custom-control custom-radio">
									      <input type="radio" value="female" class="custom-control-input" id="customRadio2" name="gender">
									      <label class="custom-control-label" for="customRadio2">Female</label>
									    </div>  
									    <div class="custom-control custom-radio">
									      <input type="radio" value="transgender" class="custom-control-input" id="customRadio3" name="gender">
									      <label class="custom-control-label" for="customRadio3">Transgender</label>
									    </div>										 
									</div>
								</div>
								<div class="row form-group form-group">
				        			<div class="col-md-12" style="margin-top:10px">
				        				<label for="address">Address</label>
		  								<textarea class="form-control" rows="3" name="address"><%= address %></textarea>
		  							</div>
				        		</div>
				        		<div class="row">
				        			<div class="col-md-3 form-group">
				        				<label for="city">City</label>
				   						<input type="text" class="form-control" name="city" value="<%= city %>">
				        			</div>
				        			<div class="col-md-3 form-group">
				        				<label for="zip">Zip</label>
				   						<input type="text" class="form-control" name="zip" value="<%= zip %>">
				        			</div>
				        			<div class="col-md-3 form-group">
				        				<label for="state">State</label>
				   						<input type="text" class="form-control" name="state" value="<%= state %>">
				        			</div>
				        			<div class="col-md-3 form-group">
				        				<label for="country">Country</label>
				   						<input type="text" class="form-control" name="country" value="<%= country %>">
				        			</div>
				        		</div>
				        		<div class="row" style="margin-top:10px">
									<div class="col-md-6 form-group">
				        				<label for="number">Contact Number</label>
				   						<input type="text" class="form-control" name="contact" value="<%= contact %>">
				        			</div>
				        			<div class="col-md-6 form-group">
				        				<label for="email">Email</label>
				   						<input type="text" class="form-control" name="email" value="<%= email %>">
				        			</div>
								</div>
								<div class="row form-group">
									<div class="col-md-6 form-group">
				        				<label for="email">Verify password</label>
				   						<input type="password" class="form-control" name="password">
				        			</div>
				        		</div>
				        		<div class="row form-group">
				        			<div class="col-md-6 d-flex justify-content-center">
			        					<button class="btn btn-outline-danger btn-md btn-block" name="detailsUpdate">
			        						<span class="fa fa-save"></span>&nbsp;Update
			        					</button>
			        				</div>
			        			</div>
							</form>
						</div>
					</div>
			<!-- PERSONAL DETAILS FORM ENDS -->
				</div>				
				
	<!-- COLUMN 2 STARTS -->
				<div class="col-md-3 offset-md-1">
					<h5><b>CUSTOMER SECTION</b></h5>
					<hr class="bg-primary">
					<div class="row">
						<div class="col-md-12">
							<ul class="nav nav-pills flex-column">
							    <li class="nav-item"><a style="font-size:16px" href="CustomerOrders.jsp" class="nav-link mycolor"><i class="fa fa-list"></i> My orders</a></li>
                   				<li class="nav-item"><a style="font-size:16px" href="ShoppingCart.jsp" class="nav-link mycolor"><i class="fa fa-shopping-cart"></i> My Cart</a></li>
                    			<li class="nav-item"><a style="font-size:16px" href="#" class="nav-link active mycolor"><i class="fa fa-user"></i> My account</a></li>
                    			<li class="nav-item"><a style="font-size:16px"href="LogoutProcess.jsp" class="nav-link mycolor"><i class="fa fa-sign-out"></i> Logout</a></li>
							 </ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- CONTENT ENDS -->
	

	        
<!-- FOOTER STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER ENDS -->

<!-- JAVASCRIPT CODE -->
	    
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>