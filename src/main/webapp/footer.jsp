<%
	String msg = request.getParameter("msg");
	if ("notMatch".equals(msg)) {
%>
<script>
	alert("New password and Confirm password does not match!");
	//window.location.assign("footer.jsp");
</script>
<%
	}
%>
<%
	if ("wrong".equals(msg)) {
%>
<script>
	alert("Your old Password is wrong!");
	//window.location.assign("footer.jsp");
</script>
<%
	}
%>
<%
	if ("done".equals(msg)) {
%>
<script>
	alert("Password changed successfully!");
	window.location.assign("index.jsp");
</script>

<%
	}
%>

<div class="modal fade" id="changepwd">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<form action="changepwd.jsp" method="post">
				<div class="modal-header">
					<h4>Change Password</h4>
					<button class="close" type="button" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<input type="password" name="opwd" class="form-control"
							placeholder="Current Password">
					</div>
					<div class="form-group">
						<input type="password" name="pwd" class="form-control"
							placeholder="New Password">
					</div>
					<div class="form-group">
						<input type="password" name="npwd" class="form-control"
							placeholder="Confirm Password">
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary btn-sm float-right">Change
						Password</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>