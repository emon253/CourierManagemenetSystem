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
<link rel="stylesheet" href="css/TrackingControll.css">
<title>CMS Courier</title>
</head>
<body>

	<!--small navigation Start-->
	<section>
		<div class="smlnav ">
			<!--pt-2 pt-lg-4-->
			<div class="row ">
				<div class="col-lg-4 justify-content-center align-items-center">

					<ul class="x xx">
						<li><a href="#">log out |</a></li>
						<li class="ml-4"><a href="#">Create Account</a></li>
					</ul>

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
						<a class="dropdown-item" href="#">ADMIN</a> <a
							class="dropdown-item" href="#">HOME</a>
					</div></li>
			</ul>

		</div>

	</nav>

	<!--navbar ...................   ends-->

	<%
	ParcelService service = new ParcelServiceImpl(new ParcelRequestRepImpl());
	List<ParcelRequestDTO> parcelList = service.getAllRedquestedSortedbyLocationName();
	request.setAttribute("list", parcelList);
	%>



	<div class="container">

		<div class="bg">
			<div class="th mt-5 mb-4 mx-auto">
				<h4 class="page-header" style="text-align: center; padding: 10px;">Enter
					Pickup Warehouse location</h4>
			</div>

			<div class="row">

				<div class="col-sm-3 mx-auto">

					<h6>Division</h6>
					<select class="form-control">

						<c:forEach items="${list}" var="parcel">
							<option>
								<c:out value="${parcel.pDivision}" />
							</option>

						</c:forEach>

					</select>
				</div>
				<div class="col-sm-3 mx-auto">

					<h6>District</h6>
					<select class="form-control">

						<c:forEach items="${list}" var="parcel">
							<option>
								<c:out value="${parcel.pDistrict}" />
							</option>

						</c:forEach>

					</select>
				</div>
				<div class="col-sm-3 mx-auto">

					<h6>Sub-district</h6>
					<select class="form-control">

						<c:forEach items="${list}" var="parcel">
							<option>
								<c:out value="${parcel.pSubDistrict}" />
							</option>

						</c:forEach>
					</select>
				</div>
			</div>
			<br />
		</div>

	</div>





	<div class="container">
		<div class="bg">
			<div class="th mt-5 mb-4 mx-auto">
				<h4 class="page-header" style="text-align: center; padding: 10px;">Enter
					Destination Warehouse location</h4>
			</div>
			<div class="row">
				<div class="col-sm-3 mx-auto">

					<h6>Division</h6>
					<select class="form-control">

						<c:forEach items="${list}" var="parcel">
							<option>
								<c:out value="${parcel.dDivision}" />
							</option>

						</c:forEach>
					</select>
				</div>
				<div class="col-sm-3 mx-auto">

					<h6>District</h6>
					<select class="form-control">

						<c:forEach items="${list}" var="parcel">
							<option>
								<c:out value="${parcel.dDistrict}" />
							</option>

						</c:forEach>
					</select>
				</div>
				<div class="col-sm-3 mx-auto">

					<h6>Sub-district</h6>
					<select class="form-control">

						<c:forEach items="${list}" var="parcel">
							<option>
								<c:out value="${parcel.pSubDistrict}" />
							</option>

						</c:forEach>
					</select>
				</div>
			</div>
			<br />
		</div>

	</div>


	<div class="container">
		<div class="bg1">
			<div class="th mt-5 mb-4 mx-auto">
				<h4 class="page-header" style="text-align: center; padding: 10px;">Tracking
					Session</h4>
			</div>
			<div class="row mb-5">
				<div class="col-lg-4 ts">
					<div class="form-group">
						<textarea class="form-control ta" style="resize: none;" rows="3"
							id="comment"></textarea>
						<button type="submit" class="btn btn-info">Add Session</button>

					</div>
				</div>

			</div>
		</div> 

	</div>


</body>
</html>