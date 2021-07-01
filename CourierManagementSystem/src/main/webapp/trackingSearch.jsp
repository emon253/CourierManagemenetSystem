<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/Traking.css">
<title>Track Parcel</title>
</head>
<body>

	<%@include file="includes/header.jsp"%>

	<div class="bg d-flex">

		<div class="container-fluid p-0">

			<div class="contain">
				<div class=" row contain2 mx-auto pr-5 pl-5">


					<form id="form" action="TrackParcel" method="post"
						class="was-validated mx-auto">
						<div class="d-flex justify-content-center">
							<c:if test="${parcelNotfoundError != null }">


								<div class="toast" role="alert" data-animation="true"
									aria-live="polite" aria-atomic="true" data-delay="3000">
									<div class="toast-body">
										<div class="text-center">${parcelNotfoundError}</div>
									</div>
								</div>

							</c:if>

						</div>





						<div class="row">
							<div class="col-12 mt-4 mb-5">
								<div class="bgst">
									<h4>Track Your Order</h4>
								</div>

							</div>
							<div class="col-lg-10">

								<div class="form-group">
									<input type="text" name="search" required="required"
										id="search-menu" placeholder="Enter Order ID">

								</div>


							</div>
							<div class="col-lg-2 mt-3">
								<button type="submit" class="btn m-3">TRACK</button>

							</div>



						</div>


					</form>




				</div>
			</div>


		</div>



	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.toast').toast('show');

		});
		
		
		
	</script>
	<footer>
		<%@include file="/includes/footer.jsp"%></footer>

</body>
</html>