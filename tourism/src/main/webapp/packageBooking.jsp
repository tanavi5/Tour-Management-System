<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<html>
<head>
<title>Package Booking Forms</title>
<!--meta-tags-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Simple Statistics Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--meta-tags-->

<!--css-links-->
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<!--//css-links-->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Cabin:400,400i,500,500i,600,600i,700,700i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<!--//online-fonts -->
								
</head>
<body>
	<h1>Package Booking Forms</h1>
<!-- main-section -->
	<div class="head agile">
		<div class="login w3">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" ><span>Package Booking</span></li>
						<!-- <li class="resp-tab-item" ><label>/</label><span>Trains</span></li>
						<li class="resp-tab-item" ><label>/</label><span>Hotels</span></li>
						<li class="resp-tab-item" ><label>/</label><span>Cabs</span></li>
						 -->
					</ul>				  	 
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" >
							<div class="login-top agileinfo">
								<h2>Search for Packages</h2>
								
								<form action="packageBook" method="post">
									<div class="w3_agileits_main_grid w3l_main_grid">
										<div class="agileits_grid">
											<h5>Name * </h5>
											<div class="name">
												<input type="text" name="firstName" placeholder="Your Name" required="">
											</div>
											<div class="clear"></div>
										</div>
									</div>
								<div class="w3_agileits_main_grid w3l_main_grid">
										<div class="agileits_grid">
											<h5>Phone Number </h5>
												<input type="text" name="number" placeholder="Phone Number" required="">
										</div>
									</div>
									<div class="w3_agileits_main_grid w3l_main_grid">
										<div class="agileits_grid">
											<h5>E-mail </h5>
												<input type="email" name="email" placeholder="ex : yourmail@gmail.com" required="">
										</div>
									</div>
									<div class="w3_agileits_main_grid w3l_main_grid">
										<div class="agileits_grid">
											<h5>Your Location </h5>
												<input type="text" name="location" placeholder="City,Destiation" required="">
										</div>
									</div>  <div class="w3_agileits_main_grid w3l_main_grid">
											<div class="agileits_grid">
												<h5>Select Your Package</h5>
												<select id="packages" name="packages" required="">
												<option value="">Select Your Package</option>
													<option value="Lonavla">Lonavla</option>
													<option value="Panchgani">Panchgani</option>
													<option value="Mahabaleshwar">Mahabaleshwar</option>
													<option value="Kolhapur">Kolhapur</option>
													<option value="Shimla">Shimla</option>
													<option value="Ajanta">Ajanta Caves</option>
													<option value="Tadoba">Tadoba National Park</option>
													<option value="Alibagh">Alibagh</option>
													<option value="Ratnagiri">Ratnagiri</option>
													<option value="Rajmachi">Rajmachi</option>
												</select>
											</div>
										</div>
									
									<div class="fromtop">
										<div class="agileinfo_main_grid">
											<div class="agileits_w3layouts_grid">
												<h5>Arrival Date</h5>
												<input type="text" name="arrivalDate" id="datepicker" readonly placeholder="Arrival Date">

											</div>
										</div>
										
										<div class="agileinfo_main_grid">
											<div class="agileits_w3layouts_grid">
												<h5>Departure Date</h5>
												<input type="text" name="departureDate" id="datepicker1" readonly placeholder="Departure Date" required="">

											</div>
										</div>
										
										<div class="clear"></div>
									</div>
										<div class="agileits_main_grid w3_agileits_main_grid">
											<div class="wthree_grid">
												<h5>No Of Children</h5>
												<select id="children" name="children" required="">
												<option value="00">00</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
												</select>
											</div>
										</div>
										
										<div class="agileinfo_main_grid">
											<div class="agileits_w3layouts_grid">
												<h5>No. Of Adults</h5>
												<select id="adults" name="adults" required="">
												<option value="00">00</option>
													<option value="01">01</option>
													<option value="02">02</option>
													<option value="03">03</option>
													<option value="04">04</option>
													<option value="05">05</option>
													<option value="06">06</option>
												</select>
											</div>
										</div>
										<div class="clear"></div>
									<div class="agileinfo_main_grid">
											<div class="agileits_w3layouts_grid">
												<h5>Max Price</h5>
												<input type="text" name="price" placeholder="Price" required="">

											</div>
										</div>
										<div class="clear"></div> 
										<div class="aitssubmitw3ls">
												<input type="submit" name="submit" value="Submit">
											</div>
											<div class="aitssubmitw3ls">
												<button type="submit" name="submit"><a href="destinations.html">Back To Home</a></button>
											</div>
										</form>
										</div>	
				
			</div>	
					</div>	
				</div>
			</div>	
		</div>	
		<div class="clear"></div>
	</div>	
<!-- //main-section -->

<!-- copyright -->
	<div class="footer agile-w3l">
		<p>© 2017 Travel Booking Forms</p>
	</div>
<!-- //copyright -->

<!-- Calendar -->
		<!-- Necessary-JavaScript-Files-&-Links -->

			<!-- Default-JavaScript --> <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

		<!-- //Necessary-JavaScript-Files-&-Links -->

											<script src="js/jquery-ui.js"></script>
											  <script>
													  $(function() {
														$( "#datepicker,#datepicker1" ).datepicker();
													  });
											  </script>
								<!-- //Calendar -->
<!--script-->
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
				
</script>	
<script>
$(function(){
    $("#datepicker").datepicker();
});
</script>
<!--script-->



</body>
</html>
