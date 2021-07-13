<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
<section>
	<div class="smlnav ">
		<!--pt-2 pt-lg-4-->
		<div class="row ">
			<div class="col-lg-7 justify-content-center align-items-center">
				<%
				String userName = (String) session.getAttribute("userName");

				if (userName != null) {
				%>
				<ul class="x xx">
					<li><a href="#"><%=userName%></a></li>
					<li class="ml-4"><a
						href="<%=request.getContextPath()%>/logout?u=user">Logout</a></li>
				</ul>
				<%
				} else {
					request.setAttribute("loginMsg", "Please login first");
				response.sendRedirect("home.jsp");
				%>
				
				<ul class="x xx">
					<li><a href="home.jsp">log in |</a></li>
					<li class="ml-4"><a href="signup.jsp">Create Account</a></li>
				</ul>

				<%
				}
				%>

			</div>
			
			<div class="col-lg-5 col-sm-12">
				<ul class="x ">
					<li><a href="#" class="mr-2">Call Us at: 01831553096 | </a></li>
					<li><a href="#" class="mr-2"><i class="fab fa-instagram"></i></a></li>
					<li><a href="#" class="mr-2"><i class="fab fa-twitter"></i></a></li>
					<li><a href="#" class="mr-2"><i class="fab fa-facebook-f"></i></a></li>
					<li><a href="#"><i class="fab fa-youtube"></i></a></li>
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
				class="nav-link text-center text-md-left" href="#contact">CONTACT</a>
			</li>
		</ul>
	</div>
</nav>

</body>
</html>
