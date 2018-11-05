<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mobile | Category</title>
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
				<h5><b>MOBILES</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="index.jsp">HOME</a></li>
						<li class="breadcrumb-item"><a href="#">ELECTRONICS</a></li>
						<li class="breadcrumb-item active font-weight-bold">MOBILES</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->

<!-- CONTENT STARTS -->
   <!-- BY BRAND -->
		<div class="container mt-4">
			<p class="text-dark font-weight-bold">Exclusive offers</p><hr>
			<div class="row">
				<div class="col-md-3 mb-2">
					<a href="#"><img src="images/mobiles/apple.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-3 mb-2">
					<a href="#"><img src="images/mobiles/mi.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-3 mb-2">
					<a href="#"><img src="images/mobiles/samsung.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-3 mb-2">
					<a href="#"><img src="images/mobiles/motorola.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
			</div>
			<hr>
		</div>
		
 	<!-- MOST VIEWED CAROUSEL -->
 		<div class="container mb-4">
 			<p class="text-dark font-weight-bold">Most Viewed</p><hr>

 			<div id="demo" class="carousel slide" data-ride="carousel">  
 			
  			<!-- THE SLIDESHOW -->
				<div class="carousel-inner">
				<!-- SLIDE 1 -->
					<div class="carousel-item active" id="menu">	
        				<div class="row mt-2">
        				
							<div class="col-md-2">
			  					<div class="card text-center">
                  					<div class="card-body" style="height:160px">
                    					<img src="images/mobiles/samsungS9.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Samsung S9</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
				            <div class="col-md-2">
							  	<div class="card text-center">
				                	<div class="card-body" style="height:160px">
                    					<img src="images/mobiles/oppoF9.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">OppoF9</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
				            <div class="col-md-2">
							  	<div class="card text-center">
				                	<div class="card-body" style="height:160px">
                    					<img src="images/mobiles/nokia6.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Nokia 6</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
				            	</div>
							</div>						
							<div class="col-md-2">
							  	<div class="card text-center">
				                   <div class="card-body" style="height:160px">
                    					<img src="images/mobiles/appleX.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Apple X</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
							<div class="col-md-2">
							  	<div class="card text-center">
				                   <div class="card-body" style="height:160px">
                    					<img src="images/mobiles/redmiNote5pro.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Redmi Note 5 Pro</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
							<div class="col-md-2">
							  	<div class="card text-center">
				                   <div class="card-body" style="height:160px">
                    					<img src="images/mobiles/oneplus6.jpg" class="img-responsive" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">One plus 6</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
						</div>
			  		</div>
					
			
			<!-- SLIDE 2 -->		
			  		<div class="carousel-item" id="menu">	
        				<div class="row mt-2">
        				
							<div class="col-md-2">
			  					<div class="card text-center">
                  					<div class="card-body" style="height:160px">
                    					<img src="images/mobiles/samsungS9.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Samsung S9</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
				            <div class="col-md-2">
							  	<div class="card text-center">
				                	<div class="card-body" style="height:160px">
                    					<img src="images/mobiles/oppoF9.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">OppoF9</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
				            <div class="col-md-2">
							  	<div class="card text-center">
				                	<div class="card-body" style="height:160px">
                    					<img src="images/mobiles/nokia6.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Nokia 6</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
				            	</div>
							</div>						
							<div class="col-md-2">
							  	<div class="card text-center">
				                   <div class="card-body" style="height:160px">
                    					<img src="images/mobiles/appleX.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Apple X</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
							<div class="col-md-2">
							  	<div class="card text-center">
				                   <div class="card-body" style="height:160px">
                    					<img src="images/mobiles/redmiNote5pro.jpg" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">Redmi Note 5 Pro</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
							<div class="col-md-2">
							  	<div class="card text-center">
				                   <div class="card-body" style="height:160px">
                    					<img src="images/mobiles/oneplus6.jpg" class="img-responsive" alt="product2" height="160px" width="100%">
                    				</div>
                    				<div>
                    					<h6 class="text-primary mt-2">One plus 6</h6>
                    					<span id="mostViewed">3GB RAM | 128GB ROM</span>
                    					<span id="mostViewed">16MP + 16MP Dual Rear Camera</span>
                    					<span id="mostViewed">16 MP Front Camera</span>
                    					<p class="text-muted mt-3" style="font-size:12px">Now at $4000</p>
                  					</div>
								</div>
							</div>
						</div>
  					</div>
  
  			<!-- Left and right controls -->
					  <a class="carousel-control-prev" href="#demo" data-slide="prev">
					    <span class="fa fa-chevron-left text-dark"></span>
					  </a>
					  <a class="carousel-control-next" href="#demo" data-slide="next">
					    <span class="fa fa-chevron-right text-dark"></span>
					  </a>
				</div>
 			</div>
 		</div>
	<!-- MOST VIEWED CAROUSEL ENDS -->

<!-- CONTENT STARTS -->


<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->


<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>