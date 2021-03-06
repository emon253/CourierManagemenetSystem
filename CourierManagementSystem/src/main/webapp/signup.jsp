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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>CMS Courier</title>
</head>
<body>
	<%@include file="includes/header.jsp"%>
	<div class="bg1 d-flex">

		<div class="container-fluid p-0">

			<div class="contain">
				<div class=" row contain2 mx-auto pr-5 pl-5">


					<form action="signup" method="post">
						<div class="row">
							<div class="col-12 mt-4 mb-5">
								<div class="bgst">
									<h4>Create an Account</h4>
								</div>
								<c:if test="${errors.emailExistance != null }">
									<div class="alert alert-warning alert-dismissible fade show"
										role="alert">
										<strong>${errors.emailExistance}</strong>
									</div>
								</c:if>


							</div>
							<div class="col-lg-12">

								<div class="form-group was-validated ">
									<label for="uname">Name:</label> <input type="text"
										class="form-control" id="name" placeholder="Enter Full Name"
										name="name" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
									<c:if test="${errors.name != null }">
										<small class="text-danger">${errors.name}</small>
									</c:if>
								</div>

								<div class="form-group was-validated">
									<label for="email">Email:</label> <input type="email"
										class="form-control" id="email" placeholder="Enter email"
										name="email" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
									<c:if test="${errors.email != null }">
										<small class="text-danger">${errors.email}</small>
									</c:if>
								</div>



							</div>
							<div class="col-lg-5">

								<div class="form-group was-validated">
									<label for="pwd">Password</label> <input type="password"
										class="form-control" placeholder="Password" name="password"
										required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
									<c:if test="${errors.password != null }">
										<small class="text-danger">${errors.password}</small>
									</c:if>

									<c:if test="${errors.passError != null }">
										<small class="text-danger">${errors.passError}</small>
									</c:if>
								</div>


								<div class="form-group was-validated">
									<label for="pwd">Confirm Password</label> <input
										type="password" min="6" class="form-control"
										placeholder="Confirm Password" name="confirmPassword" required>

									<c:if test="${errors.confirmPassword != null }">
										<small class="text-danger">${errors.confirmPassword}</small>
									</c:if>

									<c:if test="${errors.passError != null }">
										<small class="text-danger">${errors.passError}</small>
									</c:if>
								</div>


							</div>
							<div class="col-lg-5 mx-auto was-validated">

								<div class="form-group">
									<label for="phone">Phone:</label> <input type="number"
										class="form-control" placeholder="Phone" name="phone" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
									<c:if test="${errors.phone != null }">
										<small class="text-danger">${errors.phone}</small>
									</c:if>
								</div>
								<div class="form-group">
									<label for="pwd">User ID</label> <input type="text"
										class="form-control" placeholder="User ID" name="userName"
										required>
									<c:if test="${errors.userName != null }">
										<small class="text-danger">${errors.userName}</small>
									</c:if>

									<c:if test="${errors.userExistance != null }">
										<small class="text-danger">${errors.userExistance}</small>
									</c:if>
								</div>

							</div>
							<div class="col-lg-12 ">
								<div class="form-group">
									<label for="comment">Enter your Address:</label>
									<textarea class="form-control ta" rows="5" name="address"
										id="comment"></textarea>
									<c:if test="${errors.address != null }">
										<small class="text-danger">${errors.address}</small>
									</c:if>
								</div>
							</div>



						</div>
						<div id="toast" class="toast" role="alert" data-animation="true"
							
							aria-live="polite" aria-atomic="true" data-delay="3000">
							<div class="toast-body">
								<div id="toastMsg" class="text-center ">Please enter email first</div>
							</div>
						</div>

						<input type="text" class="" placeholder="Enter otp"
							name="otpField">
						<button type="button" id="otpBtn"
							class="btn btn-success btn-sm m-3 " onclick="sendOTP()">Send
							OTP</button>
						<label id="label"></label> <br> <label id="label2"></label> <br>

						<c:if test="${errors.otpMsg != null }">
							<small class="text-danger">${errors.otpMsg}</small>
						</c:if>
						<br>
						<button type="submit" class="btn btn-info m-3 ">Submit</button>
						<button type="submit" class="btn btn-danger m-3 "
							onclick="location.href='home.jsp'">Cancel</button>

					</form>
					<div class="col-12">
						<p>
							By Creating an account you are accepting our <a href="#">terms
								and condition.</a>
						</p>
					</div>





				</div>
			</div>


		</div>

	</div>
	<footer>
		<%@include file="/includes/footer.jsp"%></footer>
	<script type="text/javascript">
		function count() {
			var counter = 60;
			setInterval(function() {
				counter--;
				if (counter >= 0) {
					console.log(counter)
					//$("#label2").remove();
					$("#label2").html(
							"<small class='text-danger'> Send again " + counter
									+ "</small>");

				}
				// Display 'counter' wherever you want to display it.
				if (counter === 0) {
					clearInterval(counter);
					$("#otpBtn").html("Send Again");
					$("#otpBtn").show();
					$("#label").hide();
					$("#label2").hide();

				}

			}, 1000);

		}

		function sendOtpRequest(email) {

			$.ajax({
				type : 'GET',
				url : 'signup?otp=true',
				data : {
					email : email
				},
				success : function(resp) {

					console.log("success")
					count();

				}
			});

		}
	
		function sendOTP() {
			$("#label").html("<small class='text-danger'></small>");
			$("#label2").html("<small class='text-danger'></small>");

			$("#label").show();
			$("#label2").show();
			const email = $('#email').val();

			if (email != "") {
				$("#label")
						.append(
								"<small class='text-danger'>An otp has been sent to your email</small>")
				sendOtpRequest(email);
				$("#otpBtn").hide();

			} else {
				$('#toast').toast('show');

			}
		}
	</script>

</body>
</html>

