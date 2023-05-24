<%@page import="com.task.RequestDAO"%>
<%@page import="config.DbHelper"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Request Details</title>
</head>
<body>
	<div class="card shadow mt-5">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid orange;">Request
				Details</h5>

			<%
				int id = Integer.parseInt(request.getParameter("id"));
			    int reqID = 0;
				try {

					Connection con = DbHelper.connect();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(
							"select * from requests join services on services.id=requests.ServiceID where requests.id=" + id
									+ "");
					while (rs.next()) {
			%>

			<div class="container-fluid">
				<% reqID = rs.getInt("RequestID"); %>
				<!-- Page Heading -->
				<h1 class="h3 mb-4 text-gray-800">
					Request Details : <span style="color: brown;"> <%=rs.getInt("RequestID")%>
					</span>
				</h1>

				<div class="row">
					<div class="col-lg-6">

						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-info">Personal
									Information</h6>
							</div>
							<div class="card-body">

								<table class="table table-bordered" width="100%" cellspacing="0">
									<tr>
										<th>Full Name</th>
										<td><%=rs.getString("Name")%></td>
									</tr>
									<tr>
										<th>Email Id</th>
										<td><%=rs.getString("Email")%></td>
									</tr>

									<tr>
										<th>Mobile Number</th>
										<td><%=rs.getString("MobileNumber")%></td>
									</tr>

									<tr>
										<th>Date of Sanitization</th>
										<td><%=rs.getString("DateofSanitization")%></td>
									</tr>

									<tr>
										<th>Time of Sanitization</th>
										<td><%=rs.getString("TimeofSanitization")%></td>
									</tr>

									<tr>
										<th>Address</th>
										<td><%=rs.getString("Address")%></td>
									</tr>
									<tr>
										<th>State</th>
										<td><%=rs.getString("State")%></td>
									</tr>

									<tr>
										<th>City</th>
										<td><%=rs.getString("City")%></td>
									</tr>
									<tr>
										<th>Request Date</th>
										<td><%=rs.getString("RequestDate")%></td>

									</tr>

									<tr>
										<th>Message</th>
										<td><%=rs.getString("Message")%></td>
									</tr>
								</table>
							</div>
						</div>
					</div>

					<!-- Test Information --->
					<div class="col-lg-6">

						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-info">Test Information</h6>
							</div>
							<div class="card-body">

								<table class="table table-bordered" width="100%" cellspacing="0">
									<tr>
										<th>Request Number</th>
										<td><%=rs.getInt("RequestID")%></td>
									</tr>

									<tr>
										<th>Service Name</th>
										<td><%=rs.getString("ServiceName")%></td>
									</tr>


									<tr>
										<th>Service Detail</th>
										<td><%=rs.getString("ServiceDetail")%></td>
									</tr>
									<tr>
										<th>Price</th>
										<td><%=rs.getString("Price")%> Rs.</td>
									</tr>

									<tr>
										<%
											if (rs.getString("Status") == null) {
										%>
										<th>Status</th>
										<td>Waiting for Update</td>
										<%
											} else {
										%>
										<th>Status</th>
										<td><%=rs.getString("Status")%></td>
										<%
											}
										%>
									</tr>

									<tr>
										<th>Request Date</th>
										<td><%=rs.getString("RequestDate")%></td>
									</tr>

									<tr>
										<%
											if (rs.getString("Remark") == null) {
										%>
										<th>Remark</th>
										<td>Not Process yet</td>
										<%
											} else {
										%>
										<th>Remark</th>
										<td><%=rs.getString("Remark")%></td>
										<%
											}
										%>
									</tr>
								</table>

								<%
									if (rs.getString("Status") == null) {
								%>
								<div class="form-group mt-3">
									<button type="button" class="btn btn-secondary btn-sm"
										data-toggle="modal" data-target="#assignto">Take
										Action</button>
								</div>
								<%
									} else {
								%>
								<button type="button" class="btn btn-primary btn-sm mt-3"
									data-toggle="modal" data-target="#takeaction">Take
									Action</button>
								<%
									}
								%>
							</div>
						</div>

					</div>
				</div>
				</form>

				<!-- Test Tracking History --->
				<div class="row">
					<div class="col-lg-12">

						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h6 class="m-0 font-weight-bold text-primary" align="center">Tracking
									History</h6>
							</div>
							<div class="card-body">

								<table class="table table-bordered" width="100%" cellspacing="0">
									<tr>
										<th>Remark</th>
										<th>Status</th>
										<th>Remark Date</th>
									</tr>
									<%
				//int rid = Integer.parseInt(request.getParameter("reqID"));
			    //int reqID = 0;
			    int trackingCount = 0;
				try {
							
					Connection con1 = DbHelper.connect();
					Statement st1 = con1.createStatement();
					ResultSet rs1 = st1.executeQuery(
							"select * from tracking where RequestID=" + reqID);
					while (rs1.next()) {
						trackingCount = 1;
			%>
			
									<tr>
										<td><%=rs1.getString("Remark")%></td>
										<td><%=rs1.getString("Status")%></td>
										<td><%=rs1.getString("UpdationDate")%></td>
									</tr>

								

                           <%
				}
					%>
					</table>
					<% 
				} catch (Exception e) {
					System.out.println(e);
				}
			%>
								<% if(trackingCount == 0){
								%>
								<h4 align="center" style="color: red">No Tracking history
									found</h4>
								<%
								}
								%>


							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- /.container-fluid -->

			<!-- Assign Modal -->
			<div id="assignto" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<div class="modal-content">
						<div class="modal-header">
							<h4 align="left">Assign to</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">

							<form action="updateReq" method="post">

								<div class="modal-body">
									<div class="form-group form-row">
										<label class="col-sm-4">Remark</label>
										<div class="col-sm-8">
											<textarea name="Remark" placeholder="Remark" rows="10"
												cols="10" class="form-control form-control-sm" required></textarea>
										</div>
									</div>

									<div class="form-group form-row">
										<label class="col-sm-4">Status</label>
										<div class="col-sm-8">
											<select name="Status" class="form-control form-control-sm"
												required>
												<option value="Team On The Way">Team On The Way</option>
												<option value="Request is inprocess">Request is
													inprocess</option>
												<option value="Request has been Completed">Request
													has been Completed</option>
												<option value="Request has been rejected">Request
													has been rejected</option>
											</select>
										</div>
									</div>
								</div>
								<input type="hidden" name="id" value="<%=id %>"> <input
									type="hidden" name="rid" value="<%=reqID %>">
								<div class="modal-footer">
									<input type="submit" value="Submit"
										class="btn btn-primary btn-sm">
								</div>
							</form>
						</div>
					</div>
				</div>

				<%
					String succMsg = (String) session.getAttribute("succMsg");
					String failedMsg = (String) session.getAttribute("failedMsg");

					if (succMsg != null) {
				%>
				<script>
					alert("Remark has been Updated");
				</script>
				<%
					session.removeAttribute("succMsg");
							}
				%>
				<%
					if (failedMsg != null) {
				%>
				<script>
					alert("somethng went wrong..!!!");
				</script>
				<%
					session.removeAttribute("failedMsg");
							}
				%>

			</div>

			<!-- Take Action Modal -->


			<div id="takeaction" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<div class="modal-content">
						<div class="modal-header">
							<h4 align="left">Take Action</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<form action="updateReq" method="post">


								<div class="form-group form-row">
									<label class="col-sm-4">Remark</label>
									<div class="col-sm-8">
										<textarea name="Remark" placeholder="Remark" rows="10"
											cols="10" class="form-control form-control-sm" required></textarea>
									</div>
								</div>

								<div class="form-group form-row">
									<label class="col-sm-4">Status</label>
									<div class="col-sm-8">
										<select name="Status" id="status"
											class="form-control form-control-sm" required>

											<%
									           if (rs.getString("Status").equalsIgnoreCase("Team On The Way")) 
									           {
								            %>
											<option value="Request is inprocess">Request is
												inprocess</option>
											<option value="Request has been Completed">Request
												has been Completed</option>
											<option value="Request has been rejected">Request
												has been rejected</option>
											<%
									           } else if(rs.getString("Status").equalsIgnoreCase("Request is inprocess")){
								            %>
											<option value="Request has been Completed">Request
												has been Completed</option>
											<option value="Request has been rejected">Request
												has been rejected</option>
											<%
									            }
								             %>
										</select>
									</div>
								</div>
								<input type="hidden" name="id" value="<%=id%>"><input
									type="hidden" name="rid" value="<%=reqID %>">
								<div class="modal-footer">
									<input type="submit" value="Submit"
										class="btn btn-primary btn-sm">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<%
								}			
				} catch (Exception e) {
					System.out.println(e);
				}
			%>

			<script type="text/javascript">
				//For report file
				$('#reportfile').hide();
				$(document).ready(function() {
					$('#status').change(function() {
						if ($('#status').val() == 'Delivered') {
							$('#reportfile').show();
							jQuery("#report").prop('required', true);
						} else {
							$('#reportfile').hide();
						}
					})
				})
			</script>
			
		</div>
	</div>
</body>
</html>