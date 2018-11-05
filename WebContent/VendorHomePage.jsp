<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Vendor, com.techaspect.entity.Product" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		if(vendor == null){
			response.sendRedirect("VendorLoginForm.jsp");
		}
	%>
		
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:14px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>DASHBOARD</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="#" class=""nav-link active>HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">DASHBOARD</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->



<!-- CONTENT STARTS -->
		<div class="p-2 mb-2 text-center bg-dark text-white"><h4><b>DASHBOARD</b></h4></div>
		
		<hr>
		<div class="container mb-4 d-flex justify-content-center">
			<div class="row mt-5">
		  		<div class="col-md-6 mb-3">
			  		<div class="card bg-white text-dark" style="width:250px">
					    <div class="card-body">
					      	<h6 class="card-title font-weight-bold d-flex justify-content-center">ADD A PRODUCT</h6>
					      	 <i class="fa fa-plus-square d-flex justify-content-center" style="font-size:20px"></i>
					      	<p class="card-text d-flex justify-content-center">Add more products</p>
					      	<a href="NewProductForm.jsp" class="btn btn-danger btn-md d-flex justify-content-center">Select</a>
					    </div>
			  		</div>
			  	</div>
			  	<div class="col-md-6">
			  		<div class="card bg-white text-dark" style="width:250px">
					    <div class="card-body">
					      <h6 class="card-title font-weight-bold d-flex justify-content-center">EDIT PRODUCTS</h6>
					      <i class="fa fa-edit d-flex justify-content-center" style="font-size:20px"></i>
					      <p class="card-text d-flex justify-content-center">Edit or Delete products</p>
					      <a href="ProductList.jsp" class="btn btn-danger btn-md d-flex justify-content-center">Select</a>
					    </div>
			  		</div>
	  			</div>
			</div> 
		</div>		
		<hr>

<!-- CONTENT ENDS -->



<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->

<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>