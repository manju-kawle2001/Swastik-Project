package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.MoneyTransactionDao;
import com.swastik.model.MoneyTransactionDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

public class TransactionHistory extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            session.getAttribute("");
            MoneyTransactionDto mDto = new MoneyTransactionDto();
            //            MoneyTransactionDao mDao = new MoneyTransactionDao();
            AccountOpenDao accODao = (AccountOpenDao) session.getAttribute("activeUser");
            if (request.getParameter("startingDate") != null && request.getParameter("endingDate") != null) {
                List<MoneyTransactionDao> mDao = mDto.searchTransactionsByDate(accODao.getAccNum(), request.getParameter("startingDate"), request.getParameter("endingDate"));
                if (mDao != null) {
                    session.setAttribute("MoneyTransactionDao", mDao);
                    response.sendRedirect("Customer/Transactionhistory.jsp");
                }
            } else {
                List<MoneyTransactionDao> mDao = mDto.getTransactionHistory(accODao.getAccNum());
                if (mDao != null) {
                    session.setAttribute("MoneyTransactionDao", mDao);
                    response.sendRedirect("Customer/Transactionhistory.jsp");
                } else {
                    response.sendRedirect("Customer/Transactionhistory.jsp");
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
