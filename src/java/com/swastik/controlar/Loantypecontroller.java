package com.swastik.controlar;

//import com.swastik.model.Loantypedto;
import com.swastik.model.Loantypedao;
import com.swastik.model.Loantypedto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

public class Loantypecontroller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            ArrayList<Loantypedao> ldao = new ArrayList<>();
            Loantypedto ldto = ldto = new Loantypedto();
            if (ldto.getAllLoan(ldao)) //            {
            {
                HttpSession session = request.getSession();
                session.setAttribute("Loantypedao", ldao);
                response.sendRedirect("Customer/loanform.jsp");
            } else {

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
