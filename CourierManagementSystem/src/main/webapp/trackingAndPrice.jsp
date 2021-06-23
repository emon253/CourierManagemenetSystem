<%@page import="dto.ParcelRequestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Tracking and Price</title>
<script src="https://kit.fontawesome.com/a14342fe13.js"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/trackingAndPrice.css">
</head>
<body>
	<%@include file="includes/securedHeader.jsp"%>

	<%
	ParcelRequestDTO pRequest = (ParcelRequestDTO) session.getAttribute("parcelRequest");
	System.out.println(pRequest);
	%>

	<div class="Main_body d-flex">
		<div class="container-fluid">
			<div class="container mt-4 mb-4 pt-2">
				<div class="rounded-pill text-center mt-4 mb-4"
					style="color: white; background: #17A2B8;">
					<h4 class="pt-1 pb-2 rounded-pill">Providing Tracking Number
						and Total Cost</h4>
				</div>
				<!-- table start here -->
				<div>
					<table class="table">

						<tr>
							<th class="border border-dark">Tracking Number</th>
							<th class="border border-dark">Pickup Point</th>
							<th class="border border-dark">Destination Point</th>
							<th class="border border-dark">Total Cost</th>
						</tr>
						<tr>
							<td class="border border-dark"><%=pRequest.getParcelID()%></td>
							<td class="border border-dark"><%=pRequest.getpSubDistrict() + ", " + pRequest.getpDistrict() + ", " + pRequest.getdDivision() + ", "
		+ pRequest.getpFullAddress()%></td>
							<td class="border border-dark"><%=pRequest.getpSubDistrict() + ", " + pRequest.getdDistrict() + ", " + pRequest.getdDivision() + ", "
		+ pRequest.getdFullAddress()%></td>
							<td class="border border-dark"><%=pRequest.getPrice()%></td>
						</tr>
					</table>
				</div>
				<!-- table ends -->

				<hr class="my-4">

				<!-- Payment methods start -->
				<form action="ParcelRequestServlet" method="post"
					class="needs-validation">
					<div>
						<h5>Payment</h5>
						<h6 class="mt-4 mb-3">Chose payment Type</h6>
					</div>

					<!-- radio buttons start -->
					<!--div class="my-3">
					<div class="form-check">
						<input id="credit" type="radio" name="paymentMethod" class="form-check-input" checked required>
						<label class="form-check-label" for="credit">Credit Card</label>
					</div>
					<div class="form-check">
						<input id="debit" type="radio" name="paymentMethod" class="form-check-input" checked required>
						<label class="form-check-label" for="debit">Debit Card</label>
					</div>
					<div class="form-check">
						<input id="bkash" type="radio" name="paymentMethod" class="form-check-input" checked required>
						<label class="form-check-label" for="bkash">Bkash</label>
					</div>
				</div-->
					<!-- radio buttons end -->


					<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="pills-credit-tab" data-toggle="pill" href="#pills-credit"
							role="tab" aria-controls="pills-credit" aria-selected="true">Credit</a>
						</li>
						<li class="nav-item"><a class="nav-link" id="pills-debit-tab"
							data-toggle="pill" href="#pills-debit" role="tab"
							aria-controls="pills-debit" aria-selected="false">Debit</a></li>
						<li class="nav-item"><a class="nav-link" id="pills-bkash-tab"
							data-toggle="pill" href="#pills-bkash" role="tab"
							aria-controls="pills-bkash" aria-selected="false">Bkash</a></li>
						<li class="nav-item"><a class="nav-link" id="pills-cash-tab"
							data-toggle="pill" href="#pills-cash" role="tab"
							aria-controls="pills-cash" aria-selected="false">Cash on
								delivery</a></li>
					</ul>
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active" id="pills-credit"
							role="tabpanel" aria-labelledby="pills-credit-tab">
							<div class="row">
								<div class="col-lg-5">
									<label for="cc-name" class="form-label">Name on card</label> <input
										type="text" class="form-control" id="cc-name" placeholder=""
										required=""> <small class="text-muted">Full
										name as displayed on card</small>
									<div class="invalid-feedback">Name on card is required</div>
								</div>

								<div class="col-lg-5">
									<label for="cc-number" class="form-label">Credit card
										number</label> <input type="text" class="form-control" id="cc-number"
										placeholder="" required="">
									<div class="invalid-feedback">Credit card number is
										required</div>
								</div>

								<div class="col-lg-5">
									<label for="cc-expiration" class="form-label">Expiration</label>
									<input type="text" class="form-control" id="cc-expiration"
										placeholder="" required="">
									<div class="invalid-feedback">Expiration date required</div>
								</div>

								<div class="col-lg-5">
									<label for="cc-cvv" class="form-label">CVV</label> <input
										type="text" class="form-control" id="cc-cvv" placeholder=""
										required="">
									<div class="invalid-feedback">Security code required</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="pills-debit" role="tabpanel"
							aria-labelledby="pills-debit-tab">
							<div class="row">
								<div class="col-lg-5">
									<label for="cc-name" class="form-label">Name on card</label> <input
										type="text" class="form-control" id="cc-name" placeholder=""
										required=""> <small class="text-muted">Full
										name as displayed on card</small>
									<div class="invalid-feedback">Name on card is required</div>
								</div>

								<div class="col-lg-5">
									<label for="cc-number" class="form-label">Credit card
										number</label> <input type="text" class="form-control" id="cc-number"
										placeholder="" required="">
									<div class="invalid-feedback">Credit card number is
										required</div>
								</div>

								<div class="col-lg-5">
									<label for="cc-expiration" class="form-label">Expiration</label>
									<input type="text" class="form-control" id="cc-expiration"
										placeholder="" required="">
									<div class="invalid-feedback">Expiration date required</div>
								</div>

								<div class="col-lg-5">
									<label for="cc-cvv" class="form-label">CVV</label> <input
										type="text" class="form-control" id="cc-cvv" placeholder=""
										required="">
									<div class="invalid-feedback">Security code required</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="pills-bkash" role="tabpanel"
							aria-labelledby="pills-bkash-tab">
							<div class="row">
								<div class="col-lg-5">
									<label for="cc-name" class="form-label">Bkash Number</label> <input
										type="number" min="0" class="form-control" id="cc-name"
										placeholder="" required=""> <small class="text-muted">
									</small>
									<div class="invalid-feedback">Enter Bkash Account Number
									</div>
								</div>

								<div class="col-lg-5">
									<label for="cc-number" class="form-label">Enter pin</label> <input
										type="number" min="0" class="form-control" id="cc-number"
										placeholder="" required="">
									<div class="invalid-feedback">Pin is required</div>
								</div>

							</div>
						</div>

						<div class="form-check tab-pane fade" id="pills-cash"
							role="tabpanel" aria-labelledby="pills-cash-tab">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1"><h6>Cash On Delivery</h6></label>
						</div>
					</div>




					<hr class="my-4">

				</form>
				<form id="checkoutForm" action="ParcelRequestServlet" method="get">
<button class="w-10 btn btn-primary btn-sm mb-5" type="submit">Continue
					to checkout</button>
				</form>
				
			</div>
		</div>


	</div>

	<footer>
		<%@include file="/includes/footer.jsp"%></footer>


</body>
</html>