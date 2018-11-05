<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Vendor, com.techaspect.entity.Product, java.util.ArrayList, java.util.List" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>Edit Product</title>
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
		if(vendor == null){
			response.sendRedirect("VendorLoginForm.jsp");
		}
	%>

		
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b>NEW PRODUCT</b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="VendorHomePage.jsp">HOME</a></li>
						<li class="breadcrumb-item"><a href="#">ELECTRONICS</a></li>
						<li class="breadcrumb-item"><a href="SubCategoryPage.jsp">MOBILES</a></li>
						<li class="breadcrumb-item active font-weight-bold">NEW PRODUCT</li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->


				
						
						
						
						<%	
							
						  	int product_index = Integer.parseInt(request.getParameter("id"));
						
							@SuppressWarnings("unchecked")					
						  	List<Product> productInformationList = (List<Product>)application.getAttribute("PRODUCTINFO"); 
						  		Product productInfo = productInformationList.get(product_index);
						  		
						  	@SuppressWarnings("unchecked")					
		        			List<Product> productDescriptionList = (List<Product>)application.getAttribute("PRODUCTDESC"); 
		        				Product productDesc = productDescriptionList.get(product_index);
		        				
		        			@SuppressWarnings("unchecked")					
		        			List<Product> productSpecificationList = (List<Product>)application.getAttribute("PRODUCTSPEC"); 
		        		        Product productSpec = productSpecificationList.get(product_index);
		        								
		        								
						%>	






<!--  CONTENT STARTS -->
		<div class="p-2 mb-2 text-center bg-danger text-white"><h4><b>EDIT PRODUCT</b></h4></div>
		<div class="container my-5">
			<h6 class="text-dark">Product ID : <%= productInfo.getId() %></h6>
			<hr>
			<form class="text-daek font-weight-bold" action="editProductForm?id=<%= productInfo.getId() %>" method="POST" enctype="multipart/form-data">
			
							<%        						
								String flag = request.getParameter("EDITSTATUS");
      							if(flag != null){
     						%>
     								<div class="row alert alert-danger d-flex justify-content-center">
		        						<p>Something went wrong! Please try again...</p>
		        					</div>
     						<%
     							}
     						%>
						
					
				<div class="row my-5 text-dark">
					<div class="col-md-12"><h5><b>GENERAL INFORMATION</b></h5></div>
				</div>
				<div class="row">				
					<div class="col-md-4 form-group">
        				<label for="name">Name</label>
   						<input type="text" class="form-control" name="name" value="<%= productInfo.getName() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="price">Price in Rs</label>
   						<input type="text" class="form-control" name="price" value="<%= productInfo.getPrice() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sdesc">Short Description</label>
  						<textarea class="form-control" rows="2" name="sdesc"><%= productInfo.getSDesc() %></textarea>
		        	</div>					
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<select name="category" class="custom-select custom-select-lg text-bold" style="font-size:13px">
						    <option selected>Electronics</option>
						    <option value="1">Electronics</option>
						    <option value="2">Men</option>
						    <option value="3">Women</option>
						    <option value="4">Kids</option>
						    <option value="5">Home & Furniture</option>
						 </select>
					</div>
					<div class="col-md-6 form-group">
						<select name="subCategory" class="custom-select-lg custom-select text-bold" style="font-size:13px">
						    <option selected>Mobile</option>
						    <option value="Mobile">Mobile</option>
						    <option value="2">2</option>
						    <option value="3">3</option>
						    <option value="4">4</option>
						    <option value="5">5</option>
						 </select>
					</div>
				</div>
				<div class="row" style="font-size:12px">	
					<div class="col-md-4 form-group">
        				<label for="quantity">Quantity</label>
   						<input type="text" class="form-control" name="quantity" value="<%= productInfo.getQuantity() %>">
		        	</div>        						
				</div>			
				<div class="row my-5" style="font-size:12px">
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
		  						<img src="images/uploads/vendor/<%= productInfo.getImage1() %>" class="img-responsive" width="60%" height="100">
		  					</div>
  							<div class="custom-file col-md-6">
  								<input type="hidden" name="cimage1" value="<%= productInfo.getImage1() %>">
							    <input type="file" class="form-control-file border" name="image1">
							    <label class="form-control-file" for="customFile">Change image</label>
							 </div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
		  						<img src="images/uploads/vendor/<%= productInfo.getImage2() %>" class="img-responsive" width="60%" height="100">
		  					</div>
  							<div class="custom-file col-md-6">
  								<input type="hidden" name="cimage2" value="<%= productInfo.getImage2() %>">
							    <input type="file" class="form-control-file border" name="image2">
							    <label class="form-control-file" for="customFile">Change image</label>
							 </div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
		  						<img src="images/uploads/vendor/<%= productInfo.getImage3() %>" class="img-responsive" width="60%" height="100">
		  					</div>
  							<div class="custom-file col-md-6">
  								<input type="hidden" name="cimage3" value="<%= productInfo.getImage3() %>">
							    <input type="file" class="form-control-file border" name="image3">
							    <label class="form-control-file" for="customFile">Change image</label>
							 </div>
						</div>
					</div>							
				</div>
				<div class="row my-5" style="font-size:12px">
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
		  						<img src="images/uploads/vendor/<%= productInfo.getImage4() %>" class="img-responsive" width="60%" height="100">
		  					</div>
  							<div class="custom-file col-md-6">
  								<input type="hidden" name="cimage4" value="<%= productInfo.getImage4() %>">
							    <input type="file" class="form-control-file border" name="image4">
							    <label class="form-control-file" for="customFile">Change image</label>
							 </div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-6">
		  						<img src="images/uploads/vendor/<%= productInfo.getImage5() %>" class="img-responsive" width="60%" height="100">
		  					</div>
  							<div class="custom-file col-md-6">
  								<input type="hidden" name="cimage5" value="<%= productInfo.getImage5() %>">
							    <input type="file" class="form-control-file border" name="image5">
							    <label class="form-control-file" for="customFile">Change image</label>
							 </div>
						</div>
					</div>							
				</div>
				<hr>
				
				
				<div class="row my-5 text-dark">
					<div class="col-md-12"><h5><b>PRODUCT DESCRIPTION</b></h5></div>
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc1">Description 1</label>
   						<input type="text" class="form-control" name="desc1" value="<%= productDesc.getDESC1() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent1">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent1"><%= productDesc.getDContent1() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc2">Description 2</label>
   						<input type="text" class="form-control" name="desc2" value="<%= productDesc.getDESC2() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent2">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent2"><%= productDesc.getDContent2() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc3">Description 3</label>
   						<input type="text" class="form-control" name="desc3" value="<%= productDesc.getDESC3() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent3">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent3"><%= productDesc.getDContent3() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc4">Description 4</label>
   						<input type="text" class="form-control" name="desc4" value="<%= productDesc.getDESC4() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent4">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent4"><%= productDesc.getDContent4() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc5">Description 5</label>
   						<input type="text" class="form-control" name="desc5" value="<%= productDesc.getDESC5() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent5">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent5"><%= productDesc.getDContent5() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc6">Description 6</label>
   						<input type="text" class="form-control" name="desc6" value="<%= productDesc.getDESC6() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent6">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent6"><%= productDesc.getDContent6() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc7">Description 7</label>
   						<input type="text" class="form-control" name="desc7" value="<%= productDesc.getDESC7() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent7">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent7"><%= productDesc.getDContent7() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc8">Description 8</label>
   						<input type="text" class="form-control" name="desc8" value="<%= productDesc.getDESC8() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent8">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent8"><%= productDesc.getDContent8() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc9">Description 9</label>
   						<input type="text" class="form-control" name="desc9" value="<%= productDesc.getDESC9() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent9">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent9"><%= productDesc.getDContent9() %></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc10">Description 10</label>
   						<input type="text" class="form-control" name="desc10" value="<%= productDesc.getDESC10() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent10">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent10"><%= productDesc.getDContent10() %></textarea>
		        	</div>				
				</div>
				<hr>
				<div class="row mt-5 text-dark">
					<div class="col-md-12"><h5><b>PRODUCT SPECIFICATION</b></h5></div>
				</div>
				<hr>
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>GENERAL</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="inBox">In the Box</label>
   						<input type="text" class="form-control" name="inBox" value="<%= productSpec.getInBox() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="modelNo">Model Number</label>
   						<input type="text" class="form-control" name="modelNo" value="<%= productSpec.getModelNo() %>">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="modelName">Model Name</label>
   						<input type="text" class="form-control" name="modelName" value="<%= productSpec.getModelName() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="color">Color</label>
   						<input type="text" class="form-control" name="color" value="<%= productSpec.getColor() %>">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="browseType">Browse Type</label>
   						<input type="text" class="form-control" name="browseType" value="<%= productSpec.getBrowseType() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="simType">SIM Type</label>
   						<input type="text" class="form-control" name="simType" value="<%= productSpec.getSimType() %>">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="touchScreen">Touch Screen</label>
   						<input type="text" class="form-control" name="touchScreen" value="<%= productSpec.getTouchScreen() %>">
		        	</div>				
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>DISPLAY FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="displaySize">Disply Size</label>
   						<input type="text" class="form-control" name="displaySize" value="<%= productSpec.getDisplaySize() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="name">Resolution</label>
   						<input type="resolution" class="form-control" name="resolution" value="<%= productSpec.getResolution() %>">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="resolutionType">Resolution Type</label>
   						<input type="text" class="form-control" name="resolutionType" value="<%= productSpec.getResolutionType() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="displayType">Display Type</label>
   						<input type="text" class="form-control" name="displayType" value="<%= productSpec.getDisplayType() %>">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="displayColor">Display Color</label>
   						<input type="text" class="form-control" name="displayColor" value="<%= productSpec.getDisplayColor() %>">
		        	</div>					
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>OS & PROCESSOR FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="os">Operating System</label>
   						<input type="text" class="form-control" name="os" value="<%= productSpec.getOS() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="processorType">Processor Type</label>
   						<input type="text" class="form-control" name="processorType" value="<%= productSpec.getProcessorType() %>">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="processorCore">Processor Core</label>
   						<input type="text" class="form-control" name="processorCore" value="<%= productSpec.getProcessorType() %>">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="pClock">Primary Clock Speed</label>
   						<input type="text" class="form-control" name="pClock" value="<%= productSpec.getPrimaryClock() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sClock">Secondary Clock Speed</label>
   						<input type="text" class="form-control" name="sClock" value="<%= productSpec.getSecondaryClock() %>">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="operatingFreq">Operating Frequency</label>
   						<input type="text" class="form-control" name="operatingFreq" value="<%= productSpec.getOperatingFrequency() %>">
		        	</div>					
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>MEMORY & STORAGE FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="iStorage">Internal Storage</label>
   						<input type="text" class="form-control" name="iStorage" value="<%= productSpec.getInternalStorage() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="ram">RAM</label>
   						<input type="text" class="form-control" name="ram" value="<%= productSpec.getRAM() %>">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="eStorage">Expandable Storage</label>
   						<input type="text" class="form-control" name="eStorage" value="<%= productSpec.getExternalStorage() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="memoryCard">Supported Memory Card Type</label>
   						<input type="text" class="form-control" name="memoryCard" value="<%= productSpec.getMemoryCard() %>">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="cLog">Call Log Memory</label>
   						<input type="text" class="form-control" name="cLog" value="<%= productSpec.getCallLog() %>">
		        	</div>					
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>CAMERA FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="isPCamera">Primary Camera Available</label>
   						<input type="text" class="form-control" name="isPCamera" value="<%= productSpec.getIsPrimaryCamera() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="pCamera">Primary Camera</label>
   						<input type="text" class="form-control" name="pCamera" value="<%= productSpec.getPrimaryCamera() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="pCameraFeature">Primary Camera Features</label>
  						<textarea class="form-control" rows="2" name="pCameraFeature"><%= productSpec.getPrimaryCameraFeature() %></textarea>
		        	</div>			
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="isSCamera">Secondary Camera Available</label>
   						<input type="text" class="form-control" name="isSCamera" value="<%= productSpec.getIsSecondaryCamera() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sCamera">Secondary Camera</label>
   						<input type="text" class="form-control" name="sCamera" value="<%= productSpec.getSecondaryCamera() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sCameraFeature">Secondary Camera Features</label>
  						<textarea class="form-control" rows="2" name="sCameraFeature"><%= productSpec.getSecondaryCameraFeature() %></textarea>
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="flash">Flash</label>
   						<input type="text" class="form-control" name="flash" value="<%= productSpec.getFlash() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="HDrecording">HD Recording</label>
   						<input type="text" class="form-control" name="HDrecording" value="<%= productSpec.getHDRecording() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="FHDrecording">Full HD Recording</label>
   						<input type="text" class="form-control" name="FHDrecording" value="<%= productSpec.getFullHDRecording() %>">
		        	</div>		
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="vRecording">Video Recording</label>
   						<input type="text" class="form-control" name="vRecording" value="<%= productSpec.getVideoRecording() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="vRecordingResolution">Video Recording Resolution</label>
   						<input type="text" class="form-control" name="vRecordingResolution" value="<%= productSpec.getVideoRecordingResolution() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="frameRate">Frame Rate</label>
   						<input type="text" class="form-control" name="frameRate" value="<%= productSpec.getFrameRate() %>">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>CALL FEATURES</b></h6></div>
					<div class="col-md-4 form-group">
        				<label for="phonebook">Phone Book</label>
   						<input type="text" class="form-control" name="phonebook" value="<%= productSpec.getPhoneBook() %>">
		        	</div>	
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>CONNECTIVITY FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="nType">Network Type</label>
   						<input type="text" class="form-control" name="nType" value="<%= productSpec.getNetworkType() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sNet">Supported Networks</label>
   						<input type="text" class="form-control" name="sNet" value="<%= productSpec.getSupportNetwork() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="iCon">Internet Connectivity</label>
  						<input type="text" class="form-control" name="iCon" value="<%= productSpec.getInternetConnectivity() %>">
		        	</div>			
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="threeG">3G</label>
   						<input type="text" class="form-control" name="threeG" value="<%= productSpec.getThreeG() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="gprs">GPRS</label>
   						<input type="text" class="form-control" name="gprs" value="<%= productSpec.getGPRS() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="pBrowser">Pre Installed Browser</label>
  						<input type="text" class="form-control" name="pBrowser" value="<%= productSpec.getPreInstalledBrowser() %>">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="bSupport">Bluetooth Support</label>
   						<input type="text" class="form-control" name="bSupport" value="<%= productSpec.getBluetoothSupport() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="bVersion">Bluetooth Version</label>
   						<input type="text" class="form-control" name="bVersion" value="<%= productSpec.getBluetoothVersion() %>">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="wifi">Wi-Fi</label>
  						<input type="text" class="form-control" name="wifi" value="<%= productSpec.getWiFi() %>">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-3 form-group">
        				<label for="wifiVersion">Wi-Fi Version</label>
   						<input type="text" class="form-control" name="wifiVersion" value="<%= productSpec.getWiFiVersion() %>">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="nfc">NFC</label>
   						<input type="text" class="form-control" name="nfc" value="<%= productSpec.getNFC() %>">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="usb">USB Connectivity</label>
  						<input type="text" class="form-control" name="usb" value="<%= productSpec.getUSB() %>">
		        	</div>	
		        	<div class="col-md-3 form-group">
        				<label for="audio">Audio Jack</label>
  						<input type="text" class="form-control" name="audio" value="<%= productSpec.getAudio() %>">
		        	</div>				
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>OTHER DETAILS</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-3 form-group">
        				<label for="sPhone">Smart Phone</label>
   						<input type="text" class="form-control" name="sPhone" value="<%= productSpec.getSmartPhone() %>">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="simSize">Sim Size</label>
   						<input type="text" class="form-control" name="simSize" value="<%= productSpec.getSimSize() %>">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="removableB">Removable battery</label>
  						<input type="text" class="form-control" name="removableB" value="<%= productSpec.getRemovableBattery() %>">
		        	</div>	
		        	<div class="col-md-3 form-group">
        				<label for="sms">SMS</label>
  						<input type="text" class="form-control" name="sms" value="<%= productSpec.getSMS() %>">
		        	</div>			
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="sensor">Sensors</label>
   						<textarea class="form-control" rows="2" name="sensor"><%= productSpec.getSensors() %></textarea>
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="otherF">Other Features</label>
   						<textarea class="form-control" rows="2" name="otherF"><%= productSpec.getOtherFeatures() %></textarea>
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="iApps">Important Apps</label>
  						<input type="text" class="form-control" name="iApps" value="<%= productSpec.getInstalledApps() %>">
		        	</div>			
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>MULTIMEDIA FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="audioFormat">Audio Formats</label>
   						<input type="text" class="form-control" name="audioFormat" value="<%= productSpec.getAudioFormat() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="vidoeFormat">Video Formats</label>
   						<input type="text" class="form-control" name="vidoeFormat" value="<%= productSpec.getAudioFormat() %>">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h5><b>BATTERY & POWER FEATURES</b></h5></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="bCapacity">Battery Capacity</label>
   						<input type="text" class="form-control" name="bCapacity" value="<%= productSpec.getBatteryCapacity() %>">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="bType">Battery Type</label>
   						<input type="text" class="form-control" name="bType" value="<%= productSpec.getBatteryType() %>">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>DIMENSIONS</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-3 form-group">
        				<label for="width">Width</label>
   						<input type="text" class="form-control" name="width" value="<%= productSpec.getWidth() %>">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="height">Height</label>
   						<input type="text" class="form-control" name="height" value="<%= productSpec.getHeight() %>">
		        	</div>
		        	<div class="col-md-3 form-group">
        				<label for="depth">Depth</label>
   						<input type="text" class="form-control" name="depth" value="<%= productSpec.getDepth() %>">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="weight">Weight</label>
   						<input type="text" class="form-control" name="weight" value="<%= productSpec.getWeight() %>">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>WARRANTY</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-12 form-group">
        				<label for="warranty">Warranty Summary</label>
   						<textarea class="form-control" rows="3" name="warranty"><%= productSpec.getWarranty() %></textarea>
		        	</div>		
				</div>
				<div class="row d-flex justify-content-center">
					<button class="button button1" name="editProductForm"><i class="fa fa-save"></i>&nbsp;Update Details</button>
				</div>

			</form>
		</div>
<!--  CONTENT ENDS -->

<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->

<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>