<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Vendor, com.techaspect.entity.Product, java.util.ArrayList, java.util.Iterator, java.util.List" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>Product list</title>
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
		if(vendor== null){
			response.sendRedirect("VendorLoginForm.jsp");
		}
	%>

<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>PRODUCT LIST</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="VendorHomePage.jsp">HOME</a></li>
						<li class="breadcrumb-item active font-weight-bold">PRODUCT LIST</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->


<!-- CONTENT STARTS -->
		<div class="p-2 mb-2 text-center bg-secondary text-white"><h5>Product list</h5></div>
				<div class="container">
					 <div class="table-responsive-lg" style="font-size:16px">
					    <table class="table">
					      <thead>
					        <tr>
					          <th>S.N</th>
					          <th>Name</th>
					          <th>Price</th>
					          <th>Quantity</th>
					          <th>Description</th>
					          <th>Edit</th>
					          <th>Delete</th>
					        </tr>
					      </thead>
					      <tbody>
					      
					    <%
					    	List<Product> productInformationList = (ArrayList<Product>)application.getAttribute("PRODUCTINFO");
							
								Iterator<Product> iterator = productInformationList.iterator();
					  			while(iterator.hasNext()) {
					  				Product product = iterator.next();
					  				if(product.getVendorId() == vendor.getId()){
					  					int index = productInformationList.indexOf(product);
									
					    		
					    %>  
							        <tr class="text-secondary">
							          <td class="text-dark"><b><%= index+1 %></b></td>
							          <td><%= product.getName() %></td>
							          <td>₹<%= product.getPrice() %></td>
							          <td><%= product.getQuantity() %></td>
							          <td><%= product.getSDesc() %></td>
							          <td><a href="EditProduct.jsp?id=<%= index %>"><i class="fa fa-pencil-square-o"></i></a></td>
							          <td><a href="deleteProduct?id=<%= product.getId() %>&index=<%= index %>"><i class="fa fa-trash"></i></a></td>
							        </tr>
							        
						 	<% }} %>
					      </tbody>
					    </table>
					  </div>
				</div>
				






<!-- CONTENT ENDS -->


<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->

<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>