<%@page import="config.DbHelper"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Report</title>
</head>
<body>
	<div class="card shadow mt-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid green">Search
				Report</h5>
			<br>
			<div class="container-fluid mt-2">
				<form action="searchReportDtls.jsp" method="post">

					<div class="row">
						<div class="col-sm-12">
							<label><b>Search by given Request/Mobile number</b></label><br>
							<input type=text name="search" class="form-control"
								placeholder="Enter Request/Mobile number" required> <br>
							<input type=submit value="Submit" class="btn btn-primary">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>