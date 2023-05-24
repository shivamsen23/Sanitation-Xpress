<%@page import="java.sql.*"%>
<%@page import="config.DbHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete Request</title>
</head>
<body>

<div class="card shadow mt-5">
    <div class="card-body">

        <h4 class="p-2" style="border-bottom: 2px solid green;">Complete Request</h4>
        <div class="container-fluid mt-3">
            <table id="example" class="table table-striped table-bordered">
                <thead>
                <tr>
                    <th>S No.</th>
                    <th>Request_No.</th>
                    <th>Name</th>
                    <th>Mobile_No.</th>
                    <th>Sanitization_Date</th>
                    <th>Sanitization_Time</th>
                    <th>Requested_Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <%
							try {
								Connection con = DbHelper.connect();
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("select * from requests where Status='Request has been Completed'");
								int i = 0;
								while (rs.next()) {
									i++;
						%>
						<tr>
						<td><%=i%></td>
						<td><%=rs.getInt("RequestID")%></td>
						<td><%=rs.getString("Name")%></td>
						<td><%=rs.getString("MobileNumber")%></td>
						<td><%=rs.getString("DateofSanitization")%></td>
						<td><%=rs.getString("TimeofSanitization")%></td>
						<td><%=rs.getString("RequestDate")%></td>

						<%
							if (rs.getString("Status") == null) {
						%>
						<td>Not Updated Yet</td>
						<%
							} else {
						%>
						<td><%=rs.getString("Status")%></td>
						<%
							}
						%>
						<td><a href="viewRequestDtls.jsp?id=<%=rs.getInt("id")%>"
							class="btn btn-sm btn-primary">View Details</a></td>
						</tr>
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



</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>