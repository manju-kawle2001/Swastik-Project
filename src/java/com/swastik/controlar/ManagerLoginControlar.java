
package com.swastik.controlar;

import com.swastik.model.ManagerInformationDao;
import com.swastik.model.ManagerInformationDto;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author abc
 */
public class ManagerLoginControlar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            System.out.println("" + email);
            System.out.println("" + password);

            ManagerInformationDao dao = new ManagerInformationDao();
            dao.setEmail(email);
            dao.setPassword(password);

            ManagerInformationDto dto = new ManagerInformationDto();
            boolean b = dto.login(dao);
            System.out.println(b);
            if (b) {
                HttpSession session = request.getSession();
                session.setAttribute("dao", dao);

                response.sendRedirect("Manager/AdminDashBoard.jsp");
            } else {
                response.sendRedirect("Manager/AdminDashBoard.jsp");
            }
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
    }// </editor-fold>

}
