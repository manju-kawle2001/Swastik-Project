package com.swastik.controlar;

import com.swastik.model.BranchDao;
import com.swastik.model.BranchDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class BranchControlar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            ArrayList<BranchDao> bdao = new ArrayList<>();
            BranchDto bdto = new BranchDto();
            if (bdto.getAllBranch(bdao)) {
                HttpSession session = request.getSession();
                session.setAttribute("BranchDao", bdao);
                response.sendRedirect("View/CAccountOpean.jsp");
            } else {
                response.sendRedirect("../index.jsp");
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
