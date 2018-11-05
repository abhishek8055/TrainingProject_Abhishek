<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Wishlist</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/common.css">	
	</head>
	<body>
	
	<% 
		String name = (String)session.getAttribute("NAME");
	%>

<!-- NAVBAR STARTS -->
		<%@ include file="GuestHeader.html" %>
<!-- NAVBAR ENDS -->
		
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>MY WISHLIST</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="index.jsp">HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">MY WISHLIST</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->

	<!-- CONTENT STARTS -->
		
	    <div class="container">
	    	<div class="row my-5">
<!-- COLUMN 1 STARTS -->
	    		<div class="col-md-8">
	    			<p class="text-muted" style="font-size:20px">These are the items in your wishlist.</p>
					<div class="row mt-2"> 
						<div class="col-md-3">
							<img src="images/product1.jpg" class="img-responsive" alt="product1" height="200" width="100%">
							<p class="text-center font-weight-bold">FUR COAT WITH VERY LONG</p>
							<p class="text-center text-dark">$146.00</p>
							<hr>
						</div>
						
						<div class="col-md-3">
							<img src="images/product2.jpg" class="img-responsive" alt="product2" height="200" width="100%">
							<p class="text-center font-weight-bold">WHITE BLOUSE ARMANI.</p>
							<p class="text-center text-dark">$341.00</p>
							<hr/>
						</div>
						<div class="col-md-3">
							<img src="images/product3.jpg" class="img-responsive" alt="product3" height="200" width="100%">
							<p class="text-center font-weight-bold">BLACK BLOUSE VERSACE.</p>
							<p class="text-center text-dark">$238.00</p>
							<hr/>
						</div>
						<div class="col-md-3">
							<img src="images/product4.jpg" class="img-responsive" alt="product4" height="200" width="100%">
							<p class="text-center font-weight-bold">BLUE BLOUSE VERSACE.</p>
							<p class="text-center text-dark">$238.00</p>
							<hr>
						</div>
  					</div>
					
					<div class="row">   
						<div class="col-md-3">
							<img src="images/product3.jpg" class="img-responsive" alt="product1" height="200" width="100%">
							<p class="text-center font-weight-bold">BLACK BLOUSE VERSACE.</p>
							<p class="text-center text-dark">$238.00</p>
							<hr>
						</div>
						<div class="col-md-3">
							<img src="images/product4.jpg" class="img-responsive" alt="product2" height="200" width="100%">
							<p class="text-center font-weight-bold">BLACK BLOUSE VERSACE.</p>
							<p class="text-center text-dark">$238.00</p>
							<hr>
						</div>
						<div class="col-md-3">
							<img src="images/product2.jpg" class="img-responsive" alt="product3" height="200" width="100%">
							<p class="text-center font-weight-bold">BLACK BLOUSE VERSACE.</p>
							<p class="text-center text-dark">$238.00</p>
							<hr>
						</div>
						<div class="col-md-3">
							<img src="images/product1.jpg" class="img-responsive" alt="product4" height="200" width="100%">
							<p class="text-center font-weight-bold">BLACK BLOUSE VERSACE.</p>
							<p class="text-center text-dark">$238.00</p>
							<hr>
						</div>
					</div>
	    		</div>
	 
<!-- COLUMN 2 STARTS -->
				<div class="col-md-3 offset-md-1">
					<h5><b>CUSTOMER SECTION</b></h5>
					<hr class="bg-primary">
					<div class="row">
						<div class="col-md-12">
							<ul class="nav nav-pills flex-column" style="font-size:14px">
							    <li class="nav-item"><a href="customer-orders.html" class="nav-link "><i class="fa fa-list"></i> My orders</a></li>
                   				<li class="nav-item"><a href="customer-wishlist.html" class="nav-link active"><i class="fa fa-heart"></i> My wishlist</a></li>
                    			<li class="nav-item"><a href="customer-account.html" class="nav-link"><i class="fa fa-user"></i> My account</a></li>
                    			<li class="nav-item"><a href="index.html" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></li>
							 </ul>
						</div>
					</div>
				</div>
<!-- COLUMN 2 ENDS -->
        	</div>
        </div>		        
	  
        
<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->

<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>