<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Vendor" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>Add New product</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/common.css">
		
	</head>
	<body>
	
	
	<% 
		Vendor vendor = (Vendor)session.getAttribute("VENDOR");
		if(vendor == null){
			response.sendRedirect("VendorLoginForm.jsp");
		}
	%>
<!-- NAV 1 -->

	   		<nav class="navbar bg-dark" style="font-size:12px">
  			<div class="container-fluid">
  				<div class="col-md-6 col-sm-12 d-flex justify-content-center">
   					<div class="navbar-brand">
     					<p class="navbar-text" style="color:#E0E0E0; font-size:12px">
     						<strong>Contact us on +91 40 66217777</strong>
     					</p>
    				</div>
    			</div>
    			
    			<div class="col-md-6 col-sm-12 d-flex justify-content-center">
    				<ul class="nav">
    					<div class="col-md-8 col-xs-12 col-sm-12 d-flex justify-content-center">
    						<li class="nav-item">
								<a class="nav-link" href="#" style="color:#E0E0E0">Welcome <%= vendor.getFirstName() %></a>
							</li>
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
    						<li class="nav-item">
					      		<a class="nav-link" href="VendorLogoutProcess.jsp" style="color:#E0E0E0"><i class="fa fa-sign-out"></i></a>
					   		</li>
				    	</div>
  					</ul>
  				</div>
 			</div>
		</nav>	
		
<!-- NAV 2 -->
		<nav class="navbar navbar-expand-lg navbar-light" style="font-size:12px">
	      	<a class="navbar-brand"><img src="images/logo.png" alt="TechAspect"></a>
      		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navDropdown" aria-controls="navDropdown" aria-expanded="false" aria-label="Toggle navigation">
    			<span class="navbar-toggler-icon"></span>
  			</button>
  			<div class="collapse navbar-collapse" id="navDropdown">
   				<ul class="navbar-nav ml-auto">
     				<li class="nav-item dropdown">
       					<a class="nav-link dropdown-toggle" id="ElectronicsDropdown" data-toggle="dropdown" role="button" href="#" aria-haspopup="true" aria-expanded="false">ELECTRONICS</a>
       					 <div class="dropdown-menu" aria-labelledby="ElectronicsDropdown">
         					 <a class="dropdown-item" href="#">AC</a>
          					 <a class="dropdown-item" href="#">TV</a>
          					 <a class="dropdown-item" href="#">FRIDGE</a>
        				</div>
     				</li>
     				<li class="nav-item dropdown">
       					<a class="nav-link dropdown-toggle" id="MenDropdown" data-toggle="dropdown" role="button" href="#" aria-haspopup="true" aria-expanded="false">MEN</a>
       					 <div class="dropdown-menu" aria-labelledby="MenDropdown">
         					 <a class="dropdown-item" href="#">FOOTWEAR</a>
          					 <a class="dropdown-item" href="#">CLOTHS</a>
          					 <a class="dropdown-item" href="#">BAGPACKS</a>
        				</div>
     				</li>
     				<li class="nav-item dropdown">
       					<a class="nav-link dropdown-toggle" id="WomenDropdown" data-toggle="dropdown" role="button" href="#" aria-haspopup="true" aria-expanded="false">WOMEN</a>
       					 <div class="dropdown-menu" aria-labelledby="WomenDropdown">
         					 <a class="dropdown-item" href="#">GOLGAPPAS</a>
          					 <a class="dropdown-item" href="#">ICE CREAM</a>
          					 <a class="dropdown-item" href="#">NAIL PAINT</a>
        				</div>
     				</li>
     				<li class="nav-item dropdown">
       					<a class="nav-link dropdown-toggle" id="BabyDropdown" data-toggle="dropdown" role="button" href="#" aria-haspopup="true" aria-expanded="false">BABY & KIDS</a>
       					 <div class="dropdown-menu" aria-labelledby="BabyDropdown">
         					 <a class="dropdown-item" href="#">CLOTHS</a>
          					 <a class="dropdown-item" href="#">TOYS</a>
          					 <a class="dropdown-item" href="#">FOOTWEAR</a>
        				</div>
     				</li>
     				<li class="nav-item dropdown">
       					<a class="nav-link dropdown-toggle" id="FurnitureDropdown" data-toggle="dropdown" role="button" href="#" aria-haspopup="true" aria-expanded="false">HOME & FURNITURE</a>
       					 <div class="dropdown-menu" aria-labelledby="FurnitureDropdown">
         					 <a class="dropdown-item" href="#">MATTRESS</a>
          					 <a class="dropdown-item" href="#">CURTAIN</a>
          					 <a class="dropdown-item" href="#">PILLOW</a>
        				</div>
     				</li>
   				</ul>
 			</div>	
		</nav>
		
<!-- NAV 3 -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-4 col-xs-12 col-sm-12 d-flex justify-content-center offset-md-8">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="VendorHomePage.jsp">HOME</a></li>
						<li class="breadcrumb-item"><a href="ProductList.jsp">PRODUCT LIST</a></li>
						<li class="breadcrumb-item"><a href="Contact.jsp">CONTACT US</a></li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- NAV ENDS -->

<!-- CONTENT STARTS -->
				<div class="container">
					<div class="row">
						<div class="col-md-4 offset-md-4">
							<form action="addProduct" method="POST" class="text-secondary" enctype="multipart/form-data">
							
								<%
		        						
										String flag = (String)session.getAttribute("FAIL");
		        						if(flag != null){
	        					%>
	        								<div class="row text-danger d-flex justify-content-center">
	        									<h4>Something went wrong! Please try again..</h4>
	        								</div>
	        					<%
	        							} session.removeAttribute("FAIL");
	        					%>
							
							
							
								<div class="form-group">
			        				<label for="name">Name</label>
			   						<input type="text" class="form-control" name="name">
			        			</div>
			        			<div class="form-group">
			        				<label for="price">Price</label>
			   						<input type="text" class="form-control" name="price">
			        			</div>
							
							
								<div class="form-group">
									  <select name="quantity" class="custom-select-lg text-bold">
									    <option selected>Quantity</option>
									    <option value="1">1</option>
									    <option value="2">2</option>
									    <option value="3">3</option>
									    <option value="4">4</option>
									    <option value="5">5</option>
									  </select>
								</div>
								<div class="form-group">
			        				<label for="description">Description</label>
	  								<textarea class="form-control" rows="3" name="description"></textarea>
		  						</div>
		  						<hr>
		  						<div class="text-secondary d-flex justify-content-center font-weight-bold">Upload images</div>
		  						<hr>
	  							<div class="custom-file">
								    <input type="file" class="form-control-file border" name="image1">									
								 </div>
								 <div class="custom-file mt-4">
								    <input type="file" class="form-control-file border" name="image2">
								
								 </div>
								<div class="custom-file mt-4">
								    <input type="file" class="form-control-file border" name="image3">
									
								 </div>
								<div class="custom-file mt-4">
								    <input type="file" class="form-control-file border" name="image4">
									
								 </div>
								 <div class="custom-file mt-4">
								    <input type="file" class="form-control-file border" name="image5">
									
								 </div>
									 
								<div class="row form-group mt-5">
			        				<div class="col-md-12 d-flex justify-content-center">
			        					<button class="button button1" name="addProduct">
			        						<span class="glyphicon glyphicon-save-file"></span>&nbsp;ADD
			        					</button>
			        				</div>
				        		</div>
							</form>
						</div>
					</div>
				</div>







<!-- CONTENT ENDS -->


<!-- FOOTER ONE STARTS -->

		<div class="container-fluid text-white bg-dark">	        
	        <div class="row" id="footer1">
	        		
	  <!-- ABOUT US -->
	        	<div class="col-md-3 offset-md-1">
	        		<h4>ABOUT US</h4>
	        		<p style="color:#A9A9A9; font-size:14px">if you have any question, please feel free to 
	        			<a href="#" style="color:#20B2AA">contact us</a>,
	        			our customer care service center is working for you 24/7.
	        		</p>
	        		<p style="color:white; font-size:12px">JOIN OUR MONTHLY NEWSLETTER</p>
	        		<form action="#" method="POST">
  						<div class="input-group">
    						<input type="text" class="form-control" placeholder="Search">
    						<div class="input-group-btn">
      							<button class="btn btn-default" type="submit">
        							<i class="fa fa-send"></i>
      							</button>
    						</div>
  						</div>
					</form>
	        	</div>
		        	
		<!-- BLOG -->
		        	
	        	<div class="col-md-2">
	        		<div style="margin-left:14px">
	        			<h4>BLOG</h4>
	        		</div>
	        		<div class="row d-flex justify-content-center" style="font-size:12px">
	        			<p><img src="images/detailsquare1.jpg" width="50" height="50"> BLOG POST ONE</p> 
	        		</div>
	        		<div class="row d-flex justify-content-center" style="font-size:12px">
	        			<p><img src="images/detailsquare2.jpg" width="50" height="50"> BLOG POST TWO</p> 
	        		</div>
	        		<div class="row d-flex justify-content-center" style="font-size:12px">
	        			<p><img src="images/detailsquare3.jpg" width="50" height="50"> BLOG POST THREE</p>
	        		</div>
	        	</div>
		        	
       	<!-- CONTACT-->
	        	
	        	<div class="col-md-2" id="footerContact">
	        		<h4>CONTACT</h4>
	        		<p style="color:#A9A9A9; font-size:13px">TECHASPECT SOLUTIONS PVT. LTD.<br>PLOT NO. 38, N-HEIGHTS, 3RD FLOOR
	        		HITEC CITY PHASE 2,<br>HYDERABAD,<br>TELANGANA-500081<br>INDIA</hp>
	        		<br>
	        		<a href="Contact.jsp" type="button" class="btn btn-info" style="font-size:12px">GO TO CONTACT PAGE</a>
	        	</div>
		        	
       	<!-- GALLERY -->
		        	
	        	<div class="col-md-3">
	        		<div class="row d-flex justify-content-center" style="margin-bottom:10px;">
   						<div style="margin-right:10px;">
      		 				<a href="#">
        						<img src="images/detailsquare2.jpg" width="70px" height="70px">
       						</a>
   						</div>
   						<div style="margin-right:10px;">
      		 				<a href="#">
        						<img src="images/detailsquare1.jpg" width="70px" height="70px">
       						</a>
   						</div>
   						<div>
      		 				<a href="#">
        						<img src="images/detailsquare3.jpg" width="70px" height="70px">
       						</a>
   						</div>
	        		</div>
	        		
	        		<div class="row d-flex justify-content-center">
   						<div  style="margin-right:10px;">
      		 				<a href="#">
        						<img src="images/detailsquare3.jpg" width="70px" height="70px">
       						</a>
   						</div>
   						<div  style="margin-right:10px;">
      		 				<a href="#">
        						<img src="images/detailsquare1.jpg" width="70px" height="70px">
       						</a>
   						</div>
   						<div>
      		 				<a href="#">
        						<img src="images/detailsquare2.jpg" width="70px" height="70px">
       						</a>
   						</div>
	        		</div>
	        		<div class="row d-flex justify-content-center" style="margin-bottom:10px;">
   						<div style="margin-right:10px;">
      		 				<a href="#">
        						<img src="images/detailsquare2.jpg" width="70px" height="70px">
       						</a>
   						</div>
   						<div style="margin-right:10px;">
      		 				<a href="#">
        						<img src="images/detailsquare1.jpg" width="70px" height="70px">
       						</a>
   						</div>
   						<div>
      		 				<a href="#">
        						<img src="images/detailsquare3.jpg" width="70px" height="70px">
       						</a>
   						</div>
	        		</div>		
       			</div>
	       	</div>
	      </div>
	   
<!-- FOOTER ONE ENDS -->	    
	        
<!-- FOOTER TWO STARTS -->
	    
		    <div class="row" id="footer2">
		    	<div class="container" >
		 			<div class="col-md-12"><p style="font-size:14px">@2018 TechAspect Solutions Private Limited</div>
		 		</div>
		    </div>      
<!-- FOOTER TWO ENDS -->


<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>