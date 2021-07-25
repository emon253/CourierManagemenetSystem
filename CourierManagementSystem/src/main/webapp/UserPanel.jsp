<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="domain.User"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <script src="https://kit.fontawesome.com/a14342fe13.js" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="user panel.css">
        <title>CMS Courier</title>
    </head>
    <body>
        
<%@include file = "includes/securedHeader.jsp" %>

<!--navbar ends-->


<div class="container mb-5">
  <div class="bg2 ">
    <div class="row">

      <div class="col-4 col-md-4 col-sm-12" style="text-align: center;">
        <div class="card">
          <a href="parcelrequest.jsp" class="mt-4">
            <i class="fas fa-truck-moving fa-5x is"></i>
            <h5 style="color: black;">Send Parcel</h5>
          </a>
        </div>
      </div>

      <div class="col-4 col-md-4 col-sm-12" style="text-align: center;">
        <div class="card">
          <a href="trackingSearch.jsp" class="mt-4">
            <i class="fas fa-map-marked-alt fa-5x is"></i>
            <h5 style="color: black;">Track Order</h5>
          </a>
        </div>

      </div>

      <div class="col-4 col-md-4 col-sm-12" style="text-align: center;">
        <div class="card">
          <a href="UserProfileDetails.jsp" class="mt-4">
            <i class="fas fa-user fa-5x is"></i>
            <h5 style="color: black;">Your Status</h5>
          </a>
        </div>

      </div>

    </div>
  </div>
</div>


<%@include file = "includes/footer.jsp" %>

      



      <script src="admin section.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

      <!-- Popper JS -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  
      <!-- Latest compiled JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>