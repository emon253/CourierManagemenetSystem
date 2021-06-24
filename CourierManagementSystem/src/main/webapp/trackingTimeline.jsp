<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Timeline</title>
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/TrackingTimeline.css" />
</head>

<body>
	<!--small navigation Start-->
	<%@include file="includes/header.jsp"%>
	<!-- Navbar end -->
	<div class="mainbody d-flex">
		<div class="container-fluid py-4 px-2">
			<div class="row">
				<div class="col-md-8">
					<div class="card">
						<div class="card-body">
							<h6 class="card-title">Timeline</h6>
							<div id="content">
								<ul class="timeline">
									<li class="event" data-date="12:30 - 1:00pm">
										<h3>Registration</h3>
										<p>Get here on time, it's first come first serve. Be late,
											get turned away.</p>
									</li>
									<li class="event" data-date="2:30 - 4:00pm">
										<h3>Opening Ceremony</h3>
										<p>Get ready for an exciting event, this will kick off in
											amazing fashion with MOP &amp; Busta Rhymes as an opening
											show.</p>
									</li>
									<li class="event" data-date="5:00 - 8:00pm">
										<h3>Main Event</h3>
										<p>This is where it all goes down. You will compete head
											to head with your friends and rivals. Get ready!</p>
									</li>
									<li class="event" data-date="8:30 - 9:30pm ">
										<h3>Closing Ceremony</h3>
										<p>See how is the victor and who are the losers. The big
											stage is where the winners bask in their own glory.</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<!-- User info side -->
				<div class="col-md-4">
					<div class="UserInfo container-fluid border mt-2">
						<header class="pb-2">
							<h4>Customer Info</h4>
						</header>
						<hr class="mb-2"
							style="height: 2px; background-color: red; width: 20%; margin: 0px;">
						<h5>Tracking No:</h5>
						<p> ${parcel.parcelID}</p>
						<h5>Customer Name:</h5>
						<p> ${parcel.name}</p>
						<h5>Pickup Point:</h5>
						<p> ${parcel.pickupAddress}</p>
						<h5>Order date:</h5>
						<p>${parcel.requestedTime}</p>
						<h5>Destination Point:</h5>
						<p> ${parcel.deliveryAddress}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<%@include file="/includes/footer.jsp"%></footer>

</body>
</html>