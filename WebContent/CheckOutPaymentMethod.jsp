<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>CheckOut-Payment</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/bootstrap.css">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/common.css">	
	</head>
	<body>
	
<!-- NAVBAR STARTS -->		
		<%@ include file="LoginHeader.jsp" %>		
<!-- NAVBAR ENDS -->
		
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:14px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>CHECKOUT-PAYMENT METHOD</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="Home.jsp">HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">CHECKOUT-PAYMENT METHOD</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->


<!-- CONTENT STARTS -->
		
	    <div class="container">
	    	<div class="row my-5">
	    	
	  	<!-- COLUMN 1 STARTS -->
	    		<div class="col-md-7 offset-md-1" style="font-size:15px">
					<ul class="nav nav-pills">
  						<li class="nav-item"><a class="nav-link addressId" href="CheckOutAddress.jsp"><i class="fa fa-map-marker"></i>&nbsp;Address</a></li>
  						<li class="nav-item"><a class="nav-link addressId" href="CheckOutDeliveryMethod.jsp"><i class="fa fa-truck"></i>&nbsp;Delivery Method</a></li>
						<li class="nav-item"><a class="nav-link active addressId"><i class="fa fa-money"></i>&nbsp;Payment Method</a></li>
						<li class="nav-item"><a class="nav-link addressId" href="CheckOutOrderReview.jsp"><i class="fas fa-eye"></i>&nbsp;Order Review</a></li>
					</ul>
					<hr>
					
					
					<div class="row mt-2">
			  			<div class="col-md-6 mb-2">
			  				 <div class="card text-center">
							 	<div class="card-header">PAYPAL</div>
							  	<div class="card-body">
							    	<p class="card-title">Global payment gateway</p>
							  	</div>
							  	<div class="card-footer text-muted">
							    	<a href="#" class="btn btn-danger btn-sm">SELECT</a>
							 	 </div>
							  </div>
			  			</div>
			  			<div class="col-md-6 mb-2">
			  				<div class="card text-center">
							 	<div class="card-header">PAYMENT GATEWAY</div>
							  	<div class="card-body">
							    	<p class="card-title">Visa/Master Card/Rupay Card</p>
							  	</div>
							  	<div class="card-footer text-muted">
							    	<a href="#" class="btn btn-danger btn-sm">SELECT</a>
							 	 </div>
							 </div>
					  	</div>
					 </div>
					  <div class="row">
				  			<div class="col-md-6 mb-2">
				  				<div class="card text-center">
							 		<div class="card-header">CASH ON DELIVERY</div>
								  	<div class="card-body">
								    	<p class="card-title">Now pay at your door</p>
								  	</div>
								  	<div class="card-footer text-muted">
								    	<a href="#" class="btn btn-danger btn-sm">SELECT</a>
								 	 </div>
								 </div>
				  			</div>
				  			<div class="col-md-6 mb-2">
				  				<div class="card text-center">
							 		<div class="card-header">EASY EMI</div>
								  	<div class="card-body">
								    	<p class="card-title">Pay in installments</p>
								  	</div>
								  	<div class="card-footer text-muted">
								    	<a href="#" class="btn btn-danger btn-sm">SELECT</a>
								 	</div>
							 	</div>
				  			</div>
					  	</div>
					
					
					
			  		
					<div class="row" style="background:	#F5F5F5; padding-top:15px; padding-bottom:15px; margin-top:30px">
						<div class="col-md-6 col-sm-12">
							<a type="button" href="ShoppingCart.jsp" class="button button1" style="background:grey; color:white" name="contact">
			      				<span class="fa fa-chevron-left"></span>&nbsp;BACK TO CART
			      			</a>
						</div>
						<div class="col-md-6 col-sm-12 d-flex justify-content-end">
							<a href="CheckOutOrderReview.jsp" style="background:#F5F5F5" class="button button1" name="contact">
				       			CONTINUE TO REVIEW&nbsp;<span class="fa fa-chevron-right"></span>
				       		</a>
						</div>
  					</div>	    
				</div>
					  	
	    <!-- COLUMN 2 STARTS -->
	    		<div class="col-md-3 offset-md-1">
					<div class="row" style="background:#F5F5F5">
						<div class="col-md-12">
							<h5><b>ORDER SUMMRAY</b></h5>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 text-muted">
							<p>Shipping and additional costs are calculated based on the value you have entered.</p>
						</div>
					</div>
					<div class="table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xs">          
  						<table class="table">
  							<thead>
  								<tr>
  									<th></th>
  									<th></th>
  								</tr>
  							</thead>
  							<% int subtotal = (int)session.getAttribute("SUBTOTAL"); %>
  							<%
								int size = 0;
								if(cart != null){
									size = cart.size();
								}
							%>
  							<tbody style="font-size:15px">
  								<tr>
  									<td class="text-secondary">Order SubTotal</td>
  									<td><b>₹<%= subtotal %></b></td>
  								</tr>
  								<tr>
  									<td class="text-secondary">Shipping & Handling</td>
  									<td><b><% if(size != 0) { %> ₹30 <% }else { %> ₹0 <% } %></b></td>
  								</tr>
  								<tr>
  									<td class="text-secondary">Tax</td>
  									<td><b><% if(size != 0) { %> ₹10 <% }else { %> ₹0 <% } %></b></td>
  								</tr>
  								<tr class="font-weight-bold">
  									<td><b>Total</b></td>
  									<td><b><% if(size != 0) { %> ₹<%= subtotal+40 %> <%} else { %> ₹0 <% } %></b></td>
  								</tr>
  							</tbody>
  						</table>
  					</div>
					<hr>				
				</div>
        	</div>
        </div>		        
	  
        
<!-- FOOTER STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER ENDS -->


<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>