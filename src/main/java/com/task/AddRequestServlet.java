package com.task;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/serviceReq")
@MultipartConfig
public class AddRequestServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int ServiceID = Integer.parseInt(req.getParameter("id"));
		int RequestID = (int) (Math.random() * 100000000);
		String Name = req.getParameter("Name");
        String Email = req.getParameter("Email");
        String DateofSanitization = req.getParameter("DateofSanitization");
        String TimeofSanitization = req.getParameter("TimeofSanitization");
        String Address = req.getParameter("Address");
        String MobileNumber = req.getParameter("MobileNumber");
        String State = req.getParameter("State");
        String City = req.getParameter("City");
        String Message = req.getParameter("Message");
        String Remark = req.getParameter("Remark");
        String Status = req.getParameter("Status");
        
        try {
            Request a=new Request(ServiceID, RequestID, Name, Email, DateofSanitization, TimeofSanitization,Address,MobileNumber, State, City, Message, Remark, Status);
            RequestDAO.addRequest(a);
            resp.sendRedirect("servicereq.jsp?msg=valid");

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
        
	}

	
}
