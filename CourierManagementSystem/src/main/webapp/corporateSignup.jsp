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
<link rel="stylesheet" href="css/corporate account create.css">
<title>CMS Courier</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
	
</script>
</head>
<body>

	<!--small navigation Start-->
	<section>
		<div class="smlnav ">
			<!--pt-2 pt-lg-4-->
			<div class="row ">
				<div class="col-lg-4 justify-content-center align-items-center">

					<ul class="x xx">
						<li style="list-style-type: none;">Alreaady registered?</li>
						<li class="ml-4"><a href="adminlogin.jsp">login</a></li>

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
			<h4>Corporate Account Crete</h4>
		</div>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<div class="thm1 mx-auto" style="align-items: center;">
				<h4>Corporate Account Create</h4>
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
						<a class="dropdown-item" href="admin panel.html">ADMIN</a> <a
							class="dropdown-item" href="home.html">HOME</a>
					</div></li>
			</ul>

		</div>

	</nav>


	<!--navbar ends-->

	<div class="bg d-flex">

		<div class="container-fluid p-0">

			<div class="contain">
				<div class=" row contain2 mx-auto pr-5 pl-5">


					<form action="adminSignup" method="post" class="mx-auto">
						<div class="row">
							<div class="col-12 mt-4 mb-5">
								<div class="bgst">
									<h4>Create an Corporate Account</h4>
								</div>

							</div>
							<div class="col-lg-12 was-validated">

								<div class="form-group">
									<label for="name">Name:</label> <input type="text"
										class="form-control" id="name"
										placeholder="Enter Corporate Name" name="name" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>

								<div class="form-group">
									<label for="email">Email:</label> <input type="email"
										class="form-control" id="email" placeholder="Enter email"
										name="email" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>



							</div>
							<div class="col-lg-5">

								<div class="form-group was-validated">
									<label id="passlbl" for="pwd">Password</label> <input type="password"
										class="form-control" placeholder="Password" id="password" name="password"
										required>
										<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Atleast 6 charecter.</div>
								</div>


								<div class="form-group was-validated">
									<label id="cpasslbl"  for="pwd">Confirm Password</label> <input
										type="password" min="6" class="form-control"
										placeholder="Confirm Password" id="confirmPassword"  name="confirmPassword" required>


								</div>

								<div class="form-group">
									<label for="designation">Designation</label> <select
										id="designation" name="designation" class="form-control">
										<option value="default" disabled selected>Select</option>
										<option value="Manager">Manager</option>
										<option value="DeliveryMan">Delivery Man</option>

									</select>
								</div>


							</div>
							<div class="col-lg-5 mx-auto was-validated">

								<div class="form-group">
									<label for="phone">Phone:</label> <input type="number"
										class="form-control" placeholder="Phone" name="phone" required>
									<div class="valid-feedback">Valid.</div>
									<div class="invalid-feedback">Please fill out this field.</div>
								</div>
								<div class="form-group">
									<label id="cidlbl" for="pwd">Corporate ID</label> <input type="text"
										class="form-control" placeholder="Corporate ID" id="id" name="id"
										required>

								</div>

							</div>
							<div class="col-lg-12 ">
								<div class="form-group">
									<label for="comment">Enter your Address:</label>
									<textarea name="address" class="form-control ta" rows="5"
										id="comment"></textarea>

								</div>
							</div>



						</div>

						<button type="submit" class="btn btn-info m-3 ">Submit</button>
						<button type="submit" class="btn btn-info m-3 ">Cancel</button>

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

	<footer> </footer>

	<script type="text/javascript">
		$('#designation').on('change', function() {
			if ($('#designation').val() == "DeliveryMan") {
				$("#id"). hide();
				$("#password"). hide();
				$("#confirmPassword"). hide();

				$("#passlbl"). hide();
				$("#cpasslbl"). hide();
				$("#cidlbl"). hide();



			}else{
				$("#passlbl"). show();
				$("#cpasslbl"). show();
				$("#cidlbl"). show();

				$("#id"). show();
				$("#password"). show();
				$("#confirmPassword"). show();
			}

		})
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js">
		
	</script>


</body>
</html>