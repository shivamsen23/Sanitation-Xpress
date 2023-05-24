<%@page import="config.DbHelper"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="card shadow">
		<div class="card-body">
			<div class="row">
				<div class="col-lg-12">
					<div class="table-responsive table--no-card m-b-30">
						
						<table id="example" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>S No.</th>
									<th>Request No</th>
									<th>Name</th>
									<th>Mobile No</th>
									<th>Email</th>
									<th>Sanitization Date</th>
									<th>Sanitization Time</th>
									<th>Requested Date</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
											int i = 0;
											try {
												String search = request.getParameter("search");
												Connection con = DbHelper.connect();
												Statement st = con.createStatement();
												ResultSet rs = st.executeQuery("select * from requests where RequestID like '%" + search
														+ "%' || MobileNumber like '%" + search + "%'");
												while (rs.next()) {
													i = i + 1;
										%>

								<tr>
									<td><%=i%></td>
									<td><%=rs.getInt("RequestID")%></td>
									<td><%=rs.getString("Name")%></td>
									<td><%=rs.getString("MobileNumber")%></td>
									<td><%=rs.getString("Email")%></td>
									<td><%=rs.getString("DateofSanitization")%></td>
									<td><%=rs.getString("TimeofSanitization")%></td>
									<td><%=rs.getString("RequestDate")%></td>
									<td><%=rs.getString("Status")%></td>
									<td><a href="viewRequestDtls.jsp?id=<%=rs.getInt("id")%>"
										class="btn btn-sm btn-primary">View</a></td>
									
								</tr>
								<br><br>
								<%
									if (i == 1) {
								%>
								<h4 align="center">
									Result against "<%out.println(search);%>" keyword
								</h4>
								<%
								} else {
								%>
								<h4>No record found against this search</h4>
								<%
									}
								%>
								
								<%
											}
											} catch (Exception e) {
												System.out.println(e);
											}
										%>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>