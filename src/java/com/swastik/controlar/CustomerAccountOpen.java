package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.AccountOpenDto;
import com.swastik.other.Message;
import com.swastik.service.MailServices;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
//import java.io.PrintWriter;

public class CustomerAccountOpen extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            AccountOpenDto aoDto = new AccountOpenDto();
            AccountOpenDao aoDao = new AccountOpenDao();
            aoDao.setName(request.getParameter("firstName") + " " + request.getParameter("lastName"));
            aoDao.setFather(request.getParameter("fatherName"));
            aoDao.setMother(request.getParameter("motherName"));
            aoDao.setDob(request.getParameter("dob"));
            aoDao.setGender(request.getParameter("gender"));
//            aoDao.setImage(request.getParameter("image"));
            aoDao.setOccupation(request.getParameter("occupation"));
            aoDao.setMaritail(request.getParameter("maritailStatus"));
            aoDao.setMobile(request.getParameter("mobile"));
            aoDao.setEmail(request.getParameter("gmail"));
            aoDao.setAdhar(request.getParameter("adhar"));
            aoDao.setPan(request.getParameter("pan"));
            aoDao.setAddress(request.getParameter("address"));
            aoDao.setState(request.getParameter("state"));
            aoDao.setDistric(request.getParameter("distric"));
            aoDao.setCity(request.getParameter("city"));
            aoDao.setPincode(request.getParameter("pincode"));
            aoDao.setPassword(request.getParameter("password"));
            boolean a = aoDto.accountOpean(aoDao);
            boolean b;
//          =======================================================================
            HttpSession session = request.getSession();
            if (aoDto.accountOpenProcess(aoDao)) {
                aoDao.setAccType(request.getParameter("accounttype"));
                aoDao.setBalance(0.0d);
                aoDao.setBranchId(701);
                aoDao.setAccStatus("Active");
                b = aoDto.accountDetail(aoDao);
            } else {
                aoDto.deleteCustomer(aoDao);
                Message message = new Message("Invalid details! Try again!!", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("View/CAccountOpean.jsp");
                return;
            }

            if (a && b) {
                System.out.println("customer login");
//                HttpSession session = request.getSession();
                MailServices mail = new MailServices();
                mail.setUserMail(aoDao.getEmail());
                mail.createAndSendEmail("Account varification in Swastik...", "Dear swastik user. ,\n Your Account Open Success your Account Number is " + aoDao.getCusId());
                mail.sendEmailMessage(mail);
                session.setAttribute("AccountOpenDao", aoDao);
                response.sendRedirect("View/Login.jsp");
            } else {
                aoDto.deleteCustomer(aoDao);
                Message message = new Message("Invalid details! Try again!!", "error", "alert-danger");
                session.setAttribute("message", message);
            }

        } catch (IOException e) {
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
        return "Short description";
    }
}
