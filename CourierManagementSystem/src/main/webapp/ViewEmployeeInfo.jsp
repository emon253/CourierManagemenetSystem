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
<link rel="stylesheet" href="View request.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>



<title>CMS Courier</title>
</head>
<body>

	<!--small navigation Start-->
	<section>
		<div class="smlnav ">
			<!--pt-2 pt-lg-4-->
			<div class="row ">
				<div class="col-lg-4 justify-content-center align-items-center">

					<%@include file="includes/admin_securePage_controller.jsp"%>


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
			<h4>Workers Information</h4>
		</div>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<div class="thm1 mx-auto" style="align-items: center;">
				<h4>Workers Information</h4>
			</div>


			<ul>
				<li class="navbar-nav dropdown"><a
					class="nav-link dropdown-toggle text-center text-md-left" href="#"
					id="navbardrop" data-toggle="dropdown"> HOME </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="adminpanel.jsp">ADMIN</a> <a
							class="dropdown-item" href="home.jsp">HOME</a>
					</div></li>
			</ul>

		</div>

	</nav>


	<!--navbar ends-->


	<div class="container">
		<div class="row">
			<div class="col-sm-3 mt-5">

				<h6>Select Designation</h6>
				<select id="designation" class="form-control">
					<option value="1">Select All</option>
					<option value="Manager">Manager</option>
					<option value="DeliveryMan">Delivery Man</option>
				</select>
			</div>
		</div>

		<div class="input-group mb-3 mt-5" style="width: 50%;">
			<input name="searchField" id="searchField" type="text"
				class="form-control" placeholder="Username or Id "
				aria-label="Recipient's username" aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button id="searchButton" class="btn btn-outline-secondary"
					type="button">Search</button>
			</div>
		</div>


		<div class="bg ">
			<div class=" card  mb-5">

				<table class="table ">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Phone</th>
							<th scope="col">Designation</th>
							<th scope="col">Address</th>
						</tr>
					</thead>
					<tbody id="tableBody">

						<c:forEach items="${employeeList}" var="employee">
							<tr>
								<th scope="row"><c:out value="${employee.id}" /></th>
								<td><c:out value="${employee.name}" /></td>
								<td><c:out value="${employee.email}" /></td>
								<td><c:out value="${employee.phone}" /></td>
								<td><c:out value="${employee.designation}" /></td>
								<td><c:out value="${employee.address}" /></td>
							</tr>

						</c:forEach>

					</tbody>
				</table>

			</div>
		</div>
	</div>

	<script type="text/javascript">
		$("#designation").click(function() {
			let val = $('#designation').val();

			console.log(val)
			$.ajax({
				type : 'GET',
				url : 'employeeViewer',
				success : function(resp) {
				}
			});

		});

		$("#searchField").keyup(
				function() {
					$.ajax({
						type : 'POST',
						url : 'employeeViewer',
						data : {
							searchKey : $('#searchField').val()
						},
						success : function(resp) {
							$('#tableBody').empty();

							const employee = JSON.parse(resp);
							for (i = 0; i < employee.length; i++) {

								$('table').append(
										'<tr>' + '<th scope="row">'
												+ employee[i].id + '</th>'
												+ '<td>' + employee[i].name
												+ '</td>' + '<td>'
												+ employee[i].email + '</td>'
												+ '<td>' + employee[i].phone
												+ '</td>' + '<td>'
												+ employee[i].designation
												+ '</td>' + '<td>'
												+ employee[i].address + '</td>'
												+ '<tr/>');
							}
						}
					})
				});

		/* 	 $('#searchFields'').on('click',function () {
		
						 
		
		
		
		 // window.location.replace("employeeViewer");

		 $.ajax({
		 type:'GET',
		 url:'emoloyeeViewer',
		 success:function(resp){
		 }
		 });
		 });  
		
		 */
	</script>



	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>