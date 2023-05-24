package com.task;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.DbHelper;

@WebServlet("/login")
public class ValidateServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		try {
			String sql="SELECT * FROM admin WHERE username=? and password=? limit 1";
			Map<String,String> result=DbHelper.executeDQLReturnSingle(sql, username,password);
			System.out.println(result);
			if(result!=null) {
				session.setAttribute("username", username);
				session.setAttribute("validMsg", "Logged in Successfully");
				resp.sendRedirect("admin_login.jsp");
				//session.setAttribute("error", "Invalid username or password");
				//resp.sendRedirect("index2.jsp");
			}else {
				session.setAttribute("invalidMsg", "Invalid Creadential !! Please Try Again..");
				resp.sendRedirect("admin_login.jsp");
				//session.setAttribute("UserName", result.get("UserName"));
				//resp.sendRedirect("dashboard.jsp");
				
			}
		}
		catch(Exception ex) {
			System.err.println(ex);
		}		
	}
}