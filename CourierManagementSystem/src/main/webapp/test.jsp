
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"
	rel="stylesheet" />

<link rel="stylesheet" href="TrackingControll.css">

<title>Tracking Control Admin</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
	
</script>


</head>
<body>


	<!--small navigation end-->


	<!--navbar start -->

	<nav class="navbar sg navbar-expand-md shadow sticky-top">
		<!-- Brand -->


		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span><i class="fas fa-bars nav-icon"></i></span>

		</button>

		<a href="#"> <img class="is" src="photos/Capture.JPG" alt="logo">


		</a>

		<div class=" ml-1">

			<p>
			<h6 class="mb-1">CMS</h6>
			COURIER
			</p>
		</div>
		<div class="thm mx-auto">
			<h4>Tracking Control</h4>
		</div>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<div class="thm1 mx-auto" style="align-items: center;">
				<h4>Tracking Control</h4>
			</div>

			<!--ul class="navbar-nav ">
            <li class="nav-item">
              <a class="nav-link text-center text-md-left" href="#">HOME</a>
            </li>
          </ul-->
			<ul>
				<li class="navbar-nav dropdown"><a
					class="nav-link dropdown-toggle text-center text-md-left" href="#"
					id="navbardrop" data-toggle="dropdown"> HOME </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">ADMIN</a> <a
							class="dropdown-item" href="home.jsp">HOME</a>
					</div></li>
			</ul>

		</div>

	</nav>


	<form id="form" action="trackControl" method="post">
		<div class="container">

			<div class="bg2">
				<div class="th mt-5 mb-4 mx-auto">
					<h4 class="page-header" style="text-align: center; padding: 10px;">Enter
						Pickup Warehouse location</h4>
				</div>

				<div class="row">

					<div class="col-sm-3 mx-auto">

						<h6>Division</h6>
						<select name="pDivision" id="pDivision" class="form-control">
							<option value="default" disabled selected>Select</option>

						</select>
					</div>
					<div class="col-sm-3 mx-auto">

						<h6>District</h6>
						<select name="pDistrict" id="pDistrict" class="form-control">
							<option value="default" disabled selected>Select</option>


						</select>
					</div>
					<div class="col-sm-3 mx-auto">

						<h6>Sub-district</h6>
						<select name="pSubDistrict" id="pSubDistrict" class="form-control">
							<option value="default" disabled selected>Select</option>

						</select>
					</div>
				</div>
				<br />
			</div>
		</div>
























		<div class="container">
			<div class="bg2">
				<div class="th mt-5 mb-4 mx-auto">
					<h4 class="page-header" style="text-align: center; padding: 10px;">Enter
						Destination Warehouse location</h4>
				</div>
				<div class="row">
					<div class="col-sm-3 mx-auto">

						<h6>Division</h6>
						<select name="dDivision" id="dDivision" class="form-control">
							<option value="default" disabled selected>Select</option>

						</select>
					</div>
					<div class="col-sm-3 mx-auto">

						<h6>District</h6>
						<select name="dDistrict" id="dDistrict" class="form-control">
							<option value="default" disabled selected>Select</option>


						</select>
					</div>
					<div class="col-sm-3 mx-auto">

						<h6>Sub-district</h6>
						<select name="dSubDistrict" id="dSubDistrict" class="form-control">
							<option value="default" disabled selected>Select</option>

						</select>
					</div>
				</div>
				<br />
			</div>

		</div>



	</form>



	<script type="text/javascript">
		$(document).ready(function() {
			//const data = $.getJSON("includes/bd-divisions.json");
			$(document).ready(function() {

				// FETCHING DATA FROM JSON FILE
				$.getJSON("includes/bd-divisions.json", function(data) {

					$.each(data, function(key, value) {

						for (i = 0; i < value.length; i++) {
							$('#pDivision').append('<option id="'+value[i].id+'" value="'+value[i].name+'">'+ value[i].name+'</option>');
						}

					});

				});
			});
		});
		
		
		$("#pDivision")
		.change(
				function(e) {
					var id = $(this).find('option:selected').attr('id');

					$('#pDistrict').find('option').remove();
					$('#pDistrict')
							.append(
									'<option value="default" disabled selected>Select</option>');
					$.getJSON("includes/bd-districts.json", function(data) {

						$.each(data, function(key, value) {

							for (i = 0; i < value.length; i++) {
								if(value[i].division_id == id){
									console.log(value[i].name)
									$('#pDistrict').append('<option value="'+value[i].id+'">'+ value[i].name+'</option>');

								}
									
							}

						});

					});

				});
		
		
		$("#pDistrict")
		.change(
				function(e) {
					var id = $(this).find('option:selected').attr('id');

					$('#pSubDistrict').find('option').remove();
					$('#pSubDistrict')
							.append(
									'<option value="default" disabled selected>Select</option>');
					$.getJSON("includes/bd-upazilas.json", function(data) {

						$.each(data, function(key, value) {

							for (i = 0; i < value.length; i++) {
								if(value[i].division_id == id){
									console.log(value[i].name)
									$('#pSubDistrict').append('<option value="'+value[i].id+'">'+ value[i].name+'</option>');

								}
									
							}

						});

					});

				});
		
		
		$("#pSubDistrict")
		.change(
				function(e) {
					var id = $(this).find('option:selected').attr('id');

					$('#dDivision').find('option').remove();
					$('#dDivision')
							.append(
									'<option value="default" disabled selected>Select</option>');
					$.getJSON("includes/bd-divisions.json", function(data) {

						$.each(data, function(key, value) {

							for (i = 0; i < value.length; i++) {
								$('#dDivision').append('<option id="'+value[i].id+'" value="'+value[i].name+'">'+ value[i].name+'</option>');

									
							}

						});

					});

				});
		
		
		$("#dDivision")
		.change(
				function(e) {
					var id = $(this).find('option:selected').attr('id');

					$('#dDistrict').find('option').remove();
					$('#dDistrict')
							.append(
									'<option value="default" disabled selected>Select</option>');
					$.getJSON("includes/bd-districts.json", function(data) {

						$.each(data, function(key, value) {

							for (i = 0; i < value.length; i++) {
								if(value[i].division_id == id){
									console.log(value[i].name)
									$('#dDistrict').append('<option value="'+value[i].id+'">'+ value[i].name+'</option>');

								}
									
							}

						});

					});

				});
		
		
		
		$("#dDistrict")
		.change(
				function(e) {
					var id = $(this).find('option:selected').attr('id');

					$('#dSubDistrict').find('option').remove();
					$('#dSubDistrict')
							.append(
									'<option value="default" disabled selected>Select</option>');
					$.getJSON("includes/bd-upazilas.json", function(data) {

						$.each(data, function(key, value) {

							for (i = 0; i < value.length; i++) {
								if(value[i].division_id == id){
									console.log(value[i].name)
									$('#dSubDistrict').append('<option value="'+value[i].id+'">'+ value[i].name+'</option>');

								}
									
							}

						});

					});

				});
	</script>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js">
		
	</script>


</body>
</html>