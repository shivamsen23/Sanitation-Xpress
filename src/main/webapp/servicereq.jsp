<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Service - Sanitization Management System</title>
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
					<li><a href="about.jsp">About</a></li>
					<li><a href="service.jsp">Services</a></li>
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

	<main id="main"> <!-- ======= Breadcrumbs ======= -->
	<div class="breadcrumbs" data-aos="fade-in">
		<div class="container">
			<h2>Request Form</h2>
			<p>Sanitizing could be done by either cleaning, disinfecting, or
				both. Sanitizing means that you are lowering the number of germs to
				a safe level.</p>
		</div>
	</div>
	<!-- End Breadcrumbs --> <!-- ======= Service Section ======= -->
	<section id="contact" class="contact">

		<div class="container" data-aos="fade-up">
			<%
				String msg = request.getParameter("msg");
				if ("valid".equals(msg)) {
			%>
			<script>
				alert("Your Request Has been Send Successfully..");
			</script>
			<%
				}
			%>
			<div class="row mt-5">

				<%
					String id = request.getParameter("id");
				%>

				<div class="col-lg-8 mt-5 mt-lg-0">

					<form action="serviceReq" method="post">
						<input type="hidden" name="id" value="<%=id%>">
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="text" name="Name" class="form-control" id="Name"
									placeholder="Enter Name" required>
							</div>
							<div class="col-md-6 form-group mt-3 mt-md-0">
								<input type="email" class="form-control" name="Email" id="Email"
									placeholder="xxxxx@gmail.com" required>
							</div>
						</div>

						<div class="row mt-3">
							<div class="col-md-6 form-group">
								<input type="date" name="DateofSanitization"
									class="form-control" id="DateofSanitization" required>
							</div>
							<div class="col-md-6 form-group mt-3 mt-md-0">
								<input type="time" name="TimeofSanitization"
									class="form-control" id="TimeofSanitization" required>
							</div>
						</div>

						<div class="row mt-3">
							<div class="col-md-6 form-group">
								<input type="text" name="MobileNumber" class="form-control"
									id="MobileNumber" placeholder="Enter mobile number" required>
							</div>
							<div class="col-md-6 form-group mt-3 mt-md-0">
								<input type="text" name="Address" class="form-control"
									id="Address" placeholder="Your Address" required>
							</div>
						</div>

						<div class="row mt-3">
							<div class="col-md-6 form-group">
								<input type="text" name="State" class="form-control" id="State"
									placeholder="Enter State" required>
							</div>
							<div class="col-md-6 form-group mt-3 mt-md-0">
								<input type="text" name="City" class="form-control" id="City"
									placeholder="Enter City" required>
							</div>
						</div>

						<div class="form-group mt-3">
							<textarea class="form-control" name="Message" rows="5"
								placeholder="Message" required></textarea>
						</div>

						<input type="submit" class="btn btn-primary mt-3" value="Submit">

					</form>

				</div>

				<div class="col-lg-4 mt-5 mt-lg-0">
					<img src="assets/img/about.jpg" style="height: 400px; width: 100%;">
				</div>

			</div>

		</div>
	</section>
	<!-- End Contact Section --> </main>
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