<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/a14342fe13.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="parcelrequest.css">
<title>CMS Courier</title>
</head>
<body>

	<!--small navigation Start-->
	<%@include file="includes/securedHeader.jsp"%>

	<!--small navigation end-->


	<!--navbar start -->



	<div class="bg d-flex">




		<div class="container-fluid p-0">

			<div class="contain">
				<div class=" row contain2 mx-auto pr-5 pl-5">

 
					<form action="ParcelRequestServlet" method="post"
						class="was-validated mx-auto">
						<div class="row">
							<div class="col-12 mt-4 mb-5">
								<div class="bgst">
									<h4>Please Provide Your Information</h4>
								</div>

							</div>
							<div class="col-lg-4">

								<div class="form-group">
									<label for="uname">Full Name:</label> <input type="text"
										class="form-control" id="name" placeholder="Enter Your Name"
										name="name" required>
									<!-- <div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div> -->
									<c:if test="${errors.name != null }">
										<small class="text-danger">${errors.name}</small>
									</c:if>

								</div>
								<div class="form-group">
									<label for="weight">Weight:</label> <input type="number"
										min="1" class="form-control" placeholder="Enter Weigth"
										name="parcelWeight" id = "parcelWeight" required>
									<c:if test="${errors.parcelWeight != null }">
										<small class="text-danger">${errors.parcelWeight}</small>
									</c:if>
								</div>


							</div>
							<div class="col-lg-4">

								<div class="form-group pl-lg-5">
									<label for="email">Email:</label> <input type="email"
										class="form-control" id="email" placeholder="Enter email"
										name="email" required>
									<c:if test="${errors.email != null }">
										<small class="text-danger">${errors.email}</small>
									</c:if>
								</div>


							</div>
							<div class="col-lg-4">

								<div class="form-group pl-lg-5 ">
									<label for="phone">Phone:</label> <input type="number"
										class="form-control" placeholder="Phone" name="phone" id="phone" required>
									<c:if test="${errors.phone != null }">
										<small class="text-danger">${errors.phone}</small>
									</c:if>
								</div>

							</div>



						</div>



						<div class="row">
							<div class="col-12 mt-5">
								<div class="bgst">
									<h4 class="text-center">Address</h4>
								</div>

								<h5 class="mt-5 mb-3">Pickup Point</h5>
							</div>
							<div class="col-lg-4">

								<div class="form-group ">
									<label for="division">Division:</label> <input type="text"
										class="form-control" placeholder="Enter division"
										name="pDivision" id="pDivision" required>
									<c:if test="${errors.pDivision != null }">
										<small class="text-danger">${errors.pDivision}</small>
									</c:if>
								</div>


							</div>
							<div class="col-lg-4">

								<div class="form-group pl-lg-5">
									<label for="email">District:</label> <input type="text"
										class="form-control" placeholder="Enter district"
										name="pDistrict" id="pDistrict" required>
									<c:if test="${errors.name != null }">
										<small class="text-danger">${errors.name}</small>
									</c:if>
								</div>


							</div>
							<div class="col-lg-4">

								<div class="form-group pl-lg-5 ">
									<label for="phone">Sub District:</label> <input type="text"
										class="form-control" placeholder="Sub District"
										name="pSubDistrict" id="pSubDistrict" required>
									<c:if test="${errors.pSubDistrict != null }">
										<small class="text-danger">${errors.pSubDistrict}</small>
									</c:if>
								</div>

							</div>


							<!--updated code-->
							<div class="col-lg-12 ">
								<div class="form-group">
									<label for="comment">Full Address:</label>
									<textarea class="form-control ta" rows="5" name="pFullAddress"
										id="pFullAddress"></textarea>
									<c:if test="${errors.pFullAddress != null }">
										<small class="text-danger">${errors.pFullAddress}</small>
									</c:if>
								</div>
							</div>
							<!--updated code-->
						</div>


						<div class="row">
							<div class="col-12">

								<h5 class="mt-3 mb-3">Delivery Destination</h5>
							</div>
							<div class="col-lg-4">

								<div class="form-group">
									<label for="division">Division:</label> <input type="text"
										class="form-control" placeholder="Enter division"
										name="dDivision" id="dDivision"  required>
									<c:if test="${errors.dDivision != null }">
										<small class="text-danger">${errors.dDivision}</small>
									</c:if>
								</div>


							</div>
							<div class="col-lg-4">

								<div class="form-group pl-lg-5">
									<label for="email">District:</label> <input type="text"
										class="form-control" placeholder="Enter district"
										name="dDistrict" id="dDistrict"  required>
									<c:if test="${errors.dDistrict != null }">
										<small class="text-danger">${errors.dDistrict}</small>
									</c:if>
								</div>


							</div>
							<div class="col-lg-4">

								<div class="form-group pl-lg-5 ">
									<label for="phone">Sub District:</label> <input type="text"
										class="form-control" placeholder="Sub District"
										name="dSubDistrict" id="dSubDistrict"  required>
									<c:if test="${errors.dSubDistrict != null }">
										<small class="text-danger">${errors.dSubDistrict}</small>
									</c:if>
								</div>

							</div>

							<!--updated code-->

							<div class="col-lg-12 ">
								<div class="form-group">
									<label for="comment">Full Address:</label>
									<textarea class="form-control ta" rows="5" name="dFullAddress"
										id="dFullAddress"></textarea>
									<c:if test="${errors.dFullAddress != null }">
										<small class="text-danger">${errors.dFullAddress}</small>
									</c:if>
								</div>
							</div>

							<!--updated code-->


						</div>


						<button type="submit" class="btn btn-info m-3">Submit</button>

					</form>




				</div>
			</div>


		</div>



	</div>

	<footer> <%@include file = "/includes/footer.jsp" %></footer>




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