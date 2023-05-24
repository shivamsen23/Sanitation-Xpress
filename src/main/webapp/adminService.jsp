<%@page import="com.task.ServiceDAO"%>
<%@page import="com.task.ServiceDtls"%>
<%@page import="java.sql.*"%>
<%@page import="config.DbHelper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid p-2">
	<div class="card shadow" style="min-height: 90vh">
		<div class="card-body">

			<a href="#" class="btn btn-success btn-sm float-right"
				data-target="#addpro" data-toggle="modal"><i class="fa fa-plus"></i>
				Create New Service</a>
			<h4 class="p-2" style="border-bottom: 2px solid green;">Manage
				Service</h4>
			<table class="table table-bordered table-sm">
				<thead>
					<tr>
						<th>S No.</th>
						<th>Service Title</th>
						<th>Price</th>
						<th>Service Image</th>
						<th>Creation Date</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>

					<%
						int i = 0;
						for (ServiceDtls a : ServiceDAO.getService(false, false)) {
							i++;
					%>
					<tr>
						<td><%=i%></td>
						<td><%=a.getServiceName()%></td>
						<td><%=a.getPrice()%> Rs.</td>
						<td><img width='100' height='100'
							src='images/<%=a.getImage()%>'></td>
						<td><%=a.getCreationDate()%></td>
						<td style="width: 120px;">
							<button class="btn btn-primary btn-sm" data-toggle="modal"
								data-target="#r<%=a.getId()%>">Edit</button> <a
							onclick="return confirm('Are you sure to Delete')"
							href="deleteService.jsp?id=<%=a.getId()%>"
							class="btn btn-sm btn-danger">Delete</a>
							<div class="modal fade" id="r<%=a.getId()%>">
								<div class="modal-dialog">
									<form class="modal-content" method="post"
										action="updateService" enctype="multipart/form-data">
										<input type="hidden" value="<%=a.getId()%>" name="id">
										<div class="modal-header">
											<h5>Edit Service</h5>
										</div>
										<div class="modal-body">
											<div class="form-group form-row">
												<label class="col-sm-4">Service Title</label>
												<div class="col-sm-8">
													<input type="text" name="ServiceName"
														value="<%=a.getServiceName()%>"
														class="form-control form-control-sm">
												</div>
											</div>



											<div class="form-group form-row">
												<label class="col-sm-4">Price</label>
												<div class="col-sm-8">
													<input type="text" name="Price" value="<%=a.getPrice()%>"
														class="form-control form-control-sm">
												</div>
											</div>

											<div class="form-group form-row">
												<label class="col-sm-4">Service Image</label>
												<div class="col-sm-8">
													<img src="images/<%=a.getImage()%>" width="70" height="70"
														class="float-right"> <input type="file" name="image"
														accept=".jpg,.png" class="form-control form-control-sm">

												</div>
											</div>

											<div class="form-group form-row">
												<label class="col-sm-4">Description</label>
												<div class="col-sm-8">
													<input type="text" name="ServiceDetail"
														value="<%=a.getServiceDetail()%>"
														class="form-control form-control-sm">
												</div>
											</div>

										</div>
										<div class="modal-footer">
											<input type="submit" value="Update"
												class="btn btn-primary btn-sm">
										</div>
									</form>
								</div>
							</div>
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="modal fade" id="addpro">
	<div class="modal-dialog">
		<form class="modal-content" method="post" action="addService"
			enctype="multipart/form-data">
			<div class="modal-header">
				<h5>Add Service</h5>
			</div>
			<div class="modal-body">
				<div class="form-group form-row">
					<label class="col-sm-4">Service Title</label>
					<div class="col-sm-8">
						<input type="text" name="ServiceName"
							placeholder="Service Name" class="form-control form-control-sm">
					</div>
				</div>

				<div class="form-group form-row">
					<label class="col-sm-4">Service Price</label>
					<div class="col-sm-8">
						<input type="text" name="Price"
							placeholder="Service Price(In Rs.)" class="form-control form-control-sm">
					</div>
				</div>


				<div class="form-group form-row">
					<label class="col-sm-4">Description</label>
					<div class="col-sm-8">
						<textarea name="ServiceDetail"
							placeholder="Service Description" class="form-control form-control-sm"></textarea>
					</div>
				</div>

				<div class="form-group form-row">
					<label class="col-sm-4">Service Image</label>
					<div class="col-sm-8">
						<input type="file" name="image" accept=".jpg,.png"
							class="form-control form-control-sm">
					</div>
				</div>


			</div>
			<div class="modal-footer">
				<input type="submit" value="Save Service"
					class="btn btn-primary btn-sm">
			</div>
		</form>
	</div>
</div>

<%
	String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
%>
<script>
	alert("New Service Add Successfully..");
	//window.location.assign("manageAnimal.jsp");
</script>
<%
	}
%>


<%
	String msgg = request.getParameter("msgg");
	if ("validd".equals(msgg)) {
%>
<script>
	alert("Service Updated Successfully..");
</script>
<%
	}
%>
<jsp:include page="footer.jsp"></jsp:include>