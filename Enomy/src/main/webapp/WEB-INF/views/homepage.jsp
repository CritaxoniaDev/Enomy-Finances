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
<title>Enomy Finances</title>
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
  background-color: #E1D6E8;        
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
.card-text {
padding-left: 20px;
padding-right: 20px;
}

a.btn btn-primary {
padding-top: 2px;
padding-bottom: 2px;
padding-left: 2px;
padding-right: 2px;
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
					<li><a href="currencyexchange" style="font-size: 17px;">Currency
							Exchange</a></li>
					<li><a href="savingsandinvestments" style="font-size: 17px;">Savings
							and Investments</a></li>
					<%
					if (request.isUserInRole("ADMIN")) {
					%>
					<li><a href="adminpage" class="btn btn-primary" style="color: white;">Admin Page</a></li>
					<%
					}
					%>
				</ul>
				<form:form action="logout" method="post">
					<ul class="nav navbar-nav navbar-right">
						<li><a onclick="return confirmLogout();"><button
									class="btn btn-primary" style="padding-top: 10px; padding-bottom: 10px; padding-left: 10px; padding-right: 10px;">Log Out</button></a></li>
					</ul>
				</form:form>
			</div>
		</div>
</nav>
<p class="w3-text-black w3-center" style="margin-top: 7%; font-size: 40px; font-family: 'Playfair Display', serif;"> Welcome ${fname} ${lname}!</p>

<div class="w3-container text-center" id="headerimg">
    <h1 class="w3-text-black" style="margin-top: 7%; margin-bottom: 10%; font-size: 60px; font-family: 'Bebas Neue', sans-serif;">Trade Smarter, Invest Wisely with Enomy <br> Finances</h1>
</div>

<div class="container-fluid border rounded shadow-sm" style="padding: 20px;">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <div class="card border-primary mb-3">
                <div class="card-body text-center">
                    <h1 class="card-title">Currency Exchange</h1>
                    <h4 class="card-text" style="margin-top: 10px; margin-bottom: 20px; margin-left: 30px; margin-right: 30px;">Currency exchange rates are the prices of one currency in terms of another currency. They are constantly changing due to supply and demand for the currencies. Currency exchange brokers are companies that help people buy and sell currencies. They typically charge a commission for their services.</h4>
                    <a href="currencyexchange" class="btn btn-primary" style="border-radius: 10px; padding-top: 15px; padding-bottom: 15px; padding-left: 15px; padding-right: 15px;">Exchange Some Currency!</a>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card border-primary mb-3">
                <div class="card-body text-center">
                    <h1 class="card-title">Investments</h1>
                    <h4 class="card-text" style="margin-top: 10px; margin-bottom: 20px; margin-left: 30px; margin-right: 30px;">Currency exchange rates are the prices of one currency in terms of another currency. They are constantly changing due to supply and demand for the currencies. Currency exchange brokers are companies that help people buy and sell currencies. They typically charge a commission for their services.</h4>
                    <a href="savingsandinvestments" class="btn btn-primary" style="border-radius: 10px; padding-top: 15px; padding-bottom: 15px; padding-left: 15px; padding-right: 15px;">See Some Offers!</a>
                </div>
            </div>
        </div>
    </div>
</div>
	
	<section class="blog_area" style="margin-top: 7%;">
  <div class="container">

    <div class="row">
      <div class="col-sm-2 col-sm-offset-5">
        <div class="blog_title">
          <h2 style=" white-space: nowrap;">Achievements of Enomy Finances</h2>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="blog">
        <div class="col-md-4 col-xs-12">
          <div class="ind_blog">
            <article>
              <header>
                <h2>Transforming Savings Habits</h2>
                <ul class="list-inline">
                  <li><a href="">Author | <span>Momin</span></a></li>
                  <li><a href="">Published | <span>20-16-2017</span></a></li>
                </ul>
              </header>
              <section>
                <div class="blog_news">
                  <div class="blog_image">
                    <figure>
                      <img class="img-responsive" src="https://i.imgur.com/hxiPgcK.jpg" alt="mongo">
                      <figcaption class="text-center">
                      </figcaption>
                    </figure>

                  </div>
                  <p> Enomy Finances introduces a revolutionary "Round-Up" feature, automatically transferring spare change from everyday purchases into savings, leading to a 25% increase in user savings rates within three months.Users praised the feature for its ease of use and effectiveness in helping them. 
                  </p>
                </div>
              </section>
              <section>
                <footer class="blog_news_footer">
                  <div class="row">
                    <div class="col-xs-6">
                      <div class="blog_news_cat pull-left">
                        <small>Category <span>Achievements</span></small>
                      </div>
                    </div>
                    <div class="col-xs-6">
                      <div class="blog_news_readmore pull-right">
                        <a class="btn btn-sm btn-warning" href="">Readmore</a>
                      </div>
                    </div>

                  </div>
                </footer>
              </section>
            </article>
          </div>
        </div>

        <div class="col-md-4 col-xs-12">
          <div class="ind_blog">
            <article>
              <header>
                <h2>Investment Opportunities</h2>
                <ul class="list-inline">
                  <li><a href="">Author | <span>Momin</span></a></li>
                  <li><a href="">Published | <span>20-16-2017</span></a></li>
                </ul>
              </header>
              <section>
                <div class="blog_news">
                  <div class="blog_image">
                    <figure>
                      <img class="img-responsive" src="https://i.imgur.com/zQIlCOu.jpg" alt="mongo">
                      <figcaption class="text-center">
                      </figcaption>
                    </figure>
                  </div>
                  <p> Enomy Finances partners with leading brokerages to offer fractional share investing, allowing users to invest in previously inaccessible companies with any amount, democratizing access to the stock market and attracting over 50,000 new users in the first quarter.
                  </p>
                </div>
              </section>
              <section>
                <footer class="blog_news_footer">
                  <div class="row">
                    <div class="col-xs-6">
                      <div class="blog_news_cat pull-left">
                        <small>Category <span>Achievements</span></small>
                      </div>
                    </div>
                    <div class="col-xs-6">
                      <div class="blog_news_readmore pull-right">
                        <a class="btn btn-sm btn-warning" href="">Readmore</a>
                      </div>
                    </div>

                  </div>
                </footer>
              </section>
            </article>
          </div>
        </div>
        <div class="col-md-4 col-xs-12">
          <div class="ind_blog">
            <article>
              <header>
                <h2>Securing Financial Futures</h2>
                <ul class="list-inline">
                  <li><a href="">Author | <span>Momin</span></a></li>
                  <li><a href="">Published | <span>20-16-2017</span></a></li>
                </ul>
              </header>
              <section>
                <div class="blog_news">
                  <div class="blog_image">
                    <figure>
                      <img class="img-responsive" src="https://i.imgur.com/iTSjCKD.jpg" alt="mongo">
                      <figcaption class="text-center">
                      </figcaption>
                    </figure>

                  </div>
                  <p> Enomy Finances launches a personalized AI-powered retirement planning tool, analyzing user income, expenses, and financial goals to suggest optimized contributions and investment strategies. This innovation leads to a 30% increase in active retirement account users within the first month.
                  </p>
                </div>
              </section>
              <section>
                <footer class="blog_news_footer">
                  <div class="row">
                    <div class="col-xs-6">
                      <div class="blog_news_cat pull-left">
                        <small>Category <span>Achievements</span></small>
                      </div>
                    </div>
                    <div class="col-xs-6">
                      <div class="blog_news_readmore pull-right">
                        <a class="btn btn-sm btn-warning" href="">Readmore</a>
                      </div>
                    </div>

                  </div>
                </footer>
              </section>
            </article>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--End Blog Area-->
	
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
	function confirmLogout() {
	    return window.confirm('Are you sure you want to logout?');
	}
	</script>

</body>
</html>