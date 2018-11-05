<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Orders</title>
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
				<h5><b>MY ORDERS</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="index.jsp">HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">MY ORDERS</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->


<!-- CONTENT STARTS -->
		
	    <div class="container">
	    	<div class="row" style="margin-top:50px; margin-bottom:50px">
	  		  <!-- COLUMN 1 STARTS -->
	    		<div class="col-md-8">
	    			<p class="text-secondary">If you have any questions, please feel free to <a href="#" style="color:#20B2AA">contact us</a>, our customer service center is working for you 24/7.</p>
					<hr/>
 					<div class="table-responsive-sm">          
  						<table class="table">
    						<thead>
      							<tr style="font-size:14px">
          							<th scope="col">Order</th>
        							<th scope="col">Date</th>
        							<th scope="col">Total</th>
        							<th scope="col">Status</th>
        							<th scope="col">Action</th>
      							</tr>
    						</thead>
    						<tbody style="font-size:12px">
      							<tr>
        							<td  scope="row"><b>#1716</b></td>
        							<td>19/09/2018</td>
        							<td>$244.00</td>
        							<td><span class="badge badge-primary" style="font-size:10px;">BEING PREPARED</span></td>
        							<td><a class="button button1 mycolor" href="#" style="font-size:10px;">VIEW</a></td>
      							</tr>
      							<tr>
        							<td><b>#1715</b></td>
        							<td>21/08/2016</td>
        							<td>$204.00</td>
        							<td><span class="badge badge-primary" style="font-size:10px;">BEING PREPARED</span></td>
        							<td><a class="button button1 mycolor" href="#" style="font-size:10px;">VIEW</a></td>
      							</tr>
      							<tr>
        							<td><b>#1714</b></td>
        							<td>14/03/2016</td>
        							<td>$544.00</td>
        							<td><span class="badge badge-success" style="font-size:10px;">RECEIVED</span></td>
        							<td><a class="button button1 mycolor" href="#" style="font-size:10px;">VIEW</a></td>
      							</tr>
      							<tr>
        							<td><b>#1713</b></td>
        							<td>11/01/2017</td>
        							<td>$244.00</td>
        							<td><span class="badge badge-warning" style="font-size:10px;">ON HOLD</span></td>
        							<td><a class="button button1 mycolor" href="#" style="font-size:10px;">VIEW</a></td>
      							</tr>
      							<tr>
        							<td><b>#1712</b></td>
        							<td>03/07/2016</td>
        							<td>$244.00</td>
        							<td><span class="badge badge-danger" style="font-size:10px;">CANCELLED</span></td>
        							<td><a class="button button1 mycolor" href="#" style="font-size:10px;">VIEW</a></td>
      							</tr>
      							<tr>
        							<td><b>#1711</b></td>
        							<td>23/09/2013</td>
        							<td>$294.00</td>
        							<td><span class="badge badge-success" style="font-size:10px;">RECEIVED</span></td>
        							<td><a class="button button1 mycolor" href="#" style="font-size:10px;">VIEW</a></td>
      							</tr>
    						</tbody>
  						</table>
  						<hr/>
  					</div>
	    		</div>
<!-- COLUMN 2 STARTS -->
				<div class="col-md-3 offset-md-1">
					<h5><b>CUSTOMER SECTION</b></h5>
					<hr class="bg-primary">
					<div class="row">
						<div class="col-md-12">
							<ul class="nav nav-pills flex-column" style="font-size:14px">
							    <li class="nav-item"><a href="customer-orders.html" class="nav-link active mycolor"><i class="fa fa-list"></i> My orders</a></li>
                   				<li class="nav-item"><a href="customer-wishlist.html" class="nav-link"><i class="fa fa-heart"></i> My wishlist</a></li>
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