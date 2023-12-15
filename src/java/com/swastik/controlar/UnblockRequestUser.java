package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.Unblockdto;
import com.swastik.model.Unblockdao;
import com.swastik.other.Message;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class UnblockRequestUser extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            Unblockdto undto = new Unblockdto();
            Unblockdao undao = new Unblockdao();

            
            HttpSession session = request.getSession();
            AccountOpenDao userDao = (AccountOpenDao) session.getAttribute("activeUser");

            // Set co-applicant/guarantor details
            undao.setAdhar(request.getParameter("adharnumber"));
            
            
            System.out.println(request.getParameter("pannumber"));
            
            undao.setPan(request.getParameter("pannumber"));
            undao.setEmail(request.getParameter("email"));
            undao.setMobile(request.getParameter("mobile"));
           
            undao.setAccNumber(userDao.getAccNum());
            // Apply for the loan
            boolean requestStatus = undto.Unblock(undao);
            
            
            if (requestStatus) {
                Message message = new Message("Request submitted successfully!", "success", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/unblockaccount.jsp");
            } else {
                Message message = new Message("Failed to submit Request! Please try again.", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/unblockaccount.jsp");
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
        return "Loan Application Servlet";
    }
}