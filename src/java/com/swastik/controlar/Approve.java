package com.swastik.controlar;

import com.swastik.model.EmployeeInformationDao;
import com.swastik.model.EmployeeInformationDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class Approve extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            String process = request.getParameter("confirm");

            if (process.equals("confirm")) {
                int id = Integer.parseInt(request.getParameter("approval"));
                System.out.println("asdg: " + id);
                EmployeeInformationDto vdto = new EmployeeInformationDto();
                boolean b = vdto.employeeupdateApproval(id);
                if (b) {
                    List<EmployeeInformationDao> vdao = vdto.Approval();
                    System.out.println("asdfag : " + vdao.size());
                    session.setAttribute("size", vdao.size());
                    session.setAttribute("obj", vdao);
                    System.out.println("update go gya");
                    String email = request.getParameter("emailforsend");
//                    GemailSender gm = new GemailSender();
                    String to = email;
                    String from = "sohaninfobeans4gmail.com";
                    String subject = "This is email using java";
                    String text = "your Account is approved \n you can now provide services";
                    System.out.println("Swati");
                    // made by sachin
                    boolean c = false; //gm.sendEmail(to, from, subject, text);
                    if (c) {
//                        session.setAttribute("message","Confirmation sent");
//                        out.print(c+"Confirmmmmmmmmmmmmm ho aga");
                        response.sendRedirect("../Manager/Employee-List.jsp");
                    } else {
                        out.print(c + "Confirmmmmmmmmmmmmm nhi hua");
//                        session.setAttribute("message","Confirmation can't sent but vendor approved");
//                        response.sendRedirect("../view/AdmindashBoard.jsp");
                    }

                }
            } else if (process.equals("delete")) {
                int id = Integer.parseInt(request.getParameter("delete"));
                System.out.println("asdgsdfg: " + id);
                EmployeeInformationDto vdto = new EmployeeInformationDto();
                boolean b = vdto.employeedeleteId(id);
                if (b) {
                    List<EmployeeInformationDao> vdao = vdto.Approval();
                    System.out.println("asdfag : " + vdao.size());
                    session.setAttribute("size", vdao.size());
                    session.setAttribute("obj", vdao);
                    System.out.println("delete go gya");
                    response.sendRedirect("../Manager/Approveal.jsp");
                } else {
                    out.print("Nhi hua");
                }
            }

        }

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
