<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Customer, com.techaspect.entity.Product, java.util.List" %>
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
		Customer customer = (Customer)session.getAttribute("CUSTOMERDATA");	
		@SuppressWarnings("unchecked")
		List<Product> cart = (List<Product>)session.getAttribute("CART");
		
	%>
	
<!-- NAV 1 -->
	   	<nav class="navbar bg-dark">
  			<div class="container-fluid">
  				<div class="col-md-5 col-sm-12 d-flex justify-content-center">
   					<div class="navbar-brand">
     					<p class="navbar-text navbar1">
     						Contact us on +91 40 66217777
     					</p>
    				</div>
    			</div>
    			
    			<div class="col-md-7 d-flex justify-content-center information">
    				<ul class="nav">
    					<div class="col-md-6 col-xs-12 text-light col-sm-12 d-flex justify-content-center">
    					<% if(customer!=null){  %>
	    					<p class="pt-1">Welcome&nbsp;<%= customer.getFirstName() %></p>
	    				<% }else {%>
	    					<li class="nav-item">
					     		 <a class="nav-link font-weight-bold" href="index.jsp" style="color:#E0E0E0; font-size:14px"><i class="fa fa-sign-in">&nbsp;SIGN IN</i></a>
					   	 	</li>
					    	<li class="nav-item">
					      		<a class="nav-link font-weight-bold" href="index.jsp" style="color:#E0E0E0; font-size:14px"><i class="fa fa-user-plus">&nbsp;SIGN UP</i></a>
					   		</li>
					   	<% } %>
						</div>
						<div class="col-md-6 col-xs-12 col-sm-12 d-flex justify-content-center">
							<li class="nav-item">
					     		 <a class="nav-link text-light font-weight-bold" href="ShoppingCart.jsp" data-toggle="tooltip" title="Go to cart">
					     		 	<i class="fa fa-shopping-cart"></i>
					     		 </a>
					     		 <script>
									$(document).ready(function(){
									    $('[data-toggle="tooltip"]').tooltip();   
									});
								</script>
					   	 	</li>
					   	 <% if(cart != null){ %>  
					   	 	<li class="nav-item text-light pt-1">
					     		<i class="badge badge-danger"><%= cart.size() %></i>
					   	 	</li>
					   	 <% } %>
					    	<li class="nav-item">
					     		 <a class="nav-link font-weight-bold" href="#" style="color:#E0E0E0"><i class="fa fa-facebook"></i></a>
					   	 	</li>
					    	<li class="nav-item">
					      		<a class="nav-link font-weight-bold" href="#" style="color:#E0E0E0"><i class="fa fa-google-plus"></i></a>
					   		</li>
					   		<li class="nav-item">
					      		<a class="nav-link font-weight-bold" href="#" style="color:#E0E0E0"><i class="fa fa-twitter"></i></a>
					   		</li>
					   		<li class="nav-item">
					      		<a class="nav-link font-weight-bold" href="#" style="color:#E0E0E0"><i class="fa fa-envelope-o"></i></a>
					   		</li>
					   	<% if(customer!=null){  %>
					   		<li class="nav-item">
					      		<a class="nav-link font-weight-bold" href="LogoutProcess.jsp" style="color:#E0E0E0"><i class="fa fa-sign-out"></i></a>
					   		</li>
					   	<% } %>
				    	</div>
  					</ul>
  				</div>
 			</div>
		</nav>	
		
<!-- NAV 2 -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light navbar2">
		<div class="container">
			<a class="navbar-brand" href="#"><img src="images/logo.png" width="150px" height="30px"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="Home.jsp">HOME</a></li>
					<li class="nav-item">
						<a class="nav-link" href="#"></a>
					</li>
					<li class="dropdown menu-large nav-item"> <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">ELECTRONICS</a>
		                	<ul class="dropdown-menu megamenu">
		                    	<div class="row">
				                    <li class="col-md-3 dropdown-item">
				                       <ul>
				                            <li class="dropdown-header"><b><a href="guestLogin">Mobiles</a></b></li>
					                            <li><a href="#">Apple</a>
					                            </li>
					                            <li class="disabled"><a href="#">Samsung</a>
					                            </li>
					                            <li><a href="#">Nokia</a>
					                            </li>
					                            <li><a href="#">Xiaomi</a>
					                            </li>
					                            <li><a href="#">Oppo</a>
					                            </li>
					                            <li class="divider"></li>
					                            
					                          <li class="dropdown-header"><b>Cpmputers</b></li>
					                            <li><a href="#">HP</a>
					                            </li>
					                            <li><a href="#">DELL</a>
					                            </li>
					                            <li><a href="#">Lenovo</a>
					                            </li>
					                            <li><a href="#">Asus</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                            <li class="dropdown-header"><b>Top Wear</b></li>
				                            <li><a href="#">T-Shirts</a>
				                            </li>
				                            <li><a href="#">T-Shirts</a>
				                            </li>
				                            <li><a href="#">Shirts</a>
				                            </li>
				                            <li><a href="#">Nesting</a>
				                            </li>
				                            <li><a href="#">Vertical variation</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Bottom Wear</b></li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                        	<li class="dropdown-header"><b>Watches</b></li>
				                            <li><a href="#">Basic example</a>
				                            </li>
				                            <li><a href="#">Sizing</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Accessories</b></li>
				                            <li><a href="#">Tabs</a>
				                            </li>
				                            <li><a href="#">Pills</a>
				                            </li>
				                            <li><a href="#">Justified</a>
				                            </li>
				                            <li><a href="#">Justified</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                            <li class="dropdown-header"><b>Seasonal Wear</b></b></li>
				                            <li><a href="#">Default navbar</a>
				                            </li>
				                            <li><a href="#">Buttons</a>
				                            </li>
				                            <li><a href="#">Text</a>
				                            </li>
				                            <li><a href="#">Non-nav links</a>
				                            </li>
				                            <li class="dropdown-header"><b>Accessories</b></li>
				                            <li><a href="#">Component alignment</a>
				                            </li>
				                            <li><a href="#">Fixed to top</a>
				                            </li>
				                            <li><a href="#">Fixed to bottom</a>
				                            </li>
				                            <li><a href="#">Static top</a>
				                            </li>
				                            <li><a href="#">Inverted navbar</a>
				                            </li>
				                        </ul>
				                    </li>
			                    </div>
							</ul>
						</li>
						<li class="dropdown menu-large nav-item"> <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">MEN</a>
		                	<ul class="dropdown-menu megamenu">
		                    	<div class="row">
				                    <li class="col-md-3 dropdown-item">
				                       <ul>
				                            <li class="dropdown-header"><b>Men's Footwear</b></li>
				                            <li><a href="#">Sport Shoes</a>
				                            </li>
				                            <li class="disabled"><a href="#">Casual Shoes</a>
				                            </li>
				                            <li><a href="#">Formal Shoes</a>
				                            </li>
				                            <li><a href="#">Sandal & Floaters</a>
				                            </li>
				                            <li><a href="#">Flip Flops</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Men's Grooming</b></li>
				                            <li><a href="#">Deos</a>
				                            </li>
				                            <li><a href="#">Beard Care and Grooming</a>
				                            </li>
				                            <li><a href="#">Perfumes</a>
				                            </li>
				                            <li><a href="#">Shaving and Aftershave</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                            <li class="dropdown-header"><b>Top Wear</b></li>
				                            <li><a href="#">T-Shirts</a>
				                            </li>
				                            <li><a href="#">T-Shirts</a>
				                            </li>
				                            <li><a href="#">Shirts</a>
				                            </li>
				                            <li><a href="#">Nesting</a>
				                            </li>
				                            <li><a href="#">Vertical variation</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Bottom Wear</b></li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                        	<li class="dropdown-header"><b>Watches</b></li>
				                            <li><a href="#">Basic example</a>
				                            </li>
				                            <li><a href="#">Sizing</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Accessories</b></li>
				                            <li><a href="#">Tabs</a>
				                            </li>
				                            <li><a href="#">Pills</a>
				                            </li>
				                            <li><a href="#">Justified</a>
				                            </li>
				                            <li><a href="#">Justified</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                            <li class="dropdown-header"><b>Seasonal Wear</b></b></li>
				                            <li><a href="#">Default navbar</a>
				                            </li>
				                            <li><a href="#">Buttons</a>
				                            </li>
				                            <li><a href="#">Text</a>
				                            </li>
				                            <li><a href="#">Non-nav links</a>
				                            </li>
				                            <li class="dropdown-header"><b>Accessories</b></li>
				                            <li><a href="#">Component alignment</a>
				                            </li>
				                            <li><a href="#">Fixed to top</a>
				                            </li>
				                            <li><a href="#">Fixed to bottom</a>
				                            </li>
				                            <li><a href="#">Static top</a>
				                            </li>
				                            <li><a href="#">Inverted navbar</a>
				                            </li>
				                        </ul>
				                    </li>
			                    </div>
							</ul>
						</li>
					
						<li class="dropdown menu-large nav-item"> <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">WOMEN</a>
		                	<ul class="dropdown-menu megamenu">
		                    	<div class="row">
				                    <li class="col-md-3 dropdown-item">
				                       <ul>
				                            <li class="dropdown-header"><b>Men's Footwear</b></li>
				                            <li><a href="#">Sport Shoes</a>
				                            </li>
				                            <li class="disabled"><a href="#">Casual Shoes</a>
				                            </li>
				                            <li><a href="#">Formal Shoes</a>
				                            </li>
				                            <li><a href="#">Sandal & Floaters</a>
				                            </li>
				                            <li><a href="#">Flip Flops</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Men's Grooming</b></li>
				                            <li><a href="#">Deos</a>
				                            </li>
				                            <li><a href="#">Beard Care and Grooming</a>
				                            </li>
				                            <li><a href="#">Perfumes</a>
				                            </li>
				                            <li><a href="#">Shaving and Aftershave</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                            <li class="dropdown-header"><b>Top Wear</b></li>
				                            <li><a href="#">T-Shirts</a>
				                            </li>
				                            <li><a href="#">T-Shirts</a>
				                            </li>
				                            <li><a href="#">Shirts</a>
				                            </li>
				                            <li><a href="#">Nesting</a>
				                            </li>
				                            <li><a href="#">Vertical variation</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Bottom Wear</b></li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                            <li><a href="#">Jeans</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                        	<li class="dropdown-header"><b>Watches</b></li>
				                            <li><a href="#">Basic example</a>
				                            </li>
				                            <li><a href="#">Sizing</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li><a href="#">Checkboxes and radio addons</a>
				                            </li>
				                            <li class="divider"></li>
				                            <li class="dropdown-header"><b>Accessories</b></li>
				                            <li><a href="#">Tabs</a>
				                            </li>
				                            <li><a href="#">Pills</a>
				                            </li>
				                            <li><a href="#">Justified</a>
				                            </li>
				                            <li><a href="#">Justified</a>
				                            </li>
				                        </ul>
				                    </li>
				                    <li class="col-md-3 dropdown-item">
				                        <ul>
				                            <li class="dropdown-header"><b>Seasonal Wear</b></b></li>
				                            <li><a href="#">Default navbar</a>
				                            </li>
				                            <li><a href="#">Buttons</a>
				                            </li>
				                            <li><a href="#">Text</a>
				                            </li>
				                            <li><a href="#">Non-nav links</a>
				                            </li>
				                            <li class="dropdown-header"><b>Accessories</b></li>
				                            <li><a href="#">Component alignment</a>
				                            </li>
				                            <li><a href="#">Fixed to top</a>
				                            </li>
				                            <li><a href="#">Fixed to bottom</a>
				                            </li>
				                            <li><a href="#">Static top</a>
				                            </li>
				                            <li><a href="#">Inverted navbar</a>
				                            </li>
				                        </ul>
				                    </li>
			                    </div>
							</ul>
						</li>
			<!-- Megamenu starts -->		
				<li class="dropdown menu-large nav-item"> <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">BABY & KIDS</a>
	                <ul class="dropdown-menu megamenu">
	                    <div class="row">
		                    <li class="col-md-3 dropdown-item">
		                        <ul>
		                            <li class="dropdown-header"><b>Men's Footwear</b></li>
		                            <li><a href="#">Sport Shoes</a>
		                            </li>
		                            <li class="disabled"><a href="#">Casual Shoes</a>
		                            </li>
		                            <li><a href="#">Formal Shoes</a>
		                            </li>
		                            <li><a href="#">Sandal & Floaters</a>
		                            </li>
		                            <li><a href="#">Flip Flops</a>
		                            </li>
		                            <li class="divider"></li>
		                            <li class="dropdown-header"><b>Men's Grooming</b></li>
		                            <li><a href="#">Deos</a>
		                            </li>
		                            <li><a href="#">Beard Care and Grooming</a>
		                            </li>
		                            <li><a href="#">Perfumes</a>
		                            </li>
		                            <li><a href="#">Shaving and Aftershave</a>
		                            </li>
		                        </ul>
		                    </li>
		                    <li class="col-md-3 dropdown-item">
		                        <ul>
		                            <li class="dropdown-header"><b>Top Wear</b></li>
		                            <li><a href="#">T-Shirts</a>
		                            </li>
		                            <li><a href="#">T-Shirts</a>
		                            </li>
		                            <li><a href="#">Shirts</a>
		                            </li>
		                            <li><a href="#">Nesting</a>
		                            </li>
		                            <li><a href="#">Vertical variation</a>
		                            </li>
		                            <li class="divider"></li>
		                            <li class="dropdown-header"><b>Bottom Wear</b></li>
		                            <li><a href="#">Jeans</a>
		                            </li>
		                            <li><a href="#">Jeans</a>
		                            </li>
		                            <li><a href="#">Jeans</a>
		                            </li>
		                            <li><a href="#">Jeans</a>
		                            </li>
		                        </ul>
		                    </li>
		                    <li class="col-md-3 dropdown-item">
		                        <ul>
		                            <li class="dropdown-header"><b>Watches</b></li>
		                            <li><a href="#">Basic example</a>
		                            </li>
		                            <li><a href="#">Sizing</a>
		                            </li>
		                            <li><a href="#">Checkboxes and radio addons</a>
		                            </li>
		                            <li><a href="#">Checkboxes and radio addons</a>
		                            </li>
		                            <li><a href="#">Checkboxes and radio addons</a>
		                            </li>
		                            <li class="divider"></li>
		                            <li class="dropdown-header"><b>Accessories</b></li>
		                            <li><a href="#">Tabs</a>
		                            </li>
		                            <li><a href="#">Pills</a>
		                            </li>
		                            <li><a href="#">Justified</a>
		                            </li>
		                            <li><a href="#">Justified</a>
		                            </li>
		                        </ul>
		                    </li>
		                    <li class="col-md-3 dropdown-item">
		                        <ul>
		                            <li class="dropdown-header"><b>Seasonal Wear</b></b></li>
		                            <li><a href="#">Default navbar</a>
		                            </li>
		                            <li><a href="#">Buttons</a>
		                            </li>
		                            <li><a href="#">Text</a>
		                            </li>
		                            <li><a href="#">Non-nav links</a>
		                            </li>
		                            <li class="dropdown-header"><b>Accessories</b></li>
		                            <li><a href="#">Component alignment</a>
		                            </li>
		                            <li><a href="#">Fixed to top</a>
		                            </li>
		                            <li><a href="#">Fixed to bottom</a>
		                            </li>
		                            <li><a href="#">Static top</a>
		                            </li>
		                            <li><a href="#">Inverted navbar</a>
		                            </li>
		                        </ul>
		                    </li>
		                    </div>
						</ul>
					</li>
					</ul>
				</div>
			</div>
		</nav>

<!-- NAV ENDS -->
	</body>
</html>