
<section>
	<div class="smlnav ">
		<!--pt-2 pt-lg-4-->
		<div class="row ">
			<div class="col-lg-4 justify-content-center align-items-center">
				<%
				String userName = (String) session.getAttribute("userName");

				if (userName != null) {
				%>
				<ul class="x xx">
					<li><a href="#"><%=userName%></a></li>
					<li class="ml-4"><a
						href="<%=request.getContextPath()%>/logout">Logout</a></li>
				</ul>
				<%
				} else {
				%>
				<ul class="x xx">
					<li><a href="" data-toggle="modal" data-target="#exampleModal">log
							in |</a></li>
					<li class="ml-4"><a href="signup.jsp">Create Account</a></li>
				</ul>

				<%
				}
				%>

			</div>
			<div class="col-lg-3"></div>
			<div class="col-lg-5 col-sm-12">
				<ul class="x ">
					<li><a href="#" class="mr-2">Call Us at: 01831553096 | </a></li>
					<li><a href="#" class="mr-2"><i class="fab fa-instagram"></i></a></li>
					<li><a href="#" class="mr-2"><i class="fab fa-twitter"></i></a></li>
					<li><a href="#" class="mr-2"><i class="fab fa-facebook-f"></i></a></li>
					<li><a href="#"><i class="fab fa-youtube"></i></a></li>
					<li><a href="login.jsp" class="ml-3"><i class="fas fa-user-circle fa-1x"> ADMIN</i></a></li>
				</ul>
			</div>
		</div>
	</div>
</section>

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


		<h6 class="mb-1">CMS</h6>
		COURIER

	</div>

	<!-- Navbar links -->
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a
				class="nav-link text-center text-md-left" href="home.jsp">HOME</a></li>

			<li class="nav-item"><a
				class="nav-link text-center text-md-left" href="#feedback">FEEDBACK</a>
			</li>
			<li class="nav-item"><a
				class="nav-link text-center text-md-left" href="ContactUs.jsp">CONTACT</a>
			</li>
		</ul>
	</div>
</nav>

<div id="PopoverContent" style="display: none;">
	<div class="input-group">
		<input type="text" class="form-control"
			placeholder="Recipient's username"
			aria-label="Recipient's username with two button addons"
			aria-describedby="button-addon1">
		<div class="input-group-append" id="button-addon1">
			<button class="btn btn-outline-primary" type="button"
				data-toggle="popover" data-placement="bottom" data-html="true"
				data-title="Search">
				<i class="fas fa-search"></i>
			</button>
		</div>
	</div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title mx-auto pl-5" id="exampleModalLabel ">Login</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container">
					<div class="row">
						<div class="col">
							<form id="loginForm" action="login" method="post">
						<small    class="text-danger text-centre" id="errorMsg" ></small >
 
								<div class="form-group ">
									<label for="usr">Email</label> <input type="email"
										class="form-control" name="email"
										placeholder="Enter your Email / User name"
										aria-label="Recipient's username with two button addons"
										aria-describedby="button-addon4">
									<c:if test="${errors.email != null }">

										<small class="text-danger">${errors.email}</small>

									</c:if>
								</div>
								<div class="form-group">
									<label for="pwd"> Password</label> <input type="password"
										class="form-control" name="password"
										placeholder="Enter your Password"
										aria-label="Recipient's username with two button addons"
										aria-describedby="button-addon4">
									<c:if test="${errors.password != null }">

										<small class="text-danger">${errors.password}</small>

									</c:if>
								</div>

								<div class="modal-footer mx-auto">
									<!--button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button-->
									<button type="submit" class="btn btn-primary mx-auto" >Login</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div style="text-align: center;" class="pt-1 pb-3">
				<a href="#"><p>forgot password?</p></a>Or<a href="#"><h6>sign
						up</h6></a>
			</div>
		</div>
	</div>
</div>