package com.swastik.controlar;

import com.swastik.model.AccountOpenDao;
import com.swastik.model.AccountOpenDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class CustomerControlar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
//            System.out.println(request.getParameter("managerCustomerList")+"--------------------------------------");
            if (request.getParameter("managerCustomerList").equals("managerCustomerList")) {
//                System.out.println(request.getParameter("managerCustomerList") + "**************************");
                AccountOpenDto adto = new AccountOpenDto();
                ArrayList<AccountOpenDao> accountopendao = adto.getCustomerInformation();
                session.setAttribute("AccountOpenDao", accountopendao);
                response.sendRedirect("Employee/CustumerTable.jsp");
            } else {
//                response.sendRedirect("Employee/Home.jsp");
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
