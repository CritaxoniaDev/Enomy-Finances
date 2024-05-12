<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.enomy.entity.UserModel" %>
<%@ page import="com.enomy.entity.UserInvestmentModel" %>
<%@ page import="com.enomy.entity.CurrencyConversionModel" %>
<%@ page import="java.util.Objects"%>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
<link href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet' />
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Signika:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Signika+Negative:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
</head>
<style>
body {
  font-family: 'Nunito Sans', sans-serif;
}

h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: "Lato", sans-serif;
}

.navbar {
	background-color: #F0E68C;        
}

.blog_area {
  background-color: #ffffff;
  background-image: url("data:image/svg+xml,%3Csvg width='100' height='100' viewBox='0 0 100 100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M11 18c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm48 25c3.866 0 7-3.134 7-7s-3.134-7-7-7-7 3.134-7 7 3.134 7 7 7zm-43-7c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm63 31c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM34 90c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zm56-76c1.657 0 3-1.343 3-3s-1.343-3-3-3-3 1.343-3 3 1.343 3 3 3zM12 86c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm28-65c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm23-11c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-6 60c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm29 22c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zM32 63c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm57-13c2.76 0 5-2.24 5-5s-2.24-5-5-5-5 2.24-5 5 2.24 5 5 5zm-9-21c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM60 91c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM35 41c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2zM12 60c1.105 0 2-.895 2-2s-.895-2-2-2-2 .895-2 2 .895 2 2 2z' fill='%23f9f9f9' fill-opacity='0.4' fill-rule='evenodd'/%3E%3C/svg%3E");
  padding: 50px 0 80px 0;
}

.blog_title h2 {
  margin-left: -75%;
  margin-bottom: 70px;
  padding-bottom: 35px;
}

.ind_blog {
  background: #ffffff;
  padding: 10px;
  border-radius: 4px;
  box-shadow: 0 0 2px 1px rgba(0, 0, 0, 0.2);
  margin-bottom: 50px;
}

.ind_blog article {
  padding: 10px;
}

.ind_blog article header h2 {
  font-size: 24px;
  line-height: 1.5em;
  color: #757575;
}

.ind_blog article header ul li {
  margin-bottom: 15px;
  color: #f2f2f2
}

.ind_blog article header ul li a {
  color: #adadad;
}

.blog_news p {
  color: #242424;
  text-align: justify;
}

.blog_news_cat small {
  color: #adadad;
}

.btn_outline {
  padding: .65em 1.25em;
  font-size: inherit;
  color: #20515b;
  background: transparent;
  border-color: #20515b;
  border-radius: .25em;
}

.blog_see_all {
  padding-top: 50px;
}

.blog_see_all a:hover {
  background: #20515b;
  color: #ffffff;
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
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#" style="font-size: 17px;">Home</a></li>
					<%
					if (request.isUserInRole("ADMIN")) {
					%>
					<li><a href="homepage" class="btn btn-primary" style="color: white;">User Dashboard</a></li>
					<%
					}
					%>
				</ul>
				<form:form action="logout" method="post">
					<ul class="nav navbar-nav navbar-right">
						<li><a onclick="return confirmLogout();"><button
									class="btn btn-primary">Log Out</button></a></li>
					</ul>
				</form:form>
			</div>
		</div>
</nav>
<br>
<h1 style="margin-top: 5%; font-size: 50px; text-align: center;">Welcome to Admin Page</h1>
<p class="w3-text-black w3-center" style="margin-top: 1%; font-size: 40px; font-family: 'Playfair Display', serif;">${fname} ${lname}!</p>

	<div class="container" style="margin-top: 7%; margin-bottom: 2%;">
	<div class="panel panel-primary" style="background-color: #f0f0f0;">
        <div class="panel-heading">
		<h2>Registered Users</h2>
		</div>
		<div class="panel-body">
		<table class="table">
			<thead>
				<tr>
					<th>User ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Contact Number</th>
					<th>Password</th>
					<!-- Add more columns as needed -->
				</tr>
			</thead>
			<tbody>
				<%
				for (UserModel user : (List<UserModel>) request.getAttribute("user")) {
				%>
				<tr>
					<td><%=user.getUserId()%></td>
					<td><%=user.getFname()%></td>
					<td><%=user.getLname()%></td>
					<td><%=user.getEmail()%></td>
					<td><%=user.getContactNumber()%></td>
					<td><%=user.getPassword()%></td>
					<!-- Add more columns as needed -->
					<td></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		</div>
		</div>
	</div>
	<br>
		<div class="container" style="margin-top: 2%; margin-bottom: 2%;">
		<div class="panel panel-info" style="background-color: #f0f0f0;">
        <div class="panel-heading">
		<h2>Currency Exchange Transactions</h2>
		</div>
	<div class="panel-body">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Converted Amount</th>
					<th>From Currency</th>
					<th>To Currency</th>
					<th>Fee</th>
					<th>Final Amount</th>
					<!-- Add more columns as needed -->
				</tr>
			</thead>
			<tbody>
				<%
				for (CurrencyConversionModel currency : (List<CurrencyConversionModel>) request.getAttribute("currency")) {
				%>
				<tr>
					<td><%=currency.getTransactionId()%></td>
					<td><%=currency.getConvertedAmount()%></td>
					<td><%=currency.getFromCurrency()%></td>
					<td><%=currency.getToCurrency()%></td>
					<td><%=currency.getFee()%></td>
					<td><%=currency.getFinalAmount()%></td>
					<!-- Add more columns as needed -->
					<td></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		</div>
		</div>
	</div>
	<br>
		<div class="container" style="margin-top: 2%; margin-bottom: 15%;">
		<div class="panel panel-info" style="background-color: #f0f0f0;">
        <div class="panel-heading">
		<h2>Savings and Investments Transactions</h2>
		</div>
		<div class="panel-body">
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Investment Type</th>
					<th>Initial Lump Sum</th>
					<th>Monthly Investment</th>
					<th>One Year Return</th>
					<th>Five Years Return</th>
					<th>Ten Years Return</th>
					<!-- Add more columns as needed -->
				</tr>
			</thead>
			<tbody>
				<%
				for (UserInvestmentModel investment : (List<UserInvestmentModel>) request.getAttribute("investment")) {
				%>
				<tr>
					<td><%=investment.getIdInvesment()%></td>
					<td><%=investment.getInvestmentType()%></td>
					<td><%=investment.getInitialLumpSum()%></td>
					<td><%=investment.getMonthlyInvestments()%></td>
					<td><%=investment.getOneYearReturn()%></td>
					<td><%=investment.getFiveYearReturn()%></td>
					<td><%=investment.getTenYearReturn()%></td>
					<!-- Add more columns as needed -->
					<td></td>
				</tr>
				<%
				}
				%>
			</tbody>	
		</table>
		</div>
		</div>
	</div>
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

</body>
</html>