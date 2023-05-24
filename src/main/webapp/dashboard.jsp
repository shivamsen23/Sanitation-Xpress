<%@page import="config.DbHelper"%>
<%@page import="java.sql.*"%>
<jsp:include page="header.jsp"></jsp:include>

<div class="container-fluid p-2">
	<div class="card shadow" style="min-height: 88vh">
		<div class="card-body">
			<h5 class="p-2" style="border-bottom: 2px solid green;">Welcome
				Administrator</h5>
			<div class="container-fluid mt-5">
				<!-- Main content -->
				<section class="content">
					<div class="container-fluid">
						<!-- Info boxes -->
						<div class="row">
							<div class="col-12 col-sm-6 col-md-4">
								<a href="adminService.jsp" class="text-dark">
									<div class="info-box">
										<span class="info-box-icon bg-info elevation-1"><i
											class="fas fa-layer-group"></i></span>

										<%
											try {
												int count = 0;
												Connection con = DbHelper.connect();
												Statement st = con.createStatement();
												ResultSet rs = st.executeQuery("SELECT id from services");
												while (rs.next()) {
													count++;
												}
										%>

										<div class="info-box-content">
											<span class="info-box-text">Total Service</span> <span
												class="info-box-number"> <%
 	out.print(count);
 %>
											</span>
										</div>
										<%
											
										%>

										<!-- /.info-box-content -->
									</div>
								</a>
								<!-- /.info-box -->
							</div>
							<!-- /.col -->
							<div class="col-12 col-sm-6 col-md-4">
								<a href="newRequest.jsp" class="text-dark">
									<div class="info-box mb-3">
										<span class="info-box-icon bg-danger elevation-1"><i
											class="fas fa-user-plus"></i></span>

										<%
											int count1 = 0;
												ResultSet rs1 = st.executeQuery("select id from requests where Status='' || Status is null");
												while (rs1.next()) {
													count1++;
												}
										%>

										<div class="info-box-content">
											<span class="info-box-text">New Request</span> <span
												class="info-box-number"> <%
 	out.print(count1);
 %>
											</span>
										</div>
										<!-- /.info-box-content -->
									</div> <!-- /.info-box -->
								</a>
							</div>
							<!-- /.col -->

							<!-- /.col -->
							<div class="col-12 col-sm-6 col-md-4">
								<a href="onthewayReq.jsp" class="text-dark">
									<div class="info-box mb-3">
										<span class="info-box-icon bg-success elevation-1">
										<i class="fas fa-users"></i></span>

										<%
											    int count2 = 0;
												//int status = 0;
												ResultSet rs2 = st.executeQuery("select id from requests where Status='Team On The Way'");
												while (rs2.next()) {
													count2++;
												}
										%>

										<div class="info-box-content">
											<span class="info-box-text">On the way for
												Sanitization</span> <span class="info-box-number"> <%
 	out.print(count2);
 %>
											</span>
										</div>
										<!-- /.info-box-content -->
									</div> <!-- /.info-box -->
								</a>
							</div>
							<!-- /.col -->

							<!-- /.col -->
							<div class="col-12 col-sm-6 col-md-4 mt-5">
								<a href="inprocessReq.jsp" class="text-dark">
									<div class="info-box mb-3">
										<span class="info-box-icon bg-warning elevation-1"><i
											class="fas fa-user-edit"></i></span>

										<%
											int count3 = 0;
												int status = 0;
												ResultSet rs3 = st.executeQuery("select id from requests where Status='Request is inprocess'");
												while (rs3.next()) {
													count3++;
												}
										%>

										<div class="info-box-content">
											<span class="info-box-text">Inprocess Request</span> <span
												class="info-box-number"> <%
 	out.print(count3);
 %>
										</div>
										<!-- /.info-box-content -->
									</div> <!-- /.info-box -->
								</a>
							</div>
							<!-- /.col -->

							<!-- /.col -->
							<div class="col-12 col-sm-6 col-md-4 mt-5">
								<a href="rejectReq.jsp" class="text-dark">
									<div class="info-box mb-3">
										<span class="info-box-icon bg-secondary elevation-1"><i
											class="fas fa-user-clock"></i></span>

										<%
											int count4 = 0;
												ResultSet rs4 = st.executeQuery("select id from requests where Status='Request has been rejected'");
												while (rs4.next()) {
													count4++;
												}
										%>

										<div class="info-box-content">
											<span class="info-box-text">Rejected Request</span> <span
												class="info-box-number"> <%
 	out.print(count4);
 %>
											</span>
										</div>
										<!-- /.info-box-content -->
									</div> <!-- /.info-box -->
								</a>
							</div>
							<!-- /.col -->

							<!-- /.col -->
							<div class="col-12 col-sm-6 col-md-4 mt-5">
								<a href="completeReq.jsp" class="text-dark">
									<div class="info-box mb-3">
										<span class="info-box-icon bg-light elevation-1"><i
											class="fas fa-user-check"></i></span>

										<%
											int count5 = 0;
												ResultSet rs5 = st.executeQuery("select id from requests where Status='Request has been Completed'");
												while (rs5.next()) {
													count5++;
												}
										%>


										<div class="info-box-content">
											<span class="info-box-text">Completed Request</span> <span
												class="info-box-number"> <%
 	out.print(count5);
 %>
											</span>
										</div>
										<!-- /.info-box-content -->
									</div> <!-- /.info-box -->
								</a>
							</div>
							<!-- /.col -->

							<!-- /.col -->
							<div class="col-12 col-sm-6 col-md-4 mt-5">
								<a href="allReq.jsp" class="text-dark">
									<div class="info-box mb-3">
										<span class="info-box-icon bg-info elevation-1"><i
											class="fas fa-user-cog"></i></span>

										<%
											int count6 = 0;
												ResultSet rs6 = st.executeQuery("SELECT id from requests");
												while (rs6.next()) {
													count6++;
												}
										%>


										<div class="info-box-content">
											<span class="info-box-text">Total Request</span> <span
												class="info-box-number"> <%
 	out.print(count6);
 %>
											</span>
										</div>
										<!-- /.info-box-content -->
									</div> <!-- /.info-box --> <%
 	} catch (Exception e) {
 		System.out.println(e);
 	}
 %>
								</a>
							</div>
							<!-- /.col -->

						</div>
						<!-- /.row -->
					</div>
				</section>

			</div>

		</div>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
