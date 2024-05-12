<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:opsz,wght@6..12,600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Salsa&display=swap" rel="stylesheet">
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet' />
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Signika+Negative:wght@300&display=swap" rel="stylesheet">
<title>Register</title>
</head>
<style>
@charset "ISO-8859-1";

body {
	font-family: 'Nunito Sans', sans-serif;
	background-color: #C5E2FF;        
}

.navbar {
	background-color: #F0C98B;
}

#errorFirstName, #errorLastName, #errorEmail, #errorContactNumber {
	color: red;
	font-size: 0.8em;
	display: none;
}

.shadow-box {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
	margin: 20px auto;
	max-width: 800px; /* Adjust the width as needed */
	padding: 30px;
	border-radius: 10px;
}

.form-group {
	margin-bottom: 20px; /* Add space between form groups */
}

.form-horizontal .form-group {
	margin-left: 0;
	margin-right: 0;
}

.form-group label {
	margin-bottom: 5px; /* Add space below the label */
}

.registration-form {
	max-width: 400px;
	margin: 50px auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
}

/* Style the form inputs and labels */
.registration-form label {
	display: block;
	margin-bottom: 5px;
	color: #333333;
}

.registration-form input[type="text"], .registration-form input[type="email"],
	.registration-form input[type="tel"], .registration-form input[type="password"]
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 3px;
	border: 1px solid #cccccc;
	border-radius: 4px;
}

/* Style the error message spans */
.registration-form span[id^="error"] {
	color: #d9534f;
	font-size: 0.9em;
	display: block;
	margin-top: -15px;
	margin-bottom: 10px;
}

/* Style the submit button */
.registration-form input[type="submit"] {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 4px;
	background-color: #5cb85c;
	color: white;
	font-size: 1em;
	cursor: pointer;
	transition: background-color 0.3s;
}

.registration-form input[type="submit"]:hover {
	background-color: #4cae4c;
}

/* Style the 'Show Password' checkboxes */
.registration-form input[type="checkbox"] {
	margin-top: 5px;
}

/* Add some space between checkbox and its label */
.registration-form input[type="checkbox"]+label {
	margin-left: 5px;
}

footer.nb-footer {
	background: #222;
	border-top: 4px solid #b78c33;
}

footer.nb-footer .about {
	margin: 0 auto;
	margin-top: 40px;
	max-width: 1170px;
	text-align: center;
}

footer.nb-footer .about p {
	font-size: 13px;
	color: #999;
	margin-top: 30px;
}

footer.nb-footer .about .social-media {
	margin-top: 15px;
}

footer.nb-footer .about .social-media xl lx a {
	display: inline-block;
	width: 45px;
	height: 45px;
	line-height: 45px;
	border-radius: 50%;
	font-size: 16px;
	color: #b78c33;
	border: 1px solid rgba(255, 255, 255, 0.3);
}

footer.nb-footer .about .social-media xl lx a:hover {
	background: #b78c33;
	color: #fff;
	border-color: #b78c33;
}

footer.nb-footer .footer-info-single {
	margin-top: 30px;
}

footer.nb-footer .footer-info-single .title {
	color: #aaa;
	text-transform: uppercase;
	font-size: 16px;
	border-left: 4px solid #b78c33;
	padding-left: 5px;
}

footer.nb-footer .footer-info-single xl lx a {
	display: block;
	color: #aaa;
	padding: 2px 0;
}

footer.nb-footer .footer-info-single xl lx a:hover {
	color: #b78c33;
}

footer.nb-footer .footer-info-single p {
	font-size: 13px;
	line-height: 20px;
	color: #aaa;
}

footer.nb-footer .copyright {
	margin-top: 15px;
	background: #111;
	padding: 7px 0;
	color: #999;
}

footer.nb-footer .copyright p {
	margin: 0;
	padding: 0;
}
</style>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
 <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="index" style="font-size: 17px;">Home</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login"><button class="btn btn-primary">Log In</button></a></li>
      </ul>
    </div>
 </div>
</nav>
<br>
<br>
	   <div class="container" style="margin-top: 5%; margin-bottom: 5%;">
	   <div class="shadow-box" style="background-color:white;">
        <form:form action="register" method="post" class="form-horizontal" onsubmit="return validatePasswords()">
            <h1 class="text-center" style="font-family: 'Playfair Display', serif; font-size: 35px; margin-top: -20px; margin-bottom: 10px;">Sign Up To Enomy Finances</h1>
            <p class="text-center" style="font-size: 13px; font-family: 'Nunito Sans', sans-serif;">Unlock a world of financial opportunities and take control of your future with Enomy Finances. Join us today and embark on a journey towards financial empowerment and security. Let's build a brighter tomorrow together!</p>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="firstName" class="control-label">First Name:</label>
                        <input type="text" class="form-control" id="firstName" name="fname" maxlength="50" required>
                        <span id="errorFirstName" class="help-block"></span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="lastName" class="control-label">Last Name:</label>
                        <input type="text" class="form-control" id="lastName" name="lname" maxlength="50" required>
                        <span id="errorLastName" class="help-block"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="email" class="control-label">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                        <span id="errorEmail" class="help-block"></span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="contactNumber" class="control-label">Contact Number:</label>
                        <input type="tel" class="form-control" id="contactNumber" name="contactNumber" placeholder="+63" maxlength="13" pattern="\+63\d{10}" required>
                        <span id="errorContactNumber" class="help-block"></span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="password" class="control-label">Password:</label>
                        <input type="password" class="form-control" id="password" name="password" minlength="8" required>
                        <span id="errorPassword" class="help-block" style="color: red;"></span>
                        <input type="checkbox" onclick="toggleVisibility('password')"> Show Password
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="confirmPassword" class="control-label">Confirm Password:</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                        <span id="errorConfirmPassword" class="help-block"></span>
                        <input type="checkbox" onclick="toggleVisibility('confirmPassword')"> Show Confirm Password
                    </div>
                </div>
            </div>
				<div class="form-group text-center">
    			<div class="col-md-12">
        			<button type="submit" class="btn btn-primary" style="display: block; width: 45%; padding: 10px ;margin: 0 auto;">Register</button>
    			</div>
    			<br>
    			<div class="text-center mt-3">
                        <p>Already have an Account? <a href="login">Back to login</a></p>
                    </div>
    			<br>
					<%
					if (request.getAttribute("error") != null) {
					%>
					<p class="alert alert-danger" role="alert"><%=request.getAttribute("error")%></p>
					<%
					}
					%>
				</div>
        </form:form>
      </div>
    </div>
   
	<br>
	<br>
	<br>

	<!-- Footer -->
	<footer class="nb-footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="about">
						<div class="social-media">
							<xl class="list-inline"> <lx>
							<a href="#" title=""><i class="fa fa-facebook"></i></a></lx> <lx>
							<a href="#" title=""><i class="fa fa-twitter"></i></a></lx> <lx>
							<a href="#" title=""><i class="fa fa-google-plus"></i></a></lx> <lx>
							<a href="#" title=""><i class="fa fa-linkedin"></i></a></lx> </xl>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">Help Center</h2>
						<xl class="list-unstyled"> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							How to Pay</a></lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							FAQ's</a> </lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Sitemap</a> </lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Delivery Info</a></lx> </xl>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">Customer information</h2>
						<xl class="list-unstyled"> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							About Us</a> </lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							FAQ's</a> </lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Sell Your Items</a></lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Contact Us</a></lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							RSS</a></lx> </xl>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">Security & privacy</h2>
						<xl class="list-unstyled"> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Terms Of Use</a></lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Privacy Policy</a></lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Return / Refund Policy</a></lx> <lx>
						<a href="#" title=""><i class="fa fa-angle-double-right"></i>
							Store Locations</a></lx> </xl>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-info-single">
						<h2 class="title">Payment</h2>
						<p>At Enomy Finances, we prioritize secure and efficient
							payment processes to enhance the overall client experience. Our
							payment system is designed to ensure the confidentiality and
							integrity of financial transactions.</p>

					</div>
				</div>
			</div>
		</div>

		<section class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<script type="text/javascript">
							var d = new Date();
							var n = d.getFullYear();
							document.write("<p>&copy; " + n
									+ ". Enomy Finances.</p>");
						</script>
					</div>
					<div class="col-sm-6"></div>
				</div>
			</div>
		</section>
	</footer>
</body>

	<script>
		// Used to toggle the menu on small screens when clicking on the menu button
		function myFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
	</script>
	
	<script>
	function toggleVisibility(id) {
		   var x = document.getElementById(id);
		   if (x.type === "password") {
		       x.type = "text";
		   } else {
		       x.type = "password";
		   }
		}
	</script>
	
	<script>
function validatePasswords() {
  var password = document.getElementById('password').value;
  var confirmPassword = document.getElementById('confirmPassword').value;
  var errorPassword = document.getElementById('errorPassword');
  var errorConfirmPassword = document.getElementById('errorConfirmPassword');

  // Clear previous error messages
  errorPassword.textContent = '';
  errorConfirmPassword.textContent = '';

  // Check if passwords match
  if (password !== confirmPassword) {
    errorConfirmPassword.textContent = 'Passwords do not match.';
    return false; // Prevent form submission
  }

  return true; // Allow form submission
}

function toggleVisibility(fieldId) {
  var field = document.getElementById(fieldId);
  if (field.type === "password") {
    field.type = "text";
  } else {
    field.type = "password";
  }
}
</script>

<script>
document.getElementById('contactNumber').addEventListener('input', function(e) {
    var input = e.target.value;
    if (input.substring(0, 3) !== '+63') {
        e.target.value = '+63' + input;
    }
});
</script>

<script>
		// Get the modal
		var modal = document.getElementById('id01');

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	
</html>