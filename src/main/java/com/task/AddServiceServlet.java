package com.task;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/addService")
@MultipartConfig
public class AddServiceServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ServiceName = req.getParameter("ServiceName");
        String Price = req.getParameter("Price");
        String ServiceDetail = req.getParameter("ServiceDetail");
        Part image = req.getPart("image");
       
        try {
            ServiceDtls a=new ServiceDtls(ServiceName, Price, ServiceDetail);
            ServiceDAO.addService(a, image,getServletContext());
            resp.sendRedirect("adminService.jsp?msg=valid");

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }
	}
}
