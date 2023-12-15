//package com.swastik.controlar;
//
//
//import com.swastik.model.ManagerInformationDao;
//import com.swastik.model.ManagerInformationDto;
//import java.io.IOException;
//import java.io.PrintWriter;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
///**
// *
// * @author abc
// */
//public class ManagerRegistrationController extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            String password =request.getParameter("password");
//            String name =request.getParameter("name");           
//            String email =request.getParameter("email");
//            String dob =request.getParameter("dob");
//            String salary =request.getParameter("salary");
//            String mobile =request.getParameter("phone");
//            
//            System.out.println(request.getParameter("name"));
//            ManagerInformationDao dao=new ManagerInformationDao();
//            dao.setPassword(password);
//            dao.setName(name);           
//            dao.setEmail(email);
//            dao.setDob(dob);
//            dao.setSalary(salary);
//            dao.setMobile(mobile);
//            
//            ManagerInformationDto dto=new ManagerInformationDto();
////            boolean b=dto.regist(dao);  
////            System.out.println(b);
//            if(b)
//            {
//                response.sendRedirect("../Manager/Login.jsp");
//            }
//            else
//            {
//                response.sendRedirect("Registration.jsp");
//            }
//        }
//    }
//
//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
//    /**
//     * Handles the HTTP <code>GET</code> method.
//     *
//     * @param request servlet request
//     * @param response servlet response
//     * @throws ServletException if a servlet-specific error occurs
//     * @throws IOException if an I/O error occurs
//     */
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//   
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    /**
//     * Returns a short description of the servlet.
//     *
//     * @return a String containing servlet description
//     */
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
