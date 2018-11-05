<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Vendor" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title>Add New product</title>
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

<!--  CONTENT STARTS -->
		<div class="container my-5">
			<h6 class="text-secondary"><i>Add a new product to your inventory</i></h6>
			<hr>
			<form class="text-daek font-weight-bold" action="addNewProduct" method="POST" enctype="multipart/form-data">
			
						<%        						
							String flag = (String)request.getAttribute("ADDSTATUS");
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
   						<input type="text" class="form-control" name="name">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="price">Price in Rs</label>
   						<input type="text" class="form-control" name="price">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sdesc">Short Description</label>
  						<textarea class="form-control" rows="2" name="sdesc"></textarea>
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
						    <option selected>Sub Category</option>
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
   						<input type="text" class="form-control" name="quantity">
		        	</div>
		       		<div class="col-md-4 custom-file">
        				<label for="image1">Image 1</label>
   						<input type="file" class="form-control-file border" name="image1">
		        	</div>
					<div class="col-md-4 custom-file">
        				<label for="image2">Image 2</label>
   						<input type="file" class="form-control-file border" name="image2">
		        	</div>	        						
				</div>			
				<div class="row my-5" style="font-size:12px">	
					<div class="col-md-4 custom-file">
        				<label for="image3">Image 3</label>
   						<input type="file" class="form-control-file border" name="image3">
		        	</div>
		       		<div class="col-md-4 custom-file">
        				<label for="image4">Image 4</label>
   						<input type="file" class="form-control-file border" name="image4">
		        	</div>
					<div class="col-md-4 custom-file">
        				<label for="image5">Image 5</label>
   						<input type="file" class="form-control-file border" name="image5">
		        	</div>					
				</div>
				<hr>
				
				
				<div class="row my-5 text-dark">
					<div class="col-md-12"><h5><b>PRODUCT DESCRIPTION</b></h5></div>
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc1">Description 1</label>
   						<input type="text" class="form-control" name="desc1">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent1">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent1"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc2">Description 2</label>
   						<input type="text" class="form-control" name="desc2">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent2">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent2"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc3">Description 3</label>
   						<input type="text" class="form-control" name="desc3">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent3">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent3"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc4">Description 4</label>
   						<input type="text" class="form-control" name="desc4">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent4">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent4"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc5">Description 5</label>
   						<input type="text" class="form-control" name="desc5">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent5">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent5"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc6">Description 6</label>
   						<input type="text" class="form-control" name="desc6">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent6">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent6"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc7">Description 7</label>
   						<input type="text" class="form-control" name="desc7">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent7">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent7"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc8">Description 8</label>
   						<input type="text" class="form-control" name="desc8">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent8">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent8"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc9">Description 9</label>
   						<input type="text" class="form-control" name="desc9">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent9">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent9"></textarea>
		        	</div>				
				</div>
				<div class="row">				
					<div class="col-md-6 form-group">
        				<label for="desc10">Description 10</label>
   						<input type="text" class="form-control" name="desc10">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="dContent10">Description Content</label>
  						<textarea class="form-control" rows="2" name="dContent10"></textarea>
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
   						<input type="text" class="form-control" name="inBox">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="modelNo">Model Number</label>
   						<input type="text" class="form-control" name="modelNo">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="modelName">Model Name</label>
   						<input type="text" class="form-control" name="modelName">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="color">Color</label>
   						<input type="text" class="form-control" name="color">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="browseType">Browse Type</label>
   						<input type="text" class="form-control" name="browseType">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="simType">SIM Type</label>
   						<input type="text" class="form-control" name="simType">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="touchScreen">Touch Screen</label>
   						<input type="text" class="form-control" name="touchScreen">
		        	</div>				
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>DISPLAY FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="displaySize">Disply Size</label>
   						<input type="text" class="form-control" name="displaySize">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="name">Resolution</label>
   						<input type="resolution" class="form-control" name="resolution">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="resolutionType">Resolution Type</label>
   						<input type="text" class="form-control" name="resolutionType">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="displayType">Display Type</label>
   						<input type="text" class="form-control" name="displayType">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="displayColor">Display Color</label>
   						<input type="text" class="form-control" name="displayColor">
		        	</div>					
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>OS & PROCESSOR FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="os">Operating System</label>
   						<input type="text" class="form-control" name="os">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="processorType">Processor Type</label>
   						<input type="text" class="form-control" name="processorType">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="processorCore">Processor Core</label>
   						<input type="text" class="form-control" name="processorCore">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="pClock">Primary Clock Speed</label>
   						<input type="text" class="form-control" name="pClock">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sClock">Secondary Clock Speed</label>
   						<input type="text" class="form-control" name="sClock">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="operatingFreq">Operating Frequency</label>
   						<input type="text" class="form-control" name="operatingFreq">
		        	</div>					
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>MEMORY & STORAGE FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="iStorage">Internal Storage</label>
   						<input type="text" class="form-control" name="iStorage">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="ram">RAM</label>
   						<input type="text" class="form-control" name="ram">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="eStorage">Expandable Storage</label>
   						<input type="text" class="form-control" name="eStorage">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="memoryCard">Supported Memory Card Type</label>
   						<input type="text" class="form-control" name="memoryCard">
		        	</div>
		        	<div class="col-md-4 form-group">
        				<label for="cLog">Call Log Memory</label>
   						<input type="text" class="form-control" name="cLog">
		        	</div>					
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>CAMERA FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="isPCamera">Primary Camera Available</label>
   						<input type="text" class="form-control" name="isPCamera">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="pCamera">Primary Camera</label>
   						<input type="text" class="form-control" name="pCamera">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="pCameraFeature">Primary Camera Features</label>
  						<textarea class="form-control" rows="2" name="pCameraFeature"></textarea>
		        	</div>			
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="isSCamera">Secondary Camera Available</label>
   						<input type="text" class="form-control" name="isSCamera">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sCamera">Secondary Camera</label>
   						<input type="text" class="form-control" name="sCamera">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sCameraFeature">Secondary Camera Features</label>
  						<textarea class="form-control" rows="2" name="sCameraFeature"></textarea>
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="flash">Flash</label>
   						<input type="text" class="form-control" name="flash">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="HDrecording">HD Recording</label>
   						<input type="text" class="form-control" name="HDrecording">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="FHDrecording">Full HD Recording</label>
   						<input type="text" class="form-control" name="FHDrecording">
		        	</div>		
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="vRecording">Video Recording</label>
   						<input type="text" class="form-control" name="vRecording">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="vRecordingResolution">Video Recording Resolution</label>
   						<input type="text" class="form-control" name="vRecordingResolution">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="frameRate">Frame Rate</label>
   						<input type="text" class="form-control" name="frameRate">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>CALL FEATURES</b></h6></div>
					<div class="col-md-4 form-group text-secondary">
        				<label for="phonebook">Phone Book</label>
   						<input type="text" class="form-control" name="phonebook">
		        	</div>	
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>CONNECTIVITY FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="nType">Network Type</label>
   						<input type="text" class="form-control" name="nType">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="sNet">Supported Networks</label>
   						<input type="text" class="form-control" name="sNet">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="iCon">Internet Connectivity</label>
  						<input type="text" class="form-control" name="iCon">
		        	</div>			
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="threeG">3G</label>
   						<input type="text" class="form-control" name="threeG">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="gprs">GPRS</label>
   						<input type="text" class="form-control" name="gprs">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="pBrowser">Pre Installed Browser</label>
  						<input type="text" class="form-control" name="pBrowser">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="bSupport">Bluetooth Support</label>
   						<input type="text" class="form-control" name="bSupport">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="bVersion">Bluetooth Version</label>
   						<input type="text" class="form-control" name="bVersion">
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="wifi">Wi-Fi</label>
  						<input type="text" class="form-control" name="wifi">
		        	</div>				
				</div>
				<div class="row">			
					<div class="col-md-3 form-group">
        				<label for="wifiVersion">Wi-Fi Version</label>
   						<input type="text" class="form-control" name="wifiVersion">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="nfc">NFC</label>
   						<input type="text" class="form-control" name="nfc">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="usb">USB Connectivity</label>
  						<input type="text" class="form-control" name="usb">
		        	</div>	
		        	<div class="col-md-3 form-group">
        				<label for="audio">Audio Jack</label>
  						<input type="text" class="form-control" name="audio">
		        	</div>				
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>OTHER DETAILS</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-3 form-group">
        				<label for="sPhone">Smart Phone</label>
   						<input type="text" class="form-control" name="sPhone">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="simSize">Sim Size</label>
   						<input type="text" class="form-control" name="simSize">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="removableB">Removable battery</label>
  						<input type="text" class="form-control" name="removableB">
		        	</div>	
		        	<div class="col-md-3 form-group">
        				<label for="sms">SMS</label>
  						<input type="text" class="form-control" name="sms">
		        	</div>			
				</div>
				<div class="row">			
					<div class="col-md-4 form-group">
        				<label for="sensor">Sensors</label>
   						<textarea class="form-control" rows="2" name="sensor"></textarea>
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="otherF">Other Features</label>
   						<textarea class="form-control" rows="2" name="otherF"></textarea>
		        	</div>
					<div class="col-md-4 form-group">
        				<label for="iApps">Important Apps</label>
  						<input type="text" class="form-control" name="iApps">
		        	</div>			
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>MULTIMEDIA FEATURES</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="audioFormat">Audio Formats</label>
   						<input type="text" class="form-control" name="audioFormat">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="vidoeFormat">Video Formats</label>
   						<input type="text" class="form-control" name="vidoeFormat">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h5><b>BATTERY & POWER FEATURES</b></h5></div>
				</div>
				<div class="row">			
					<div class="col-md-6 form-group">
        				<label for="bCapacity">Battery Capacity</label>
   						<input type="text" class="form-control" name="bCapacity">
		        	</div>
					<div class="col-md-6 form-group">
        				<label for="bType">Battery Type</label>
   						<input type="text" class="form-control" name="bType">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>DIMENSIONS</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-3 form-group">
        				<label for="width">Width</label>
   						<input type="text" class="form-control" name="width">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="height">Height</label>
   						<input type="text" class="form-control" name="height">
		        	</div>
		        	<div class="col-md-3 form-group">
        				<label for="depth">Depth</label>
   						<input type="text" class="form-control" name="depth">
		        	</div>
					<div class="col-md-3 form-group">
        				<label for="weight">Weight</label>
   						<input type="text" class="form-control" name="weight">
		        	</div>		
				</div>
				
				<div class="row my-2 text-dark">
					<div class="col-md-12"><h6><b>WARRANTY</b></h6></div>
				</div>
				<div class="row">			
					<div class="col-md-12 form-group">
        				<label for="warranty">Warranty Summary</label>
   						<textarea class="form-control" rows="3" name="warranty"></textarea>
		        	</div>		
				</div>
				<div class="row d-flex justify-content-center">
					<button class="button button1" name="addNewProduct"><i class="fa fa-save"></i>&nbsp;SAVE</button>
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