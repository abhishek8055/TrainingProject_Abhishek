<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Product, java.util.List, java.util.Iterator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>My Cart</title>
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
		<div class="row" id="header" style="font-size:14px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h4><b>SHOPPING CART</b></h4>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="Home.jsp">HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">SHOPPING CART</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->


<!-- MAIN BODY STARTS -->
		<%
			int size = 0;
			if(cart != null){
				size = cart.size();
			}
		%>
		
	<!-- CONTENT STARTS -->
		
	    <div class="container my-5">
	    	<div class="row">
	    <!-- COLUMN 1 STARTS -->
	   
					<div class="col-md-8">
		  				<div class="row mb-3">
		    				<div class="col-md-12 text-secondary">
		    					<h5>You currently have <%= size %> item(s) in your cart.</h5>
		    				</div>
	    				</div>
		  				<div class="table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xs">          
	  						<table class="table table-hover">
	    						<thead>
	      							<tr style="font-size:16px">
	          							<th scope="col">Product</th>
	        							<th>Quantity</th>
	        							<th>Unit Price</th>
	        							<th>Total</th>
	        							<th></th>
	      							</tr>
	    						</thead>
	    						<tbody style="font-size:12px">
	    						<%
	    							int subtotal = 0;
	    							
	    							Iterator<Product> iterator = cart.iterator();
					  					while(iterator.hasNext()) {
					  						Product product = iterator.next();
					  						int index = cart.indexOf(product);
					  						subtotal = subtotal + Integer.parseInt(product.getPrice());
	    						 %>
	    						
	      							<tr style="font-size:14px">
	        							<td style="color:#20B2AA;"><img src="images/uploads/vendor/<%= product.getImage1() %>" class="rounded float-left" alt="white blouse armani" height="70px" width="70px" ">&nbsp;<%= product.getName() %></td>
	        							<td><input type="text" name="quantity" id="quantity" value="1"></td>
	        							<td id="unitPrice">₹<%= product.getPrice() %></td>
	        							<td id="totalPrice">₹<%= product.getPrice() %><span id="totalUnit"></span></td>
	        							<td><a class="mycolor" href="removeCart?id=<%= index %>"><i class="fa fa-trash"></i></a></td>
	      							</tr>
	      							
	      						<% } 
	      							 
	      						%>
	          					</tbody>
	  						</table>
		  				</div>
	  				<hr>
	  				
	  				<div class="row py-3 mt-5" style="background:	#F5F5F5">
	  					<div class="col-md-6 col-sm-12">
	  						<a type="button" href="#" class="button button1" style="background:grey; color:white" name="contact">
			        			<span class="fa chevron-left"></span>&nbsp;CONTINUE SHOPPING
			        		</a>
	  					</div>
	  					<div class="col-md-6 col-sm-12 d-flex justify-content-end">
	  						<a href="CheckOutAddress.jsp" style="background:#F5F5F5" class="button button1" name="contact">
			        			</span>PROCEED TO CHECKOUT&nbsp;<span class="fa fa-chevron-right">
			        		</a>
	  					</div>
	  				</div>
	  				<div class="row" style="margin-top:50px">   					   
						<div class="col-md-3">
							<hr>
							<h2><strong>YOU MAY ALSO LIKE THESE PRODUCTS</strong></h2>
							<hr>
						</div>
						
						<div class="col-md-3">
							<img src="images/product4.jpg" class="img-responsive" alt="product2" height="180" width="100%">
							<p class="text-center" style="margin-top:15px;"><b>FUR COAT</b></p>
							<p class="text-center text-secondary font-weight-bold">₹146.00</p>
							<hr>
						</div>
				
						<div class="col-md-3">
							<img src="images/product2.jpg" class="img-responsive" alt="product3" height="180" width="100%">
							<p class="text-center" style="margin-top:15px;"><b>FUR COAT</b></p>
							<p class="text-center text-secondary font-weight-bold">₹200.00</p>
							<hr>
						</div>
				
						<div class="col-md-3">
							<img src="images/product1.jpg" class="img-responsive" alt="product4" height="180" width="100%">
							<p class="text-center" style="margin-top:15px;"><b>FUR COAT</b></p>
							<p class="text-center text-secondary font-weight-bold">₹246.00</p>
							<hr>
						</div>
  					</div>
				</div>
	    		
	    <!-- COLUMN 2 STARTS -->
				<div class="col-md-3 offset-md-1">
					<div class="row" style="background:#F5F5F5">
						<div class="col-md-12">
							<h5><b>ORDER SUMMARY</b></h5>
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
					<% session.setAttribute("SUBTOTAL", subtotal); %>
					
					<div class="row" style="background:#F5F5F5">
						<div class="col-md-12">
							<h5><b>COUPON CODE</b></h5>
						</div>
					</div>
					<div class="row">
						<p class="text-muted">If you have any coupon code, please enter it here</p>
					</div>
					<div class="row">						
						<form>
	  						<div class="input-group">
	    						<input type="text" class="form-control" placeholder="Apply coupon">
	    						<div class="input-group-btn">
	      							<button class="btn btn-md" style="background:#20B2AA; color:white" type="submit">
	        							<i class="fa fa-gift"></i>
	      							</button>
	    						</div>
	  						</div>
						</form>
					</div>
				</div>
        	</div>
        </div>		        
	  
        


<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->


<!-- JAVASCRIPT CODE -->
		<script type="text/javascript" src="js/Calculator.js"></script>
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>