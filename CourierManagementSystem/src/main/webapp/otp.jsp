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
<link rel="stylesheet" href="css/signup.css">
<title>CMS Courier</title>
</head>
<body>
	<%@include file="includes/header.jsp"%>
	<div class="bg d-flex">

		<div class="container-fluid p-0">

			<div class="contain">
				<div class=" row contain2 mx-auto pr-5 pl-5">


					<form action="signup" method="get" class="was-validated mx-auto">
						<div class="row">
							<div class="col-12 mt-4 mb-5">
								<div class="bgst">
									<h4>OTP</h4>
								</div>

							</div>
							<div class="col-lg-12">

								<div class="form-group">
								 <input type="text"
										class="form-control" id="name" placeholder="Enter OTP here"
										name="otp" required>
									<c:if test="${errors.name != null }">
										<small class="text-danger">${errors.name}</small>
									</c:if>
								</div>
							</div>
						</div>

						<button type="submit" class="btn btn-info m-3 ">Submit</button>

					</form>

				</div>
			</div>


		</div>

	</div>
	<%@include file="includes/footer.jsp"%>

</body>
</html>

