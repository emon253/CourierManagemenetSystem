<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>CMS Courier</title>
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="Feedback.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>



<body>
	<%@include file="includes/header.jsp"%>
	<div class="Main container-fluid">
		<div class="container mt-3">
			<header class="text-center mb-5">
				<h2>Feedback</h2>
				<c:if test="${success != null }">
					<div class="alert  alert-success" role="alert">${success}</div>
				</c:if>
				<c:if test="${error != null }">
					<div class="alert  alert-warning" role="alert">${error}</div>
				</c:if>
			</header>
			<div class="row">
				<div class="col-lg-6 col-sm-12">
					<form action="feedback?feedback=submit" method="post" class="feedback_form mb-5">
						<div class="form_group">
							<input type="email" class="form_control" name="email" id="email"
								placeholder="Enter your Email">
							<c:if test="${errors.email != null }">
								<small class="text-danger">${errors.email}</small>
							</c:if>
							
						</div>
						<div class="form_group">
							<input type="text" name="subject" id="subject"
								class="form_control" placeholder="Subject">
							<c:if test="${errors.subject != null }">
								<small class="text-danger">${errors.subject}</small>
							</c:if>
						</div>
						<div class="form_group">
							<textarea name="message" id="message" class="form_control"
								rows="5" placeholder="Enter your message"></textarea>

							<c:if test="${errors.message != null }">
								<small class="text-danger">${errors.message}</small>
							</c:if>
						</div>
						<button type="submit" class="btn btn-primary btn-lg">Send</button>
					</form>
				</div>

				<div class="col-lg-6 col-sm-12 address-container">
					<ul class="list-unstyled">
						<li><span class="fa-icon"> <i class="fa fa-phone"
								aria-hidden="true"></i>
						</span> + 12 34 56 78</li>
						<li><span class="fa-icon"> <i class="fa fa-at"
								aria-hidden="true"></i>
						</span> cms@gmail.com</li>
						<li><span class="fa-icon"> <i
								class="fa fa fa-map-marker" aria-hidden="true"></i>
						</span> Mirpur-10, Dhaka 1212</li>
					</ul>
					<h3>Follow us on social networks</h3>
					<a href="http://www.facebook.com" title="" class="fa-icon"> <i
						class="fa fa-facebook"></i>
					</a> <a href="http://www.twitter.com" title="" class="fa-icon"> <i
						class="fa fa-twitter"></i>
					</a> <a href="http://www.youtube.com" title="" class="fa-icon"> <i
						class="fa fa-youtube"></i>
					</a>

				</div>
			</div>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>

</body>
</html>