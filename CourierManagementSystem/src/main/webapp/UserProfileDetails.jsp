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
        <link rel="stylesheet" href="css/admin panel.css">
        <title>CMS Courier</title>
    </head>
    <body>
<%@include file = "includes/securedHeader.jsp" %>

<!--navbar ends-->


<div class="container">
  <div class=" mb-5" style="margin-top: 100px;">
    <h2 class="mb-3 text-center ">User Profile</h2>
    <table class="table table-bordered" style="border-width: 25px;">

        <tbody>
          <tr>
            <th scope="row">Name</th>
            <td><c:out value="${sessionScope.user.name}"></c:out></td>

          </tr>
          <tr>
            <th scope="row">username</th>
            <td><c:out value="${sessionScope.user.userName}"></c:out></td>

          </tr>
          <tr>
            <th scope="row">Email Address</th>
            <td><c:out value="${sessionScope.user.email}"></c:out></td>

          </tr>
          <tr>
              <th scope="row">Phone</th>
            <td><c:out value="${sessionScope.user.phone}"></c:out></td>

          </tr>
          <tr>
            <th scope="row">Address</th>
            <td><c:out value="${sessionScope.user.address}"></c:out></td>
            
        </tr>
        </tbody>
      </table>
      <button type="button" class="btn btn-info">Update Status</button>
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