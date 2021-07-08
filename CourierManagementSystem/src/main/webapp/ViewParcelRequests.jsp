<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="View request.css">
<title>CMS Courier</title>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js">
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
			<h4>View Requests</h4>
		</div>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<div class="thm1 mx-auto" style="align-items: center;">
				<h4>View Requests</h4>
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


	<!--navbar ends-->


	<div class="container">
		<div class="bg ">

			<div class=" card">

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Parcel ID</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">Weight(kg)</th>
							<th scope="col">Picup Address</th>
							<th scope="col">Delivery Addreress</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${parcel}" var="parcel">
							<tr>
								<th scope="row"><c:out value="${parcel.parcelID}" /></th>
								<td><c:out value="${parcel.name}" /></td>
								<td><c:out value="${parcel.email}" /></td>
								<td><c:out value="${parcel.phone}" /></td>
								<td><c:out value="${parcel.parcelWeight}" /></td>
								<td><c:out value="${parcel.pickupAddress}" /></td>
								<td><c:out value="${parcel.deliveryAddress}" /></td>
							</tr>

						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
	</div>

<script type="text/javascript">
/* $(document).ready(function () {
   
    $.ajax({
        type:'GET',
        url:'viewParcel',
        success:function(resp){
           // window.location.href = "ViewParcelRequests.jsp";
        }
    });
});
 */
</script>



	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>