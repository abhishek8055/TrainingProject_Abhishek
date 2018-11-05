<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Order Details</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
				<h5><b>ORDER DETAILS</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="index.jsp">HOME</a></li>
						<li class="breadcrumb-item"><a href="CustomerOrders.jsp">MY ORDERS</a></li>
						<li class="breadcrumb-item active font-weight-bold">ORDER DETAILS</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->

<!-- CONTENT STARTS -->
		
	    <div class="container">
	    	<div class="row mt-5">
	  		  <!-- COLUMN 1 STARTS -->
	    		<div class="col-md-8">
	    			<p class="text-secondary">Order #1815 was placed on <b class="text-dark">10/12/2015</b> and is currently <b class="text-dark">being prepared</b>.</p>
	    			<p class="text-secondary">If you have any questions, please feel free to <a href="Contact.jsp" style="color:#20B2AA">contact us</a>, our customer service center is working for you 24/7.</p>
					<hr/>
 					<div class="table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xs">         
  						<table class="table">
    						<thead>
      							<tr style="font-size:14px">
          							<th>Product</th>
        							<th>Quantity</th>
        							<th>Unit Price</th>
        							<th>Discount</th>
        							<th>Total</th>
      							</tr>
    						</thead>
    						<tbody style="font-size:12px">
      							<tr>
        							<td style="color:#20B2AA"><img src="images/product2.jpg" class="rounded float-left" alt="white blouse armani" height="50px" width="50px" ">&nbsp;&nbsp;White Blouse armani</td>
        							<td>2</td>
        							<td>$123.00</td>
        							<td>$0.00</td>
        							<td>$246.00</td>
      							</tr>
      							<tr>
        							<td style="color:#20B2AA"><img src="images/product3.jpg" class="rounded float-left" alt="white blouse armani" height="50px" width="50px" ">&nbsp;&nbsp;Black Blouse armani</td>
        							<td>1</td>
        							<td>$200.00</td>
        							<td>$0.00</td>
        							<td>$200.00</td>					
      							</tr>
      							<tr align="right" class="text-secondary font-weight-bold" style="font-size:12px">
      								<td colspan="5">Order subtotal &nbsp;&nbsp; $446.00</td>
      							</tr>
      							<tr align="right" class="text-secondary font-weight-bold" style="font-size:12px">
      								<td colspan="5">Shipping and handling &nbsp;&nbsp; $26.00</td>
      							</tr>
      							<tr align="right" class="text-secondary font-weight-bold" style="font-size:12px">
      								<td colspan="5">Tax &nbsp;&nbsp; $6.00</td>
      							</tr>
      							<tr align="right" class="text-secondary font-weight-bold" style="font-size:12px">
      								<td colspan="5">Total &nbsp;&nbsp; $446.00</td>
      							</tr>	
          					</tbody>
  						</table>
  					</div>
	    		</div>
	    <!-- COLUMN 2 STARTS -->
				<div class="col-md-3 offset-md-1">
					<h5><b>CUSTOMER SECTION</b></h5>
					<hr class="bg-primary">
					<div class="row">
						<div class="col-md-12">
							<ul class="nav nav-pills flex-column" style="font-size:14px">
							    <li class="nav-item"><a href="customer-orders.html" class="nav-link"><i class="fa fa-list"></i> My orders</a></li>
                   				<li class="nav-item"><a href="customer-wishlist.html" class="nav-link"><i class="fa fa-heart"></i> My wishlist</a></li>
                    			<li class="nav-item"><a href="customer-account.html" class="nav-link"><i class="fa fa-user"></i> My account</a></li>
                    			<li class="nav-item"><a href="index.html" class="nav-link"><i class="fa fa-sign-out"></i> Logout</a></li>
							 </ul>
						</div>
					</div>
				</div>
        	</div>
    
        	<div class="row mt-2">
  				<div class="col-md-3 col-sm-12">
  					<p class="font-weight-bold">SHIPPING ADDRESS</p>
  					<p class="text-secondary">Abhishek Dwivedi</p>
  					<p class="text-secondary">Beta-312, jayabheri Silicon County, Kothaguda Hyderabad telangana India 5130012</p>	
  				</div>
  				<hr>
  			</div>
        </div>		        
	  	
        
<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->

<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- JAVASCRIPT CODE -->
	</body>
</html>