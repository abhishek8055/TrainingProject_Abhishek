<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Vendor" %>
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
		<link rel="stylesheet" type="text/css" href="css/headerFooter.css">	
		<link rel="stylesheet" type="text/css" href="css/common.css">	
	</head>
	<body>
	
	<% 
		Vendor vendor = (Vendor)session.getAttribute("VENDOR");	
	%>
	
<!-- NAV 1 -->
	   <nav class="navbar bg-dark">
  			<div class="container-fluid">
  				<div class="col-md-6 col-sm-12 d-flex justify-content-center">
   					<div class="navbar-brand">
     					<p class="navbar-text navbar1 pl-2">
     						Contact us on +91 40 66217777
     					</p>
    				</div>
    			</div>
    			
    			<div class="col-md-6 col-sm-12 d-flex justify-content-center information">
    				<ul class="nav">
    					<div class="col-md-8 col-xs-12 pt-1 text-light col-sm-12 d-flex justify-content-center">
	    					<% if(vendor!=null){  %>
	    					<p>Welcome&nbsp;<%= vendor.getFirstName() %></p>
	    				<% }else {%>
	    					<li class="nav-item">
					     		 <a class="nav-link font-weight-bold" href="index.jsp" style="color:#E0E0E0; font-size:14px"><i class="fa fa-sign-in">&nbsp;SIGN IN</i></a>
					   	 	</li>
					    	<li class="nav-item">
					      		<a class="nav-link font-weight-bold" href="index.jsp" style="color:#E0E0E0; font-size:14px"><i class="fa fa-user-plus">&nbsp;SIGN UP</i></a>
					   		</li>
					   	<% } %>
						</div>
						<div class="col-md-4 col-xs-12 col-sm-12 d-flex justify-content-center">
					    	<li class="nav-item">
					     		 <a class="nav-link" href="#" style="color:#E0E0E0"><i class="fa fa-facebook"></i></a>
					   	 	</li>
					    	<li class="nav-item">
					      		<a class="nav-link" href="#" style="color:#E0E0E0"><i class="fa fa-google-plus"></i></a>
					   		</li>
					   		<li class="nav-item">
					      		<a class="nav-link" href="#" style="color:#E0E0E0"><i class="fa fa-twitter"></i></a>
					   		</li>
					   		<li class="nav-item">
					      		<a class="nav-link" href="#" style="color:#E0E0E0"><i class="fa fa-envelope-o"></i></a>
					   		</li>
					   		<% if(vendor!=null){  %>
					   		<li class="nav-item">
					      		<a class="nav-link" href="VendorLogoutProcess.jsp" style="color:#E0E0E0"><i class="fa fa-sign-out"></i></a>
					   		</li>
					   	<% } %>
				    	</div>
  					</ul>
  				</div>
 			</div>
		</nav>	
		
		
		
		<!-- NAV 2 -->
		<nav class="navbar navbar-expand-lg navbar-light">
	      	<a class="navbar-brand"><img src="images/logo.png" alt="TechAspect"></a>
      		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navDropdown" aria-controls="navDropdown" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
  			</button>
  			<div class="collapse navbar-collapse" id="navDropdown">
   				<ul class="navbar-nav ml-auto">
     				<li class="nav-item dropdown" >
       					<a class="nav-link text-dark font-weight-bold" style="font-size:14px" href="NewProductForm.jsp">ADD A PRODUCT</a>
     				</li>
     				<li class="nav-item dropdown">
       					<a class="nav-link text-dark font-weight-bold" style="font-size:14px" href="ProductList.jsp">EDIT A PRODUCT</a>       					
     				</li>
     				<li class="nav-item dropdown">
      					<a class="nav-link text-dark font-weight-bold" style="font-size:14px" href="ProductList.jsp">PRODUCT LIST</a>      					 
     				</li>
     				<li class="nav-item dropdown">
       					<a class="nav-link text-dark font-weight-bold" style="font-size:14px" href="Contact.jsp">CONTACT US</a>     					 
     				</li>
   				</ul>
 			</div>	
		</nav>