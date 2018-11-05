<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Customer" %>
<%@ page import="com.techaspect.entity.Product, java.util.List, java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>Welcome | TechAspect</title>
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

	<%
		if(cart == null){
			response.sendRedirect("index.jsp");
		}
	%>	

	  	
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:14px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h4><b>HOME</b></h4>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item active font-weight-bold">HOME</li>
						<% if(customer!=null){ %>
						<li class="breadcrumb-item"><a href="CustomerAccount.jsp">MY ACCOUNT</a></li>
						<li class="breadcrumb-item"><a href="LogoutProcess.jsp">SIGN OUT</a></li>
						<% }else{ %>
						<li class="breadcrumb-item"><a href="index.jsp">SIGN IN</a></li>
						<li class="breadcrumb-item"><a href="Contact.jsp">CONTACT US</a></li>
						<% } %>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->

<!-- CONTENT STARTS -->	
		<div class="container-fluid mt-5 ml-3">
							
			<!-- CATEGORY 1 -->
		
			<div class="row pt-3 mt-3 homePara1">
				<div class="col-md-6"><h5>New Arrival</h5></div>
				<div class="col-md-6 d-flex justify-content-end"><button class="btn btn-primary btn-sm">VIEW ALL</button></div>
			</div>
		
			
			<div class="row homePara1 pt-4">
			<%
				@SuppressWarnings("unchecked")
				List<Product> productsList= (List<Product>)application.getAttribute("PRODUCTINFO");
					Iterator<Product> iterator = productsList.iterator();
					int count=4;
					while(iterator.hasNext() && count!=0) {
					 	 Product product = iterator.next();
			
			%>
			
			
				<div class="col-md-3 mb-2">
					<a href="#"><img src="images/uploads/vendor/<%= product.getImage1() %>" alt="product1" class="img-responsive" height="320px" width="100%"></a>
					<p class="col-md-12 mt-3 font-weight-bold d-flex justify-content-center"><%= product.getName() %></p>
					<p class="col-md-12 text-secondary d-flex justify-content-center CamSpec">Now ₹<%= product.getPrice() %></p>
					<p class="col-md-12 text-secondary d-flex justify-content-center CamSpec">
						<a class="btn btn-success" href="addCart?id=<%= product.getId() %>&jsp=Home"><i class="fa fa-shopping-cart">&nbsp;Add</i></a>&nbsp;&nbsp;
						<a class="btn btn-danger" href="ProductDescriptionPage.jsp?id=<%= product.getId() %>"><i class="fas fa-eye">&nbsp;View</i></a>
					</p>
				</div>
				
				<% 
						count--;
					}				
				%>
			</div>
			
		
			
			<!-- CATEGORY 2 -->	
			
			<div class="row pt-3 mt-5 homePara1">
				<div class="col-md-6"><h5>Dual Camera Phones</h5></div>
				<div class="col-md-6 d-flex justify-content-end"><button class="btn btn-primary btn-sm">VIEW ALL</button></div>
			</div>
			
			<div class="row homePara1 pt-4">
			
			
			<%
				@SuppressWarnings("unchecked")
				List<Product> productSpec= (List<Product>)application.getAttribute("PRODUCTSPEC");
				for(Product Dproduct : productSpec) {
					if(Dproduct.getIsPrimaryCamera()!=null && Dproduct.getIsSecondaryCamera()!=null) {
						int id = Dproduct.getId();
							for(Product product : productsList) {
								if(product.getId() == id) {
																							
			%>
						
				<div class="col-md-3 mb-2">
					<a href="#"><img src="images/uploads/vendor/<%= product.getImage1() %>" alt="product1" class="img-responsive" height="320px" width="100%"></a>
					<p class="col-md-12 mt-3 font-weight-bold d-flex justify-content-center"><%= product.getName() %></p>
					<p class="col-md-12 text-secondary d-flex justify-content-center CamSpec">Now ₹<%= product.getPrice() %></p>
					<p class="col-md-12 text-secondary d-flex justify-content-center CamSpec">
						<a class="btn btn-success" href="addCart?id=<%= product.getId() %>&jsp=Home"><i class="fa fa-shopping-cart">&nbsp;Add</i></a>&nbsp;&nbsp;
						<a class="btn btn-danger" href="ProductDescriptionPage.jsp?id=<%= product.getId() %>"><i class="fas fa-eye">&nbsp;View</i></a>
					</p>
				</div>
				
			<% }}}} %>
		
			</div>			
		</div>
		
		
		<div class="container-fluid mb-5 ml-3">
			<div class="row pt-3 pl-2 mt-5 homePara1">
				<div class="col-md-6"><h5>Shop By Brand</h5></div>
				<div class="col-md-6 d-flex justify-content-end"><button class="btn btn-primary btn-sm">VIEW ALL</button></div>
			</div>
			
			<div class="row homePara1 py-4">
				<div class="col-md-2 mb-2">
					<a href="SubCategoryPage.jsp"><img src="images/mobiles/apple.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-2 mb-2">
					<a href="SubCategoryPage.jsp"><img src="images/mobiles/samsung.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-2 mb-2">
					<a href="SubCategoryPage.jsp"><img src="images/mobiles/mi.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-2 mb-2">
					<a href="SubCategoryPage.jsp"><img src="images/mobiles/motorola.jpg" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-2 mb-2">
					<a href="SubCategoryPage.jsp"><img src="images/mobiles/oneplus.png" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
				<div class="col-md-2 mb-2">
					<a href="SubCategoryPage.jsp"><img src="images/mobiles/vivo.png" class="img-responsive" alt="product2" height="180" width="80%"></a>
				</div>
			</div>
		</div>	
<!-- CONTENT ENDS -->	

		
<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->

<!-- JAVASCRIPT CODE -->
		<script type="text/javascript" src="js/FormValidation.js"></script>
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		
	</body>
</html>