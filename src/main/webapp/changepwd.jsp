<%@page import="config.DbHelper"%>
<%@page import="java.sql.*"%>
<%
	String username = session.getAttribute("username").toString();
	String opwd = request.getParameter("opwd");
	String pwd = request.getParameter("pwd");
	String npwd = request.getParameter("npwd");

	if (!npwd.equals(pwd))
		response.sendRedirect("footer.jsp?msg=notMatch");
	else {
		int check = 0;
		try {
			Connection con = DbHelper.connect();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(
					"select * from admin where username='" + username + "' and password='" + opwd + "'");
			while (rs.next()) {
				check = 1;
				st.executeUpdate("update admin set password='" + pwd + "' where username='" + username + "'");
				response.sendRedirect("footer.jsp?msg=done");
			}
			if (check == 0)
				response.sendRedirect("footer.jsp?msg=wrong");
		} catch (Exception e) {
			System.out.println(e);
		}
	}
%>