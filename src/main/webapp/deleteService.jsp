<%@page import="config.DbHelper"%>
<%@page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	try {
		Connection con = DbHelper.connect();
		Statement st = con.createStatement();
		st.executeUpdate("delete from services where id='"+id+"'");
		response.sendRedirect("adminService.jsp");
	} catch (Exception e) {
		System.out.println(e);
	}
%>