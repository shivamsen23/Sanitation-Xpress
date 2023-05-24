package com.task;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/updateService")
@MultipartConfig
public class UpdateServiceServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String ServiceName = req.getParameter("ServiceName");
        String Price = req.getParameter("Price");
        String ServiceDetail = req.getParameter("ServiceDetail");
        String id = req.getParameter("id");
                
        try {
            if (!req.getPart("image").getSubmittedFileName().isEmpty()) {
                Part image = req.getPart("image");
                ServiceDAO.fileCopy(getServletContext(), image, id + ".jpg");
            }
            ServiceDtls a=new ServiceDtls();
            a.setId(Integer.parseInt(id));
            a.setServiceName(ServiceName);
            a.setPrice(Price);
            a.setServiceDetail(ServiceDetail);
                                   
            ServiceDAO.updateService(a);

            resp.sendRedirect("adminService.jsp?msgg=validd&id="+id);

        } catch (Exception e) {
            resp.getWriter().println("Error " + e.getMessage());
        }

    }

}
