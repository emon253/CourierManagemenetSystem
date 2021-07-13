<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>CMS Courier</title>
	<script src="https://kit.fontawesome.com/a14342fe13.js" crossorigin="anonymous"></script>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/trackingAndPrice.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>


<div class="Main_body d-flex">
	<div class="container-fluid">
		<div class="container mb-4 mt-4 pt-2">
			<div class="rounded-pill text-center mt-4 mb-4" style="color: white; background: #17A2B8;">
				<h4 class="pt-1 pb-2 rounded-pill">Providing Tracking Number and Total Cost</h4>
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
						<td class="border border-dark">show tracking number here</td>
						<td class="border border-dark">show pickup here</td>
						<td class="border border-dark">show destination here</td>
						<td class="border border-dark">show total cost here</td>
					</tr>
				</table>
			</div>
			<!-- table ends -->

			<hr class="my-4">

			<!-- Payment methods start -->
			<form class="needs-validation"></form>
				<div>
					<h5>Payment</h5>
					<h6 class="mt-4 mb-3">Chose payment Type</h6>
				</div>


        <div class="container mt-5 p-5">
          <ul class="nav nav-tabs" id="ueberTab" role="tablist">
              <li class="nav-item"><a class="nav-link" id="first-tab" data-target="#panel_b_first" data-secondary="#panel_a_first" data-toggle="tab" href="#first" role="tab" aria-controls="first" aria-selected="false">Debit</a></li>
              <li class="nav-item"><a class="nav-link active" id="second-tab" data-target="#panel_b_second" data-secondary="#panel_a_second" data-toggle="tab" href="#second" role="tab" aria-controls="second" aria-selected="true">Credit</a></li>
              <li class="nav-item"><a class="nav-link" id="third-tab" data-target="#panel_b_thrid" data-secondary="#panel_a_third" data-toggle="tab" href="#third" role="tab" aria-controls="third" aria-selected="false">Bkash</a></li>
              <li class="nav-item"><a class="nav-link" id="fourth-tab" data-target="#panel_b_fourth" data-secondary="#panel_a_fourth" data-toggle="tab" href="#fourth" role="tab" aria-controls="fourth" aria-selected="false">Cash on Delivery</a></li>
          </ul>
          <div class="tab-content" id="ueberTabB">
              <div class="tab-pane fade" id="panel_b_first" role="tabpanel" aria-labelledby="first-tab">
                <div class="row p-4">
                  <div class="col-lg-5">
                      <label for="cc-name" class="form-label">Name on card</label>
                      <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                      <small class="text-muted">Full name as displayed on card</small>
                      <div class="invalid-feedback">
                          Name on card is required
                      </div>
                  </div>

                  <div class="col-lg-5">
                      <label for="cc-number" class="form-label">Credit card number</label>
                      <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                      <div class="invalid-feedback">
                          Credit card number is required
                      </div>
                  </div>

                  <div class="col-lg-5">
                      <label for="cc-expiration" class="form-label">Expiration</label>
                      <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                      <div class="invalid-feedback">
                          Expiration date required
                      </div>
                  </div>

                  <div class="col-lg-5">
                      <label for="cc-cvv" class="form-label">CVV</label>
                      <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                      <div class="invalid-feedback">
                          Security code required
                      </div>
                  </div>
              </div>
              </div>
              <div class="tab-pane fade show active" id="panel_b_second" role="tabpanel" aria-labelledby="second-tab">
                <div class="row p-4">
                  <div class="col-lg-5">
                      <label for="cc-name" class="form-label">Name on card</label>
                      <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                      <small class="text-muted">Full name as displayed on card</small>
                      <div class="invalid-feedback">
                          Name on card is required
                      </div>
                  </div>

                  <div class="col-lg-5">
                      <label for="cc-number" class="form-label">Credit card number</label>
                      <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                      <div class="invalid-feedback">
                          Credit card number is required
                      </div>
                  </div>

                  <div class="col-lg-5">
                      <label for="cc-expiration" class="form-label">Expiration</label>
                      <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                      <div class="invalid-feedback">
                          Expiration date required
                      </div>
                  </div>

                  <div class="col-lg-5">
                      <label for="cc-cvv" class="form-label">CVV</label>
                      <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                      <div class="invalid-feedback">
                          Security code required
                      </div>
                  </div>
              </div>
              </div>
              <div class="tab-pane fade" id="panel_b_thrid" role="tabpanel" aria-labelledby="third-tab">
                <div class="row p-4">
                  <div class="col-lg-5">
                      <label for="cc-name" class="form-label">Bkash Number</label>
                      <input type="number" min="0" class="form-control" id="cc-name" placeholder="" required="">
                      <small class="text-muted"> </small>
                      <div class="invalid-feedback">
                          Enter Bkash Account Number
                      </div>
                  </div>

                  <div class="col-lg-5">
                      <label for="cc-number" class="form-label">Enter pin</label>
                      <input type="number" min="0" class="form-control" id="cc-number" placeholder="" required="">
                      <div class="invalid-feedback">
                          Pin is required
                      </div>
                  </div>

              </div>
              </div>
              <div class="tab-pane fade" id="panel_b_fourth" role="tabpanel" aria-labelledby="fourth-tab">
                  <div class="p-4">
                    <input type="checkbox" class="form-check-input ml-2" id="exampleCheck1">
                    <label class="form-check-label ml-5" for="exampleCheck1"><h6>Cash On Delivery</h6></label>
                  </div>
              </div>
      
          </div>
      </div>



				<hr class="my-4">
				<button class="w-10 btn btn-primary btn-sm mb-5" type="submit">Continue to checkout</button>
        <button class="w-10 btn btn-primary btn-sm mb-5" type="submit">Cancel</button>
			</form>
		</div>
	</div>


</div>




</body>
</html>