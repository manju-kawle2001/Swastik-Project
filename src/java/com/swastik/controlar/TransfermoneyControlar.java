package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.BeneficiaryDao;
import com.swastik.model.BeneficiaryDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class TransfermoneyControlar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            // All Benifesiry list
            BeneficiaryDto bDto = new BeneficiaryDto();
            AccountOpenDao cADao = (AccountOpenDao) session.getAttribute("activeUser");
            ArrayList<BeneficiaryDao> beDao = bDto.getAllBeneficiary(cADao);
//            System.out.println(beDao + "++++++++++++++++++++++++++++----------------");
            if (beDao != null) {
                session.setAttribute("BeneficiaryDao", beDao);
                response.sendRedirect("Customer/transfermoney.jsp");
            } else {
                response.sendRedirect("Customer/CustomerDashboard.jsp");
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
