package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.LoanInformationDao;
import com.swastik.model.LoanInformationDto;
import com.swastik.other.Message;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author dell
 */
public class Loanapply extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            LoanInformationDto loanDto = new LoanInformationDto();
            LoanInformationDao loanDao = new LoanInformationDao();

            // Set loan-related information from the loan application form
//            loanDao.setLoanType(request.getParameter("loanType"));
//            loanDao.setCustomerId(request.getParameter("customerId"));
            loanDao.setLoanID(4500);

            loanDao.setLoanAmmount(request.getParameter("loanammount"));
            loanDao.setLoanTerm(request.getParameter("loanTerm"));
            loanDao.setPermanentAddress(request.getParameter("caddress"));
            loanDao.setEmail(request.getParameter("cemail"));
            loanDao.setMobile(request.getParameter("cmobile"));

            HttpSession session = request.getSession();
            AccountOpenDao accDao = (AccountOpenDao) session.getAttribute("activeUser");

            // Set co-applicant/guarantor details
            loanDao.setGuarantorName(request.getParameter("guarantorName"));

            System.out.println(request.getParameter("guarantorName"));

            loanDao.setGuarantorFather(request.getParameter("guarantorFather"));
            loanDao.setGuarantorGender(request.getParameter("guarantorGender"));
            loanDao.setGuarantorAddress(request.getParameter("guarantorAddress"));
            loanDao.setGuarantorAccountNumber(request.getParameter("guarantorAccount"));
            loanDao.setGuarantorBank(request.getParameter("bank"));
            loanDao.setGuarantorIfsc(request.getParameter("ifscCode"));
            loanDao.setGuarantorAdhar(request.getParameter("guarantorAdhar"));
            loanDao.setGuarantorPan(request.getParameter("guarantorPan"));
            loanDao.setAcc_num(accDao.getAccNum());
            // Apply for the loan
            boolean loanApplicationStatus = loanDto.applyLoan(loanDao);

            if (loanApplicationStatus) {
                Message message = new Message("Loan application submitted successfully!", "success", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/loanform.jsp");
            } else {
                Message message = new Message("Failed to submit loan application! Please try again.", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/loanform.jsp");
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
        return "Short description";
    }

}
