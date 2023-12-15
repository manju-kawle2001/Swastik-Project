package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.Updationdao2;
import com.swastik.model.Updationdto2;
import com.swastik.other.Message;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class UpdationServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            Updationdto2 updateDto = new Updationdto2();
            Updationdao2 updateDao = new Updationdao2();

            // Update Updationdao2 setters and getters accordingly
            updateDao.setUpdationType(request.getParameter("updateType"));
            updateDao.setName(request.getParameter("name"));
            updateDao.setFatherName(request.getParameter("fatherName"));
            updateDao.setMotherName(request.getParameter("motherName"));
            updateDao.setGender(request.getParameter("gender"));
            updateDao.setDob(request.getParameter("dob"));
            updateDao.setMarital(request.getParameter("maritalStatus"));
            updateDao.setEmail(request.getParameter("email"));
            updateDao.setMobile(request.getParameter("mobile"));
            
            
             HttpSession session = request.getSession();
            AccountOpenDao userDao = (AccountOpenDao) session.getAttribute("activeUser");
            
            
            updateDao.setAddress(request.getParameter("streetHomeNumber"));
            updateDao.setCity(request.getParameter("city"));
            updateDao.setDistrict(request.getParameter("district"));
            updateDao.setState(request.getParameter("state"));
            updateDao.setPincode(request.getParameter("pincode"));
            updateDao.setNomineeName(request.getParameter("nomineeName"));
            updateDao.setNomineeFather(request.getParameter("nomineeFatherName"));
            updateDao.setNomineeMobile(request.getParameter("nomineeMobile"));
            updateDao.setNomineeEmail(request.getParameter("nomineeEmail"));
            updateDao.setNomineeAadhar(request.getParameter("nomineeAadhar"));
            updateDao.setAccNumber(userDao.getAccNum());
           


            // Apply for the loan
            boolean updateRequestStatus = updateDto.Updaterequest(updateDao);

            if (updateRequestStatus) {
                Message message = new Message("UpdationRequest! submitted successfully!", "success", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/documentupdate.jsp");
            } else {
                Message message = new Message("Failed to submit UpdationRequest! Please try again.", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/documentupdate.jsp");
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
        return "Update Request Servlet";
    }
}