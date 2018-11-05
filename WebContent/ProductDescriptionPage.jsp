<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.*, java.io.*, java.sql.*, com.techaspect.entity.Customer, com.techaspect.entity.Product, java.util.List, java.util.ArrayList, java.util.Iterator" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Product | Description</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/common.css">	
	</head>
	<body>
	

<!-- NAVBAR STARTS -->		
		<%@ include file="LoginHeader.jsp" %>		
<!-- NAVBAR ENDS -->

	<%
		int proId = Integer.parseInt(request.getParameter("id"));
		Product info = new Product();
		@SuppressWarnings("unchecked")
		List<Product> ProductInfoList = (List<Product>)application.getAttribute("PRODUCTINFO");	
		for(Product product : ProductInfoList) {
			if(product.getId() == proId) {
				info = product;
			}
		}
		
		Product desc = new Product();
		@SuppressWarnings("unchecked")
		List<Product> ProductDescList = (List<Product>)application.getAttribute("PRODUCTDESC");	
		for(Product product : ProductDescList) {
			if(product.getId() == proId) {
				desc = product;
			}
		}
		
		Product spec = new Product();
		@SuppressWarnings("unchecked")
		List<Product> ProductSpecList = (List<Product>)application.getAttribute("PRODUCTSPEC");	
		for(Product product : ProductSpecList) {
			if(product.getId() == proId) {
				spec = product;
			}
		}
	
	%>
		

		

		
<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h5><b><%= info.getName() %></b></h5>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item"><a href="Home.jsp">HOME</a></li>
						<li class="breadcrumb-item"><a href="#">ELECTRONICS</a></li>
						<li class="breadcrumb-item"><a href="CategoryPage">MOBILES</a></li>
						<li class="breadcrumb-item active font-weight-bold"><%= info.getName() %></li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
<!-- BREADCRUMB ENDS -->

<!-- CONTENT STARTS -->
		<!-- PRODUCT INTRODUCTION -->
		<div class="container my-5">
			<div class="row">
				<i class="text-muted">There are so many things you can do with your Galaxy S9 or S9+. You, too, can be a at least you
					 can play a very convincing one. Bixby recognizes wine labels and tells you about them as well as food pairing suggestions.
				 </i>
			</div>
			<div class="row mt-5">
				<!-- PRODUCT IMAGE -->
				<div class="col-md-6 col-sm-12 d-flex justify-content-center">
					<img src="images/uploads/vendor/<%= info.getImage1() %>" class="img-responsive" alt="product2" height="100%" width="70%">
				</div>
				<!-- PRODUCT DESCRIPTION -->
				<div class="col-md-6 mt-5">
					<hr>
					<div class="row d-flex justify-content-center">
						<h5>Available Colors</h5>
						<div class="col-md-12 d-flex justify-content-center">
							<form>
								<div class="form-group">
							  		<select name="color" class="custom-select custom-select-sm">
									    <option selected>Black</option>
									    <option value="1">Gold</option>
									    <option value="2">Silver</option>
									    <option value="3">Grey</option>
									    <option value="4">Rose Red</option>
									    <option value="5">Blue</option>
							  		</select>
								</div>
							</form>
						</div>							
					</div>
					<div class="row d-flex justify-content-center">
						<h4 class="text-secondary">₹<%= info.getPrice() %></h4><br/>					
					</div>
					<div class="row d-flex justify-content-center">
						<a class="button button1" style="color:#20B2AA" href="addCart?id=<%= proId %>&jsp=ProductDescriptionPage"><i class="fa fa-shopping-cart">&nbsp;Add to Cart</i></a>
						<button class="button button1"><i class="fa fa-heart"></i></button>				
					</div>
					<hr>
					<!-- MORE IMAGES -->
					<div class="row">
						<div class="col-md-3"><img src="images/uploads/vendor/<%= info.getImage2() %>" class="img-responsive" alt="product2" height="150px" width="70%"></div>
						<div class="col-md-3"><img src="images/uploads/vendor/<%= info.getImage3() %>" class="img-responsive" alt="product2" height="150px" width="70%"></div>
						<div class="col-md-3"><img src="images/uploads/vendor/<%= info.getImage4() %>" class="img-responsive" alt="product2" height="150px" width="70%"></div>
						<div class="col-md-3"><img src="images/uploads/vendor/<%= info.getImage5() %>" class="img-responsive" alt="product2" height="150px" width="70%"></div>
					</div>				
				</div>
			</div>
		</div>
		
		<!-- PRODUCT DESCRIPTION -->
		<div class="container descriptionPara">
			<hr>
			<div class="row">
				<div class="col-md-12">
					<h4><b>Product Description</b></h4>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC1() %></h6>
					<p><%= desc.getDContent1() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC2() %></h6>
					<p><%= desc.getDContent2() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC3() %></h6>
					<p><%= desc.getDContent3() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC4() %></h6>
					<p><%= desc.getDContent4() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC5() %></h6>
					<p><%= desc.getDContent5() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC6() %></h6>
					<p><%= desc.getDContent6() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC7() %></h6>
					<p><%= desc.getDContent7() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC8() %></h6>
					<p><%= desc.getDContent8() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC9() %></h6>
					<p><%= desc.getDContent9() %></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead"><%= desc.getDESC10() %></h6>
					<p><%= desc.getDContent10() %></p>
				</div>
			</div>
		</div>
		
	<!-- SPECIFICATIONS STARTS -->
		<div class="container">
			<hr>
			<div class="row">
				<div class="col-md-12">
					<h4><b>Specifications</b></h4>
				</div>
			</div>
			<hr>
			
			<!-- GENERAL FEATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">General</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">In The Box</th>
						      	<td><%= spec.getInBox() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Model Number</th>
						     	<td><%= spec.getModelNo() %></td>
						    </tr>
						    <tr>
						     	<th scope="row">Model Name</th>
						      	<td><%= spec.getModelName() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Color</th>
						      	<td><%= spec.getColor() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Browse Type</th>
						      	<td><%= spec.getBrowseType() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">SIM Type</th>
						      	<td><%= spec.getSimType() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Touchscreen</th>
						      	<td><%= spec.getTouchScreen() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- DISPLAY FEATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Display Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Display Size</th>
						      	<td><%= spec.getDisplaySize() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Resolution</th>
						     	<td><%= spec.getResolution() %></td>
						    </tr>
						    <tr>
						     	<th scope="row">Resolution Type</th>
						      	<td><%= spec.getResolutionType() %></td>
						     <tr>
						      	<th scope="row">Display Type</th>
						      	<td><%= spec.getDisplayType() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Display Colors</th>
						      	<td><%= spec.getDisplayColor() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- OS & PROCESSOR FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">OS & Processor Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Operating System</th>
						      	<td><%= spec.getOS() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Processor Type</th>
						     	<td><%= spec.getProcessorType() %></td>
						    </tr>
						    <tr>
						     	<th scope="row">Processor Core</th>
						      	<td><%= spec.getProcessorCore() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Primary Clock Speed</th>
						      	<td><%= spec.getPrimaryClock() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Secondary Clock Speed</th>
						      	<td><%= spec.getSecondaryClock() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Operating Frequency</th>
						      	<td><%= spec.getOperatingFrequency() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- MEMORY AND STORAGE FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Memory & Storage Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Internal Storage</th>
						      	<td><%= spec.getInternalStorage() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">RAM</th>
						     	<td><%= spec.getRAM() %></td>
						    </tr>
						    <tr>
						     	<th scope="row">Expandable Storage</th>
						      	<td><%= spec.getExternalStorage() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Supported Memory Card Type</th>
						      	<td><%= spec.getMemoryCard() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Call Log Memory</th>
						      	<td><%= spec.getCallLog() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- CAMERA FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Camera Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Primary Camera Available</th>
						      	<td><%= spec.getIsPrimaryCamera() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Primary Camera</th>
						     	 <td><%= spec.getPrimaryCamera() %></td>
						    </tr>
						    <tr>
						     	<th scope="row">Primary Camera Features</th>
						      	<td><%= spec.getPrimaryCameraFeature() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Secondary Camera Available</th>
						      	<td><%= spec.getIsSecondaryCamera() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Secondary Camera Features</th>
						      	<td><%= spec.getSecondaryCamera() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Flash</th>
						      	<td><%= spec.getFlash() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">HD Recording</th>
						      	<td><%= spec.getHDRecording() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Full HD Recording</th>
						      	<td><%= spec.getFullHDRecording() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Video Recording</th>
						      	<td><%= spec.getVideoRecording() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Video Recording Resolution</th>
						      	<td><%= spec.getVideoRecordingResolution() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Frame Rate</th>
						      	<td><%= spec.getFrameRate() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- CALL FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Call Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Phone Book</th>
						      	<td><%= spec.getPhoneBook() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- CONNECTIVITY FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Connectivity Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Network Type</th>
						      	<td><%= spec.getNetworkType() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Supported Network</th>
						     	 <td><%= spec.getSupportNetwork() %></td>
						    </tr>
						    <tr>
						     	<th scope="row">Internet Connectivity</th>
						      	<td><%= spec.getInternetConnectivity() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">3G</th>
						      	<td><%= spec.getThreeG() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">GPRS</th>
						      	<td><%= spec.getGPRS() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Pre Installed Browser</th>
						      	<td><%= spec.getPreInstalledBrowser() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Bluetooth Support</th>
						      	<td><%= spec.getBluetoothSupport() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Bluetooth Version</th>
						      	<td><%= spec.getBluetoothVersion() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Wi-Fi</th>
						      	<td><%= spec.getWiFi() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Wi-Fi Version</th>
						      	<td><%= spec.getWiFiVersion() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">NFC</th>
						      	<td><%= spec.getNFC() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">USB Connectivity</th>
						      	<td><%= spec.getUSB() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Audio Jack</th>
						      	<td><%= spec.getAudio() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- OTHER DETAILS -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Other Details</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Smart Phone</th>
						      	<td><%= spec.getSmartPhone() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">SIM Size</th>
						     	<td><%= spec.getSimSize() %></td>
						    </tr>
						    <tr>
						     	<th scope="row">Removable Battery</th>
						      	<td><%= spec.getRemovableBattery() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">SMS</th>
						      	<td><%= spec.getSMS() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Sensors</th>
						      	<td><%= spec.getSensors() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Other Features</th>
						      	<td><%= spec.getOtherFeatures() %></td>
						    </tr>
						     <tr>
						      	<th scope="row">Important Apps</th>
						      	<td><%= spec.getInstalledApps() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- MULTIMEDIA FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Multimedia Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Audio Formats</th>
						      	<td><%= spec.getAudioFormat() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Video Formats</th>
						      	<td><%= spec.getVideoFormat() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- BATTERY & POWER FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Battery & Power Features</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Battery Capacity</th>
						      	<td><%= spec.getBatteryCapacity() %></td>
						    </tr>
						    <tr>
						      	<th scope="row">Battery Type</th>
						      	<td><%= spec.getBatteryType() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- DIMENSIONS -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Dimensions</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Width</th>
						      	<td><%= spec.getWidth() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(mm)</td>
						    </tr>
						    <tr>
						      	<th scope="row">Height</th>
						      	<td><%= spec.getHeight() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(mm)</td>
						    </tr>
						    <tr>
						      	<th scope="row">Depth</th>
						      	<td><%= spec.getDepth() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(mm)</td>
						    </tr>
						    <tr>
						      	<th scope="row">Weight</th>
						      	<td><%= spec.getWeight() %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(mm)</td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			
			<!-- WARRANTY FRATURES -->
			<div class="row">
				<div class="col-md-12">
					<h6 id="subhead">Warranty</h6>
					<table class="table table-bordered table-striped table-dark desctable">
						<tbody>
						    <tr>
						      	<th scope="row">Warranty Summary</th>
						      	<td><%= spec.getWarranty() %></td>
						    </tr>
						 </tbody>
					</table>
				</div>
			</div>
			<hr>
		</div>
	<!-- SPECIFICATIONS ENDS -->
	
	<!-- RATING AND REVIEWS -->
		<div class="container">
			<div class="row">
				<div class="col-md-4"><h6><b>Rating & Reviews</b></h6></div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<p class="font-weight-bold p-1">4.7 &nbsp;<span class="fa fa-star"></span></p>					
					<p class="text-muted descriptionPara">15,754 Ratings & 9,783 Reviews</p>
				</div>
				<div class="col-md-2">
					<div class="progress mb-1">
                      <p>5 &nbsp;<span class="fa fa-star">&nbsp;</span></p></td><div class="progress-bar bg-success" role="progressbar" style="width:20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">20%</div>
                    </div>
                    <div class="progress mb-1">
                      <p>4 &nbsp;<span class="fa fa-star">&nbsp;</span></p></td><div class="progress-bar bg-success" role="progressbar" style="width:50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                    </div>
                    <div class="progress mb-1">
                      <p>3 &nbsp;<span class="fa fa-star">&nbsp;</span></p></td><div class="progress-bar bg-warning" role="progressbar" style="width:15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">15%</div>
                    </div>
                    <div class="progress mb-1">
                      <p>2 &nbsp;<span class="fa fa-star">&nbsp;</span></p></td><div class="progress-bar bg-danger" role="progressbar" style="width:5%" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100">5%</div>
                    </div>
                    <div class="progress mb-1">
                      <p>1 &nbsp;<span class="fa fa-star">&nbsp;</span></p></td><div class="progress-bar bg-warning" role="progressbar" style="width:10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">10%</div>
                    </div>
				</div>
				<div class="col-md-2 offset-md-2">
					<button class="button button1">Rate this Product</button>
				</div>
			</div>
			
			<!-- PUBLIC REVIEWS -->
			<div class="row my-3">
				<div class="col-md-12">
					<div class="card">
  						<div class="card-body reviewer">
    						<p class="card-title font-weight-bold">Abhishek Dwivedi</p>
    						<p>	<i class="fa fa-star"></i>
    							<i class="fa fa-star"></i>
    							<i class="fa fa-star"></i>
    							<i class="fas fa-star-half-alt"></i>
    							<i class="far fa-star"></i>
    						</p>
    						<p class="text-secondary">September 16, 2018</p>
    						<p class="card-text">Nice phone with great specifications like 18MP + 12 MP front facing camera, really long battery life. Its worth to buy and Truly value for money</p>
    						<a href="#" class="card-link">Helpful</a>
   							<a href="#" class="card-link">Comment</a>
   							<a href="#" class="card-link">Report Abuse</a>
  						</div>
					</div>
				</div>
			</div>
			
			<div class="row my-3">
				<div class="col-md-12">
					<div class="card">
  						<div class="card-body reviewer">
    						<p class="card-title font-weight-bold">Naman Purwar</p>
    						<p><i class="fa fa-star"></i>
    							<i class="fa fa-star"></i>
    							<i class="fa fa-star"></i>
    							<i class="fa fa-star"></i>
    							<i class="far fa-star"></i>
    						</p>
    						<p class="text-secondary">September 16, 2018</p>
    						<p class="card-text">Nice phone with great specifications like 18MP + 12 MP front facing camera, really long battery life. Its worth to buy and Truly value for money</p>
    						<a href="#" class="card-link">Helpful</a>
   							<a href="#" class="card-link">Comment</a>
   							<a href="#" class="card-link">Report Abuse</a>
  						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
<!-- CONTENT ENDS -->

<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->


<!-- JAVASCRIPT CODE -->
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
</html>