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
        
      <!--small navigation bar Start-->
      <section>
        <div class="smlnav "><!--pt-2 pt-lg-4-->
          <div class="row ">
            <div class="col-lg-4 justify-content-center align-items-center">
      
					<%@include file="includes/admin_securePage_controller.jsp"%>
      
            </div>
            <div class="col-lg-3">
      
            </div>
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
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span ><i class="fas fa-bars nav-icon"></i></span>
          
        </button>
    
        <a  href="#">
    
            <img class="is" src="photos/Capture.JPG"  alt="logo">
            
    
        </a>
        
        <div class=" ml-1">
          
          <p ><h6 class="mb-1">CMS</h6>COURIER</p>
        </div>

      
        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">



          <!--ul class="navbar-nav ">
            <li class="nav-item">
              <a class="nav-link text-center text-md-left" href="#">HOME</a>
            </li>
          </ul-->
          <ul class="ml-auto">
            <li class="navbar-nav dropdown">
              <a class="nav-link dropdown-toggle text-center text-md-left" href="#" id="navbardrop" data-toggle="dropdown">
                HOME
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="user panel.html">USER</a>
                <a class="dropdown-item" href="home.html">HOME</a>
              </div>
            </li>
          </ul>

        </div>

      </nav>


<!--navbar ends-->


<div class="container">
    
  <div class=" mb-5" style="margin-top: 100px;">
    <h2 class="mb-3 text-center ">Workers Profile</h2>
    <table class="table table-bordered" style="border-width: 25px;">

        <tbody>
          <tr>
            <th scope="row">Name</th>
            <td><c:out value="${sessionScope.admin.name}"></c:out></td>

          </tr>
          <tr>
            <th scope="row">ID</th>
            <td>Muid101</td>

          </tr>
          <tr>
            <th scope="row">Designation</th>
            <td><c:out value="${sessionScope.admin.id}"></c:out></td>

          </tr>
          <tr>
            <th scope="row">Email Address</th>
            <td><c:out value="${sessionScope.admin.email}"></c:out></td>

          </tr>
          <tr>
              <th scope="row">Phone</th>
            <td><c:out value="${sessionScope.admin.phone}"></c:out></td>

          </tr>
          <tr>
            <th scope="row">Address</th>
            <td><c:out value="${sessionScope.admin.address	}"></c:out></td>
            
        </tr>
        </tbody>
      </table>
      <button type="button" class="btn btn-info">Update Status</button>
  </div>
</div>



      



      <script src="admin section.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

      <!-- Popper JS -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  
      <!-- Latest compiled JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>