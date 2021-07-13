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
	<link rel="stylesheet" type="text/css" href="Feedback.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>


  <div class="Main container-fluid">
      <div class="container mt-3">
          <header class="text-center mb-5">
              <h2> Feedback </h2>
          </header>
          <div class="row">
              <div class="col-lg-6 col-sm-12">
                <form action="submit_form" class="feedback_form mb-5">
                    <div class="form_group">
                        <input type="email" class="form_control" name="email" id="email" placeholder="Email">
                    </div>
                    <div class="form_group">
                        <input type="text" name="subject" id="subject" class="form_control" placeholder="Subject">
                    </div>
                    <div class="form_group">
                        <textarea name="message" id="message" class="form_control" rows="5" placeholder="Enter your message"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg">Send</button>
                </form>
              </div>

              <div class="col-lg-6 col-sm-12 address-container">
                <ul class="list-unstyled">
                    <li>
                        <span class="fa-icon">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                        </span>
                        + 12 34 56 78
                    </li>
                    <li>
                        <span class="fa-icon">
                            <i class="fa fa-at" aria-hidden="true"></i>
                        </span>
                        cms@gmail.com
                    </li>
                    <li>
                        <span class="fa-icon">
                            <i class="fa fa fa-map-marker" aria-hidden="true"></i>
                        </span>
                        Mirpur-10, Dhaka 1212
                    </li>
                </ul>
                <h3>Follow us on social networks</h3>
                <a href="http://www.facebook.com" title="" class="fa-icon">
                    <i class="fa fa-facebook"></i>
                </a>
                <a href="http://www.twitter.com" title="" class="fa-icon">
                    <i class="fa fa-twitter"></i>
                </a>
                <a href="http://www.youtube.com" title="" class="fa-icon">
                    <i class="fa fa-youtube"></i>
                </a>

            </div>
          </div>
      </div>
  </div>


<body>

</body>
</html>