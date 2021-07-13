
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Advent+Pro:wght@200&family=Baloo+Tammudu+2&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/login page.css">
<title>CMS Courier</title>
</head>
<body>
	<div class="bg d-flex">
		<div class="container-fluid p-0">

			<div class="contain">
				<div class="contain2 mx-auto">
					<div class="row">
						<div class="col-12 hi mt-3 mb-3">
							<button class="ml-3 bs">
								<i class="fas fa-house-user fa-2x icon"></i>
							</button>
							<div class="cnt">
								<button class=" bs ">
									<img src="photos/Capture.JPG" alt="">
								</button>
							</div>
							<!--input type="button" class="ml-3 mt-3" value="Home"-->
							<h4 class="cnt mt-3 fc">Sign In</h4>
							<c:if test="${errors.userloginError != null }">
								<div class="alert alert-warning text-center" role="alert">${errors.userloginError}</div>
							</c:if>
						</div>
						<div class="col-12 mt-5 one ">


							<form action="adminLogin" method="post">


								<div class="cnt form-group ">
									<input type="email" class=" mb-3 mt-5 ab" name="email"
										placeholder="Enter your Email / User name"><br>
									<c:if test="${errors.email != null }">

										<small class="text-danger">${errors.email}</small>

									</c:if>
								</div>


								<div class="cnt form-group ">

									<input type="password" class="ab" name="password"
										placeholder="Enter your Password"> <br>
									<c:if test="${errors.password != null }">

										<small class="text-danger">${errors.password}</small>

									</c:if>
								</div>
								<div class="cnt mx-auto bgc">
									<button type="submit" class="btn btn-default ">Log In</button>
								</div>
								<div class="fpsu cnt">
									<a href="">forgot password?</a>
								</div>
							</form>


						</div>


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