<%@page import="config.DbHelper"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Between Date Report</title>
</head>
<body>

	<div class="card shadow mt-5">
		<div class="card-body">
			<h4 class="p-2" style="border-bottom: 2px solid green;">Between
				Date Report</h4>
			<div class="container-fluid mt-2">

				<table id="example" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>S No.</th>
							<th>Request_No</th>
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
							try {

								String FromDate = request.getParameter("FromDate").toString();
								String ToDate = request.getParameter("ToDate").toString();

								Connection con = DbHelper.connect();
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("Select * from requests where date(RequestDate) between '" + FromDate
										+ "' and '" + ToDate + "'");
								int i = 0;
								while (rs.next()) {
									i++;
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
							<td><a href="viewRequestDtls.jsp?id=<%=rs.getInt("id")%>" class="text-primary">View</a></td>
						</tr>
						<%
							}
						%>
						<h4 align="center" style="color: blue">
							Report from <span style="color: red"> <%
 	out.println(FromDate);
 %></span> to <span style="color: red"> <%
 	out.println(ToDate);
 %>
							</span>
						</h4>
						
						<%
							} catch (Exception e) {
								System.out.println(e);
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>