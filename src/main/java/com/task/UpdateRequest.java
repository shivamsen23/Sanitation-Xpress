package com.task;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import config.DbHelper;


@WebServlet("/updateReq")
public class UpdateRequest extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			int RequestID = Integer.parseInt(req.getParameter("rid"));
			String Remark = req.getParameter("Remark");
			String Status = req.getParameter("Status");

			Request ap = new Request();
			ap.setId(id);
			ap.setRequestID(RequestID);
			ap.setRemark(Remark);
			ap.setStatus(Status);

			RequestDAO dao = new RequestDAO(DbHelper.connect());
			RequestDAO.addTrack(ap);
			boolean f = dao.updateRemark(ap);

			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Remark has been Updated");
				resp.sendRedirect("viewRequestDtls.jsp?id=" + id);
			} else {
				session.setAttribute("failedMsg", "somethng went wrong..!!!");
				resp.sendRedirect("viewRequestDtls.jsp?id=" + id);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
