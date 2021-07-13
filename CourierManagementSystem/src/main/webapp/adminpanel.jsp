
<!DOCTYPE html>
<%@page import="domain.Employee"%>
<html lang="en">
<head>
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/admin panel.css">
<title>CMS Courier</title>
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
			<h4>Admin Panel</h4>
		</div>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<div class="thm1 mx-auto" style="align-items: center;">
				<h4>Admin Panel</h4>
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
							class="dropdown-item"
							href="<%=request.getContextPath()%>/home.jsp">HOME</a>
					</div></li>
			</ul>

		</div>

	</nav>


	<!--navbar ends-->


	<div class="container">
		<div class="bg ">
			<div class="row">

				<div class="col-lg-3" style="text-align: center;">
					<div class="card">
						<a href="<%=request.getContextPath()%>/viewParcel" class="mt-4"> <i
							class="fas fa-list-ul fa-5x is"></i>
							<h5 style="color: black;">Parcel Requests</h5>
						</a>
					</div>
				</div>

				<div class="col-lg-3" style="text-align: center;">
					<div class="card">
						<a href="<%=request.getContextPath()%>/trackingControl.jsp"
							class="mt-4"> <i class="fas fa-map-marked-alt fa-5x is"></i>
							<h5 style="color: black;">Tracking Control</h5>
						</a>
					</div>

				</div>

				<div class="col-lg-3" style="text-align: center;">
					<div class="card">
						<a href="<%=request.getContextPath()%>/employeeViewer" class="mt-4"> <i
							class="fas fa-hard-hat fa-5x is"></i>
							<h5 style="color: black;">Workers Info</h5>
						</a>
					</div>

				</div>
				      <div class="col-lg-3" style="text-align: center;">
        <div class="card">
          <a href="workers info.html" class="mt-4">
            <i class="fas fa-user-plus fa-5x is ml-4"></i>
            <h5 style="color: black;">Signup</h5>
          </a>
        </div>

      </div>

			</div>
		</div>
	</div>








	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>