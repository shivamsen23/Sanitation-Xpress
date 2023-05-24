<?php include_once 'includes/dbfun.php'; ?>
<!DOCTYPE html>
<html>
<head runat="server">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Dashboard</title>
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/all.css" rel="stylesheet" />
<link href="css/adminlte.css" rel="stylesheet" />
<link href="css/OverlayScrollbars.css" rel="stylesheet" />
<link rel="icon" href="images/lib5.jpg" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/buttons/1.6.5/css/buttons.dataTables.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">

<script src="js/jquery-3.4.1.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/all.js"></script>
<script src="js/adminlte.js"></script>
<script src="js/jquery.overlayScrollbars.js"></script>
<script
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script
	src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
<style>
body {
	background-color: aliceblue;
}

marquee ul {
	padding: 0;
}

marquee ul li {
	border-bottom: 1px solid black;
	background-color: skyblue;
	padding: 4px;
	margin-bottom: 2px;
}

marquee ul li:hover {
	background-color: aqua;
}
</style>
</head>
<body
	class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
	<nav class="main-header navbar navbar-expand navbar-white navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
				href="#" role="button"><i class="fas fa-bars"></i></a></li>
		</ul>
		<h5 class="text-center text-uppercase" style="width: 100%;"><span style="color: red">S</span>anitization <span style="color: red">M</span>anagement <span style="color: red">S</span>ystem</h5>
		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Messages Dropdown Menu -->
			<!-- Notifications Dropdown Menu -->
			<li class="nav-item"><a class="nav-link"
				data-widget="fullscreen" href="#" role="button"> <i
					class="fas fa-expand-arrows-alt"></i>
			</a></li>
			<li class="nav-item dropdown"><a class="nav-link"
				data-toggle="dropdown" href="#"> <i
					class="far fa-bell fas-shake animated"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<span class="dropdown-item dropdown-header">Accounts</span>
					<div class="dropdown-divider"></div>
					<a href="logout" class="dropdown-item"> <i
						class="fas fa-users mr-2"></i>Logout
					</a>
					<div class="dropdown-divider"></div>
					<a href="#" data-target="#changepwd" data-toggle="modal"
						class="dropdown-item"> <i class="fas fa-key mr-2"></i>Change
						Password
					</a>
				</div></li>

		</ul>
	</nav>

	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="dashboard.jsp" class="brand-link"> <span
			class="brand-text font-weight-light">Admin Role</span>
		</a> <a href="dashboard.jsp" class="brand-link"> <img
			src="images/user1.png" alt=""
			class="brand-image img-circle elevation-3" style="opacity: .8">
			<span class="brand-text font-weight-light">Administrator</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item"><a href="dashboard.jsp" class="nav-link">
							<i class="nav-icon fas fa-tachometer-alt"></i>
							<p>Dashboard</p>
					</a></li>

					<li class="nav-item"><a href="adminService.jsp" class="nav-link">
							<i class="nav-icon fas fa-layer-group"></i>
							<p>Service</p>
					</a></li>
					
					<li class="nav-item dropdown"><a
                        class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                        role="button" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false"> <i class="nav-icon fas fa-file"></i> Sanitization Request </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item bg-dark" href="newRequest.jsp">New</a>
                        <a class="dropdown-item bg-dark" href="onthewayReq.jsp">On the Way for Sanitization</a>
                        <a class="dropdown-item bg-dark" href="inprocessReq.jsp">Inprocess</a>
                        <a class="dropdown-item bg-dark" href="completeReq.jsp">Completed</a>
                        <a class="dropdown-item bg-dark" href="rejectReq.jsp">Rejected</a>
                        <a class="dropdown-item bg-dark" href="allReq.jsp">All Request</a>
                    </div>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#"
                       role="button" data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false"> <i class="nav-icon fas fa-folder-open"></i> Report </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item bg-dark" href="bwdateReport.jsp"> B/W Date Report</a> <a
                            class="dropdown-item bg-dark" href="searchReport.jsp"> Search Report</a>
                    </div>
                </li>
					
					
					
					<li class="nav-item"><a href="footer.jsp" data-target="#changepwd" data-toggle="modal" class="nav-link">
							<i class="nav-icon fas fa-key"></i>
							<p>Change Password</p>
					</a></li>
					
					<li class="nav-item"><a href="logout" class="nav-link">
							<i class="nav-icon fas fa-power-off"></i>
							<p>Logout</p>
					</a></li>
					
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>
	<div class="content-wrapper">
		<jsp:include page="msg.jsp"></jsp:include>
		