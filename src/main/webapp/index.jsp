<%@page import="java.sql.*"%>
<%@page import="config.DbHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Sanitization Management System - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/apple-touch-icon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">


<style>
#servicetitleLink:hover {
	background-color: red;
}
</style>
</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto">
				<a href="index.jsp"><span style="color: red">S</span>anitization
					<span style="color: red">M</span>anagement <span style="color: red">S</span>ystem</a>
			</h1>

			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="active" href="index.jsp">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#popular-courses">Services</a></li>
					<li><a href="contact.jsp">Contact</a></li>
					<li><a href="admin_login.jsp">Admin</a></li>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
			<!-- .navbar -->

			<a href="track.jsp" class="get-started-btn">Track Request</a>

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero"
		class="d-flex justify-content-center align-items-center">
		<div class="container position-relative" data-aos="zoom-in"
			data-aos-delay="100">
			<h1>
				Keeping Hands Clean,<br>Household Cleaning & Sanitizing
			</h1>
			<h2>Washing hands can keep you healthy and prevent the spread of
				respiratory and diarrheal infections from one person to the next.</h2>
			<a href="index.jsp" class="btn-get-started">Get Started</a>
		</div>
	</section>
	<!-- End Hero -->

	<main id="main"> <!-- ======= About Section ======= -->
	<section id="about" class="about">
		<div class="container" data-aos="fade-up">

			<div class="row">
				<div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left"
					data-aos-delay="100">
					<img src="assets/img/about.jpg" class="img-fluid" alt="">
				</div>
				<div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
					<h3>Sanitization Related Hygiene</h3>
					<p class="fst-italic">Handwashing is one of the best ways to
						protect yourself and your family from getting sick. Learn when and
						how you should wash your hands to stay healthy.</p>
					<ul>
						<li><i class="bi bi-check-circle"></i> Touch your eyes, nose,
							and mouth with unwashed hands.</li>
						<li><i class="bi bi-check-circle"></i> Prepare or eat food
							and drinks with unwashed hands.</li>
						<li><i class="bi bi-check-circle"></i> Blow your nose, cough,
							or sneeze into hands and then touch other people’s hands or
							common objects.</li>
						<li><i class="bi bi-check-circle"></i> Wet your hands with
							clean, running water (warm or cold), turn off the tap, and apply
							soap..</li>
						<li><i class="bi bi-check-circle"></i> Dry your hands using a
							clean towel or air dry them.</li>
					</ul>
					<p>Washing your hands is easy, and it’s one of the most
						effective ways to prevent the spread of germs. Clean hands can
						stop germs from spreading from one person to another and
						throughout an entire community—from your home and workplace to
						childcare facilities and hospitals.</p>

				</div>
			</div>
		</div>
	</section>
	<!-- End About Section --> <!-- ======= Counts Section ======= -->
	<section id="counts" class="counts section-bg">
		<div class="container">

			<div class="row counters">

				<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="1232"
						data-purecounter-duration="1" class="purecounter"></span>
					<p>Doctors</p>
				</div>

				<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="64"
						data-purecounter-duration="1" class="purecounter"></span>
					<p>Nurses</p>
				</div>

				<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="42"
						data-purecounter-duration="1" class="purecounter"></span>
					<p>Sweeper</p>
				</div>

				<div class="col-lg-3 col-6 text-center">
					<span data-purecounter-start="0" data-purecounter-end="15"
						data-purecounter-duration="1" class="purecounter"></span>
					<p>Services</p>
				</div>

			</div>

		</div>
	</section>
	<!-- End Counts Section --> <!-- ======= Why Us Section ======= -->
	<section id="why-us" class="why-us">
		<div class="container" data-aos="fade-up">

			<div class="row">
				<div class="col-lg-4 d-flex align-items-stretch">
					<div class="content">
						<h3>Why Choose SMS ?</h3>
						<p>Sanitizing means that you are lowering the number of germs
							to a safe level. What is considered a safe level depends on
							public health standards or requirements at a workplace, school,
							etc.</p>
						<div class="text-center">
							<a href="#about" class="more-btn">Learn More <i
								class="bx bx-chevron-right"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-8 d-flex align-items-stretch" data-aos="zoom-in"
					data-aos-delay="100">
					<div class="icon-boxes d-flex flex-column justify-content-center">
						<div class="row">
							<div class="col-xl-4 d-flex align-items-stretch">
								<div class="icon-box mt-4 mt-xl-0">
									<i class="bx bx-receipt"></i>
									<h4>Wash the surface</h4>
									<p>Use hot water and an appropriate cleaner to wipe the
										surface clean.</p>
								</div>
							</div>
							<div class="col-xl-4 d-flex align-items-stretch">
								<div class="icon-box mt-4 mt-xl-0">
									<i class="bx bx-cube-alt"></i>
									<h4>Rinse the surface</h4>
									<p>Remove excess dirt by scraping or cleaning. If there is
										an excessive amount of grime on the surface.</p>
								</div>
							</div>
							<div class="col-xl-4 d-flex align-items-stretch">
								<div class="icon-box mt-4 mt-xl-0">
									<i class="bx bx-images"></i>
									<h4>Sanitize the surface</h4>
									<p>Sanitize the area using a product that is designed for
										sanitizing. Always ensure the product is used correctly.</p>
								</div>
							</div>
						</div>
					</div>
					<!-- End .content-->
				</div>
			</div>

		</div>
	</section>
	<!-- End Why Us Section --> <!-- ======= Features Section ======= -->
	<section id="features" class="features">
		<div class="container" data-aos="fade-up">

			<div class="row" data-aos="zoom-in" data-aos-delay="100">
				<div class="col-lg-3 col-md-4">
					<div class="icon-box">
						<i class="ri-store-line" style="color: #ffbb2c;"></i>
						<h3>
							<a href="">Equipment & Areas</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4 mt-md-0">
					<div class="icon-box">
						<i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
						<h3>
							<a href="">Equipment Disassembly</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4 mt-md-0">
					<div class="icon-box">
						<i class="ri-calendar-todo-line" style="color: #e80368;"></i>
						<h3>
							<a href="">Remove Excess Dirt</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4 mt-lg-0">
					<div class="icon-box">
						<i class="ri-paint-brush-line" style="color: #e361ff;"></i>
						<h3>
							<a href="">Cleaning Frequency</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-database-2-line" style="color: #47aeff;"></i>
						<h3>
							<a href="">Cleaning Tools </a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-gradienter-line" style="color: #ffa76e;"></i>
						<h3>
							<a href="">Cleaning Solution</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-file-list-3-line" style="color: #11dbcf;"></i>
						<h3>
							<a href="">Rinse with Warm</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-price-tag-2-line" style="color: #4233ff;"></i>
						<h3>
							<a href="">Potable Water</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-anchor-line" style="color: #b2904f;"></i>
						<h3>
							<a href="">Utensils and Dishes</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-disc-line" style="color: #b20969;"></i>
						<h3>
							<a href="">Grease and Destroys</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-base-station-line" style="color: #ff5828;"></i>
						<h3>
							<a href="">Safety Precautions</a>
						</h3>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 mt-4">
					<div class="icon-box">
						<i class="ri-fingerprint-line" style="color: #29cc61;"></i>
						<h3>
							<a href="">Treat with very hot</a>
						</h3>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- End Features Section --> <!-- ======= Popular Courses Section ======= -->
	<section id="popular-courses" class="courses">
		<div class="container" data-aos="fade-up">

			<div class="section-title">
				<h2>Services</h2>
				<p>Popular Services</p>
			</div>

			<div class="row" data-aos="zoom-in" data-aos-delay="100">

				<%
					try {
						Connection con = DbHelper.connect();
						Statement st = con.createStatement();
						ResultSet rs = st.executeQuery("select * from services");
						int i = 0;
						while (rs.next()) {
							i++;
				%>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="course-item">

						<img src='images/<%=rs.getString("image")%>' class="img-fluid"
							alt="..." style="width: 100%; height: 300px">
						<div class="course-content">
							<div
								class="d-flex justify-content-between align-items-center mb-3">
								<a href="servicereq.jsp?id=<%=rs.getInt("id")%>"><h4><%=rs.getString("ServiceName")%></h4></a>
								<p class="price"><%=rs.getString("Price")%>Rs.</p>
							</div>
							<p><%=rs.getString("ServiceDetail")%></p>
						</div>
					</div>
				</div>
				<!-- End Course Item-->

				<%
					}
					} catch (Exception e) {
						System.out.println(e);
					}
				%>
			</div>

		</div>
	</section>
	<!-- End Popular Courses Section --> <!-- ======= Trainers Section ======= -->
	<section id="trainers" class="trainers">
		<div class="container" data-aos="fade-up">

			<div class="row" data-aos="zoom-in" data-aos-delay="100">
				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="member">
						<img src="assets/img/trainers/sworker.jpg" class="img-fluid"
							alt="">
						<div class="member-content">
							<h4>Walter White</h4>
							<span>Cleaning Department</span>
							<p>Magni qui quod omnis unde et eos fuga et exercitationem.
								Odio veritatis perspiciatis quaerat qui aut aut aut</p>
							<div class="social">
								<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
									class="bi bi-facebook"></i></a> <a href=""><i
									class="bi bi-instagram"></i></a> <a href=""><i
									class="bi bi-linkedin"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="member">
						<img src="assets/img/trainers/sworker1.jpg" class="img-fluid"
							alt="">
						<div class="member-content">
							<h4>Sarah Jhinson</h4>
							<span>Clean Store Dept.</span>
							<p>Repellat fugiat adipisci nemo illum nesciunt voluptas
								repellendus. In architecto rerum rerum temporibus</p>
							<div class="social">
								<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
									class="bi bi-facebook"></i></a> <a href=""><i
									class="bi bi-instagram"></i></a> <a href=""><i
									class="bi bi-linkedin"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="member">
						<img src="assets/img/trainers/sworker2.jpg" class="img-fluid"
							alt="">
						<div class="member-content">
							<h4>William Anderson</h4>
							<span>Clean Store Dept.</span>
							<p>Voluptas necessitatibus occaecati quia. Earum totam
								consequuntur qui porro et laborum toro des clara</p>
							<div class="social">
								<a href=""><i class="bi bi-twitter"></i></a> <a href=""><i
									class="bi bi-facebook"></i></a> <a href=""><i
									class="bi bi-instagram"></i></a> <a href=""><i
									class="bi bi-linkedin"></i></a>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- End Trainers Section --> </main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>Sanitization Management System</h3>
						<p>
							C-Sector Indrapuri <br> Bhopal, M.P<br> India <br>
							<br> <strong>Phone:</strong> +91 1234 5678 90<br> <strong>Email:</strong>
							abc@gmail.com<br>
						</p>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>Join Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>
					</div>

				</div>
			</div>
		</div>

		<div class="container d-md-flex py-4">

			<div class="me-md-auto text-center text-md-start">
				<div class="copyright">
					&copy; Copyright <strong><span>Sanitization
							Management System</span></strong>. All Rights Reserved
				</div>
				<div class="credits">
					Designed by <a href="#">Panjwani Team</a>
				</div>
			</div>
			<div class="social-links text-center text-md-right pt-3 pt-md-0">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>
</html>