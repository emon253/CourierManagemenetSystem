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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="home.css">
<title>CMS Courier</title>
</head>
<body>

	<%
	String id = (String) session.getAttribute("msg");

	if (id == "success") {
	%>
	<div class="alert alert-warning alert-dismissible fade show"
		role="alert">
		<strong>Success !</strong> Your parcel request has been sent.....
		<button type="button" class="close" data-dismiss="alert"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<%
	}

	session.removeAttribute("msg");
	%>

	<!--small navigation Start-->
	<%@include file="includes/header.jsp"%>

	<!--small navigation end-->


	<!--navbar start -->


	<!--navbar ends-->

	<!--banner Class Starts-->
	<header>

		<section id="banner">
			<div
				class="banner-container d-flex justify-content-center align-items-center">
				<div class="banner-contents">

					<h1
						class=" mt-5 font-weidth-bolder col-lg-5 text-lg-left text-white mb-5">We
						Are Top Courier & Mover Service In Worldwide</h1>

					<div id="toast" class="toast" role="alert" data-animation="true"
					style="position: absolute; top: 52%; left: 15%;"	aria-live="polite" aria-atomic="true" data-delay="3000">
						<div class="toast-body">
							<div class="text-center ">Please login first</div>
						</div>
					</div>
					<%
					if (user != null) {
					%>
					<a href="parcelrequest.jsp"
						class="ml-5 mt-2 btn btn-lg btn-outline-primary mr-1"> Send
						parcel</a>
					<%
					} else {
					%>

					<a onclick="loginToast()"
						class="ml-5 mt-2 btn btn-lg btn-outline-primary mr-1"> Send
						parcel</a>
					<%
					}
					%>
					<a href="trackingSearch.jsp"
						class="ml-5 mt-2 btn btn-lg btn-outline-info mr-1">Track order</a>

				</div>

			</div>
		</section>

	</header>
	<!--banner class ends -->


	<!--features starts-->

	<main>
		<section id="features">
			<div class="row">
				<div class="col-lg-4 d-block pb-2 ">
					<div class="head">
						<i class="fas fa-clipboard-list fa-3x icon-style float-left"></i>
						<h6 class="">Step-1</h6>
						<h4 class=" font-width-bold">Applly Online</h4>
					</div>
					<div class="features-col text-center">

						<p class="small">
						<h6>From our websight Any one can easily Requist parcel order</h6>
						</p>
					</div>
				</div>
				<div class="col-lg-4 d-block pb-2">
					<div class="head">
						<i class="fas fa-file-alt fa-3x icon-style float-left"></i>
						<h6>Step-2</h6>
						<h4 class="font-width-bold">Submit Document</h4>
					</div>
					<div class="features-col text-center">

						<p class="small">
						<h6>Submit Information About Your Packege which was
							previously provided</h6>
						</p>
					</div>
				</div>
				<div class="col-lg-4 pb-2">
					<div class="head">
						<i class="fas fa-handshake fa-3x icon-style float-left"></i>
						<h6>Step-3</h6>
						<h4 class="font-width-bold">Receive Goods</h4>
					</div>
					<div class="features-col text-center">

						<p class="small">
						<h6>If your documentation is correct then you can recive your
							parcel</h6>
						</p>
					</div>
				</div>

			</div>

		</section>

		<!--features ends-->



	</main>


	<footer>
		<%@include file="/includes/footer.jsp"%></footer>

	<script type="text/javascript">
		function loginToast() {
			$('#toast').toast('show')
			console.log("clicked")
		}

		$("#loginForm").on('submit', function(e) {
			var fData = $(this).serialize();

			e.preventDefault();
			$.ajax({
				url : "login",
				data : fData,
				type : "POST",
				success : function(response) {
					if (response.trim() == 'success') {
						window.location.replace("home.jsp");
					} else {
						$('#errorMsg').text("Incorrect user name or password");
					}

				}
			});
		});
	</script>







</body>
</html>