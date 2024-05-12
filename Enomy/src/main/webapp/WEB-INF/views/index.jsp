<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
 <link rel="preconnect" href="https://fonts.googleapis.com">
 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
 <link href="https://fonts.googleapis.com/css2?family=Salsa&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet' />
 <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:opsz,wght@6..12,600&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Signika:wght@300&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Signika+Negative:wght@300&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css2?family=Gabriela&display=swap" rel="stylesheet">
 <title>Enomy Finances</title>
</head>
<style>
body {
	font-family: 'Nunito Sans', sans-serif;
	background-color: #C5E2FF;
	color: #333;
}

h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif;
}

.navbar {
	background-color: #F0C98B;
}

#divimg {
	background-color: #6d6d6d;
	color: #333;
}

#div2 {
	background-color: #6d6d6d;
	color: #333;
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

/* Responsive styles for medium screens */
@media ( max-width : 992px) {
	.w3-button {
		margin-left: 0;
		margin-right: 0;
	}
}

@media ( max-width : 992px) {
	h1 {
		font-size: 50px;
	}
	h2 {
		font-size: 25px;
	}
	.w3-button {
		margin-left: 50%;
		width: 50%;
	}
	img {
		margin-left: 0;
		max-width: 70%;
	}
}

/* Responsive styles for small screens */
@media ( max-width : 768px) {
	h1 {
		font-size: 40px;
	}
	h2 {
		font-size: 20px;
		margin-left: 10%;
		margin-right: 10%;
	}
	.w3-button {
		margin-left: 25%;
		width: 50%;
	}
	img {
		margin-left: 0;
		max-width: 80%;
	}
}

/* Responsive styles for small screens */
@media ( max-width : 768px) {
	.w3-button {
		width: 100%;
		margin: 0;
	}
	.w3-bar-item {
		width: 100%;
		text-align: center;
	}
	.w3-hide-medium {
		display: none !important;
	}
}

@media ( max-width : 480px) {
	.w3-image {
		padding: 100px 16px;
	}
	h1 {
		font-size: 50px;
	}
	h5 {
		font-size: 20px;
	}
	.w3-button {
		width: 100%;
	}
	img {
		margin-left: 0;
	}
	#divimg, #divimg2 {
		padding: 100px 16px;
	}
}
</style>
<body>
	<!-- Navbar -->

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
        <li><a href="#" id="scroll-to-home" style="font-size: 17px;">Home</a></li>
        <li><a href="#" id="scroll-to-about-us" style="font-size: 17px;">About Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/Enomy/register"><button class="btn btn-primary">Sign Up</button></a></li>
        <li><a href="/Enomy/login"><button class="btn btn-primary">Log In</button></a></li>
      </ul>
    </div>
 </div>
</nav>

	<!-- Header -->
	<header class="w3-image" id="headerimg" style="padding: 250px 16px;">
	<div>
		<h1 class="w3-text-black" style="font-weight: 700; font-size: 70px; font-family: 'Playfair Display', serif; margin-top: -3%; margin-left: 80px; margin-bottom: 10px;">Welcome
			to<br> Enomy Finances</h1>
		<p class="w3-xlarge w3-text-gray" style="margin-left: 80px; margin-bottom: 50px;">Exchange More,
			Invest Wisely - Your Gateway to Global Financial<br> Opportunities!</p>
  	<div style="display: flex; justify-content: space-between; margin-left: 80px; margin-bottom: 100px;">
  		<a href="/Enomy/register"><button class="btn btn-primary block" style="border-radius: 10px; width: 100%; padding: 15px;">Sign Up Now</button></a>
  	</div>
  	</div>
	</header>

	<!-- First Grid -->
	<div class="w3-row-padding w3-container" id="divimg"
		id="aboutUsSection" style="padding: 200px 16px">
		<div class="w3-content">
			<div class="w3-twothird w3-text-white" style="margin-left: -20px;">
				<h1 style="font-size: 55px;">About Enomy Finances</h1>
				<h5 class="w3-padding-24" style="font-size: 25px; line-height: 1.5;">A leading Exchange Currency
					and Investment web-based application dedicated to providing global
					financial opportunities. We are committed to empowering our users
					with the tools they need to navigate the complex world of currency
					exchange and investment. Our mission is to simplify the process of
					trading currencies and making informed investment decisions,
					allowing you to focus on what matters most your financial goals.</h5>
			</div>
		</div>
	</div>
	
	<!-- Second Grid -->
	<div class="w3-row-padding w3-light-grey w3-container" id="div2"
		style="padding: 200px 16px">
		<div class="w3-content">
			<div class="w3-twothird w3-text-black">
				<h1 style="font-size: 55px;">Currency Exchange and Investments</h1>
				<h5 class="w3-padding-24" style="font-size: 25px; line-height: 1.5;">Whether you're a seasoned investor scaling 
				new peaks or a novice adventurer taking your first steps, 
				Enomy Finances is tailored to your journey. We offer a vast portfolio of options, 
				from safe havens to exciting frontiers, all meticulously 
				assessed to match your risk tolerance and aspirations. Our dedicated team works 
				hand-in-hand with you, understanding your fears and celebrating 
				your victories along the way.Investing shouldn't be a solitary struggle. Join Enomy Finances 
				and let us be your guide, your shield, and your unwavering champion. Together, we'll conquer
			    the financial mountains and claim the rewards that await your success.</h5>
			</div>
		</div>
	</div>

	<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
		<h1 class="w3-margin w3-large" style="font-size: 40px; font-family: 'Gabriela', serif;">"The best investment you can make
			is in yourself." - Warren Buffett</h1>
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

	<script>
		// Smooth scroll function
		function scrollToSection(sectionId) {
			var targetSection = document.getElementById(sectionId);
			if (targetSection) {
				window.scrollTo({
					top : targetSection.offsetTop,
					behavior : 'smooth'
				});
			}
		}
		// Event listener for the "About Us" link
		document.querySelector('#scroll-to-about-us').addEventListener(
				'click',
				function(event) {
					event.preventDefault();
					scrollToSection('divimg');
					// Remove the "active" class from the "Home" link
					document.querySelector('#scroll-to-home').classList
							.remove('w3-white');
				});
		// Event listener for the "Home" link
		document.querySelector('#scroll-to-home').addEventListener(
				'click',
				function(event) {
					event.preventDefault();
					scrollToSection('headerimg');
					// Remove the "active" class from the "About Us" link
					document.querySelector('#scroll-to-about-us').classList
							.remove('active');
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

</body>
</html>