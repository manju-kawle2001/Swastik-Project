package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.ReportDao;
import com.swastik.model.ReportDto;
import com.swastik.other.Message;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class Reportservlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            ReportDto reportdto = new ReportDto();
            ReportDao reportdao = new ReportDao();

        
            HttpSession session = request.getSession();
            AccountOpenDao userDao = (AccountOpenDao) session.getAttribute("activeUser");

            // Set co-applicant/guarantor details
            reportdao.setReportType(request.getParameter("reporttype"));
            
            System.out.println(request.getParameter("reporttype"));
            
            reportdao. setReportMessage(request.getParameter("reportmessage"));
         
            reportdao.setAccNumber(userDao.getAccNum());
            // Apply for the loan
            boolean reportsatatus = reportdto.Report(reportdao);
            
            
            if (reportsatatus) {
                Message message = new Message(" Request submitted successfully!", "success", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/report.jsp");
            } else {
                Message message = new Message("Failed to Submit Request! Please try again.", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/report.jsp");
            }
            
        } catch (IOException | NumberFormatException e) {
            System.out.println(e);
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Report Servlet";
    }
}