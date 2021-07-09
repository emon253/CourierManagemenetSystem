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
<link rel="stylesheet" href="parcelrequest.css">
<title>CMS Courier</title>
</head>
<body>

	<!--small navigation Start-->
	<%@include file="includes/securedHeader.jsp"%>

	<!--small navigation end-->


	<!--navbar start -->



<div class="bg1 d-flex">

<div class="container-fluid p-0">

  <div class="contain">
    <div class=" row contain2 mx-auto pr-5 pl-5">

      <form action="/action_page.php" class=" mx-auto">
        <div class="row">
          <div class="col-12 mt-5">
            <div class="bgst">
              <h4 class="text-center">Pickup Point</h4>
            </div>

            
            
            <h5 class="mt-5 mb-3">Sender Information</h5>
          </div>
          <div class="col-lg-4 was-validated">

            <div class="form-group">
              <label for="uname">Name:</label>
              <input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>
            <div class="form-group">
              <label for="weight">Parcel Weight:</label>
              <input type="number" min="1" class="form-control"  placeholder="Enter Weigth" name="weigth" required>

            </div>

          </div>
          <div class="col-lg-4 was-validated">

            <div class="form-group pl-lg-5">
              <label for="email">Email:</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>


          </div>
          <div class="col-lg-4 was-validated">

            <div class="form-group pl-lg-5 ">
              <label for="phone">Phone:</label>
              <input type="number" class="form-control" placeholder="Phone" name="phone" required>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>

          </div>



        </div>


        <div class="row">
          <div class="col-12">
            
            <h5 class="mt-3 mb-3">Enter Address</h5>
          </div>
          <div class="col-lg-4">

            <div class="form-group">
              <label for="division">Division:</label>
              <select name="pDivision" id="pDivision" class="form-control">
                <option value="default" disabled selected>Select</option>
  
              </select>
            </div>


          </div>
          <div class="col-lg-4">

            <div class="form-group pl-lg-5">
              <label for="email">District:</label>
              <select name="pDistrict" id="pDistrict" class="form-control">
                <option value="default" disabled selected>Select</option>
  
  
              </select>
            </div>


          </div>
          <div class="col-lg-4 ">

            <div class="form-group pl-lg-5 ">
              <label for="phone">Sub District:</label>
              <select name="pSubDistrict" id="pSubDistrict" class="form-control">
                <option value="default" disabled selected>Select</option>
  
              </select>

            </div>

          </div>

<!--updated code-->

          <div class="col-lg-12 ">
            <div class="form-group">
              <label for="comment">Full Address:</label>
              <textarea class="form-control ta" rows="5" id="comment"></textarea>

            </div>
          </div>

          <!--updated code-->



        </div>
        
        
        
      <!--/form-->

      <!--form action="/action_page.php" class=" mx-auto"-->
        <div class="row">
          <div class="col-12 mt-5">
            <div class="bgst">
              <h4 class="text-center">Destination Point</h4>
            </div>

            
            
            <h5 class="mt-5 mb-3">Receiver Information</h5>
          </div>
          <div class="col-lg-4 was-validated">

            <div class="form-group">
              <label for="uname">Name:</label>
              <input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>

          </div>
          <div class="col-lg-4 was-validated">

            <div class="form-group pl-lg-5">
              <label for="email">Email:</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>

          </div>
          <div class="col-lg-4 was-validated">

            <div class="form-group pl-lg-5 ">
              <label for="phone">Phone:</label>
              <input type="number" class="form-control" placeholder="Phone" name="phone" required>
              <div class="valid-feedback">Valid.</div>
              <div class="invalid-feedback">Please fill out this field.</div>
            </div>

          </div>

          <!--updated code-->



        </div>


        <div class="row">
          <div class="col-12">
            
            <h5 class="mt-3 mb-3">Enter Address</h5>
          </div>
          <div class="col-lg-4">

            <div class="form-group">
              <label for="division">Division:</label>
              <select name="dDivision" id="dDivision" class="form-control">
                <option value="default" disabled selected>Select</option>
  
              </select>
            </div>


          </div>
          <div class="col-lg-4">

            <div class="form-group pl-lg-5">
              <label for="email">District:</label>
              <select name="dDistrict" id="dDistrict" class="form-control">
                <option value="default" disabled selected>Select</option>
  
  
              </select>
            </div>


          </div>
          <div class="col-lg-4">

            <div class="form-group pl-lg-5 ">
              <label for="phone">Sub District:</label>
              <select name="dSubDistrict" id="dSubDistrict" class="form-control">
                <option value="default" disabled selected>Select</option>
  
              </select>

            </div>

          </div>


          <div class="col-lg-12 ">
            <div class="form-group">
              <label for="comment">Full Address:</label>
              <textarea class="form-control ta" rows="5" id="comment"></textarea>

            </div>
          </div>

          



        </div>
        
        <button type="submit" class="btn btn-info m-3">Submit</button>
        
      </form>

    </div>
  </div>
  
  
</div>



</div>

	
		<%@include file="/includes/footer.jsp"%>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>