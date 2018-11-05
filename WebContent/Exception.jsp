<%@ page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Exception Page</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		
	</head>
	<body>
	
		<!-- NAVBAR STARTS -->
		<%@ include file="GuestHeader.html" %>
		<!-- NAVBAR ENDS -->
	  	
		<!-- BREADCRUMB STARTS -->
		<div class="row" id="header" style="font-size:12px">
			<div class="col-md-6 pt-4 d-flex justify-content-center">
				<h6><b>EXCEPTION PAGE</b></h6>
			</div>
			<div class="col-md-4 offset-md-2 col-xs-12 col-sm-12 d-flex justify-content-center">
        		<nav aria-label="breadcrumb">
					<ol class="breadcrumb" style="background:none">
						<li class="breadcrumb-item active font-weight-bold">EXCEPTION</li>
						<li class="breadcrumb-item"><a href="index.jsp">NEW ACCOUNT</a></li>
						<li class="breadcrumb-item"><a href="index.jsp">SIGN IN</a></li>
					</ol>
				</nav>
			</div>	 	
	   </div>	
	<!-- BREADCRUMB ENDS -->
	
	<div class="container" style="margin-bottom:100px">
		<h2 class="d-flex justify-content-center">Sorry for the inconvenience</h2>
		<h4 class="text-danger d-flex justify-content-center">The page you are looking for is having a technical issue.</h4>
		<h4 class="d-flex justify-content-center">Contact Website Administrator with following reports</h4>
		<br>
		<div class="alert alert-danger d-flex justify-content-center text-dark">
			<% exception.printStackTrace(new java.io.PrintWriter(out)); %>
		</div>
	</div>
	
	
	<!-- FOOTER ONE STARTS -->
		<%@ include file="Footer.html" %>
<!-- FOOTER TWO ENDS -->

<!-- JAVASCRIPT CODE -->
		<script type="text/javascript" src="js/FormValidation.js"></script>
		<script src="js/jquery-3.3.1.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
	
	</body>
</html>