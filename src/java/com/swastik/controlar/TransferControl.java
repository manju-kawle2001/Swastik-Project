package com.swastik.controlar;

import com.swastik.model.BeneficiaryDao;
import com.swastik.model.BeneficiaryDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class TransferControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        BeneficiaryDao beneficiaryDao = new BeneficiaryDao();

        HttpSession session = request.getSession();

        beneficiaryDao.setBeneId(Integer.parseInt(request.getParameter("beneficiaryId")));

        beneficiaryDao.setName(request.getParameter("beneficiaryName"));

        beneficiaryDao.setBank(request.getParameter("beneficiaryBank"));

        beneficiaryDao.setAccNum(request.getParameter("beneficiaryAccNum"));

        beneficiaryDao.setIfsc(request.getParameter("beneficiaryifsc"));

//        ============================================================================
//        if (request.getParameter("operation").equals("Send")) {
//            session.setAttribute("beneficiaryDao", beneficiaryDao);
//            response.sendRedirect("Customer/transfermoney2.jsp");
//        } else if (request.getParameter("operation").equals("Edit")) {
//            response.sendRedirect("Customer/transfermoney.jsp");
//        }
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
