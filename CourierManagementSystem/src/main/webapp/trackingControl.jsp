<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="dto.ParcelRequestDTO"%>
<%@page import="repository.ParcelRequestRepImpl"%>
<%@page import="service.ParcelServiceImpl"%>
<%@page import="service.ParcelService"%>
<%@page import="repository.ParcelRequestRep"%>
<%@page import="java.util.List"%>
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

	<!--small navigation Start-->
	<section>
		<div class="smlnav ">
			<!--pt-2 pt-lg-4-->
			<div class="row ">
				<div class="col-lg-4 justify-content-center align-items-center">

					<%@include file="includes/admin_securePage_controller.jsp"%>


				</div>
				<div class="col-lg-3"></div>
				<div class="col-lg-5 col-sm-12">
					<ul class="x ">
						<li><a href="#" class="mr-2">Call Us at: 01831553096 | <a></li>
						<li><a href="#" class="mr-2"><i class="fab fa-instagram"></i></a></li>
						<li><a href="#" class="mr-2"><i class="fab fa-twitter"></i></a></li>
						<li><a href="#" class="mr-2"><i class="fab fa-facebook-f"></i></a></li>
						<li><a href="#"><i class="fab fa-youtube"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>

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
						<a class="dropdown-item" href="adminpanel.jsp">ADMIN</a> <a
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


		<div class="container">

			<div class="bg1">
				<p id="total" class="text-center"></p>


				<div class="th mt-3 mb-4 mx-auto">
					<h4 class="page-header" style="text-align: center; padding: 10px;">Tracking
						Session</h4>
				</div>
				<div class="row mb-5">
					<div class="col-lg-6 ts">
						<h6>Choose Session</h6>
						<select name="session" id="session" class="form-control">
							<option value="" disabled selected>Select</option>

							<option id="accepted">Accept requested parcel</option>
							<option id="pickup">Pickedup from customer</option>

							<option id="sentToSD">Sent to delivery sub district</option>
							<option id="recievedDH">Parcel received in delivery hub</option>

							<option id="toDM">Passing parcel to the delivery man</option>

							<option id="delivered">Parcel successfully delivered</option>
						</select> <input name="states" id="states" type="hidden" value="">

					</div>

					<div class="col-lg-4 ts">
						<div class="form-group">
							<textarea name="sessionMsg" id="sessionMsg"
								class="form-control ta" style="resize: none;" rows="3"
								id="comment"></textarea>
							<button type="submit" class="btn btn-info">Add Session</button>
							
						</div>
					</div>

				</div>
			</div>
		</div>

	</form>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script type="text/javascript">
		function sendRequest(fData) {
			var response;
			var ajax = $
					.ajax({
						url : "trackControl",
						dataType : "json",
						type : "GET",
						data : fData,
						async : false,
						success : function(response) {

						},
						error : function() {
							$('#pDistrict')
									.append(
											'<option value="default" disabled selected>No district found</option>');
						}
					});

			const obj = JSON.parse(ajax.responseText)

			return obj;

		}

		$("#form").on(
				'submit',
				function(e) {
					var fData = $(this).serialize();

					e.preventDefault();
					$.ajax({
						url : "trackControl",
						data : fData,
						type : "POST",
						success : function(response) {
							if (response.trim() == 'success') {

								swal("Success", "Tracking session updated ",
										"success");
								setTimeout(function() {
									window.location
											.replace("trackingControl.jsp");
								}, 3000);
							} else {
								swal("Fail", "Something went wrong", "error");

							}
						}
					});
				});

		function remove(l1) {

		}

		$(document)
				.ready(
						function(e) {
							var fData = $('#form').serialize();

							$('#pDivision').find('option').remove();

							$('#pDivision')
									.append(
											'<option value="default" disabled selected>Select</option>');

							const val = JSON
									.parse(sendRequest(fData).pDivision)

							for (i = 0; i < val.length; i++) {
								$('#pDivision').append(
										'<option>' + val[i] + '</option>');

							}
						});

		$("#pDivision")
				.change(
						function(e) {
							var fData = $('#form').serialize();

							$('#pDistrict').find('option').remove();
							$('#pDistrict')
									.append(
											'<option value="default" disabled selected>Select</option>');

							const val = JSON
									.parse(sendRequest(fData).pDistrict)

							for (i = 0; i < val.length; i++) {
								$('#pDistrict').append(
										'<option>' + val[i] + '</option>');

							}

						});
		$("#pDistrict")
				.change(
						function(e) {
							var fData = $('#form').serialize();
							$('#pSubDistrict').find('option').remove();
							$('#pSubDistrict')
									.append(
											'<option value="default" disabled selected>Select</option>');

							const val = JSON
									.parse(sendRequest(fData).pSubDistrict)

							for (i = 0; i < val.length; i++) {
								$('#pSubDistrict').append(
										'<option>' + val[i] + '</option>');

							}
						});

		$("#pSubDistrict")
				.change(
						function(e) {
							var fData = $('#form').serialize();
							$('#dDivision').find('option').remove();
							$('#dDivision')
									.append(
											'<option value="default" disabled selected>Select</option>');
							const val = JSON
									.parse(sendRequest(fData).dDivision)

							for (i = 0; i < val.length; i++) {
								$('#dDivision').append(
										'<option>' + val[i] + '</option>');

							}
						});

		$("#dDivision")
				.change(
						function(e) {
							var fData = $('#form').serialize();
							$('#dDistrict').find('option').remove();
							$('#dDistrict')
									.append(
											'<option value="default" disabled selected>Select</option>');
							const val = JSON
									.parse(sendRequest(fData).dDistrict)

							for (i = 0; i < val.length; i++) {
								$('#dDistrict').append(
										'<option>' + val[i] + '</option>');

							}
						});

		$("#dDistrict")
				.change(
						function(e) {
							var fData = $('#form').serialize();
							$('#dSubDistrict').find('option').remove();
							$('#dSubDistrict')
									.append(
											'<option value="default" disabled selected>Select</option>');
							const val = JSON
									.parse(sendRequest(fData).dSubDistrict)

							for (i = 0; i < val.length; i++) {
								$('#dSubDistrict').append(
										'<option>' + val[i] + '</option>');

							}
						});

		$("#dSubDistrict").change(function(e) {
			var fData = $('#form').serialize();

			const val = JSON.parse(sendRequest(fData).overvationCount)

			$("#total").text('Total: ' + $.parseJSON(val));

		});

		$("#session")
				.on(
						'change',
						(function(e) {
							var str1 = "Your parcel has been accepted by CMS, A pickup man will receive your Parcel soon";
							var str2 = "Your parcel has received in your nearby hub. Will be delivered soon";
							var str3 = "Your parcel is sending to your delivery loation";
							var str4 = "We received your parcel in delivery hub'";
									
							var str5 = "A delivery man is out to deliver your parcel to your location"
							var selectedItem = $(this).val();
							if (selectedItem == "Accept requested parcel") {
								$("#states").val("Accepted");
								$("#sessionMsg").val(str1);

							} else if (selectedItem == "Pickedup from customer") {
								$("#states").val("PickedUp");

								$("#sessionMsg").val(str2);

							} else if (selectedItem == "Sent to delivery sub district") {
								$("#states").val("toSubDis");

								$("#sessionMsg").val(str3);

							} else if (selectedItem == "Parcel received in delivery hub") {
								$("#states").val("Received Delivery hub");

								$("#sessionMsg").val(str4);
							} else if (selectedItem == "Passing parcel to the delivery man") {
								$("#states").val(" To Delivery Man");

								$("#sessionMsg").val(str5);

							} else {
								$("#states").val("Delivered");

								$("#sessionMsg")
										.val(
												"Your parcel is successfully delivered");

							}

						}));
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js">
	</script>


	<%@include file="/includes/footer.jsp"%>
</body>
</html>