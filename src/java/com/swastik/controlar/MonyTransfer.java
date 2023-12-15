package com.swastik.controlar;

//import com.swastik.model.BeneficiaryDao;
import com.swastik.model.AccountOpenDao;
import com.swastik.model.MoneyTransactionDao;
import com.swastik.model.MoneyTransactionDto;
import com.swastik.other.Message;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
//import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class MonyTransfer extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            AccountOpenDao accDao = (AccountOpenDao) session.getAttribute("activeUser");
            
            MoneyTransactionDto moneyDto = new MoneyTransactionDto();
            MoneyTransactionDao mDao = new MoneyTransactionDao();
            mDao.setSenderAcc(accDao.getAccNum());
            mDao.setReciverAcc(request.getParameter("beneficiaryAccount"));
            mDao.setAmount(request.getParameter("amount"));
            // Assuming accDao.getBalance() returns a double value
            double balance = accDao.getBalance();
            String balanceString = Double.toString(balance);
            mDao.setSenderAmount(balanceString);
            
            mDao.setTranType(request.getParameter("tranType"));
            mDao.setDescription(request.getParameter("description"));
            mDao.setPass(request.getParameter("pass"));
//            mDao.setReciverAcc(request.getParameter("beniacc"));
            
            String beneficiaryAccNum = request.getParameter("beneficiaryAccNum");
            
            
            System.out.println(accDao.getPassword()+"hxhhhhxhxh");
            
            
            
            if (!accDao.getPassword().trim().equalsIgnoreCase(request.getParameter("pass").trim())) {
                Message message = new Message("Invalid Pin! Try again!!", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/transfermoney2.jsp?beniId=" + beneficiaryAccNum);
               
            }        
            
            else if (accDao.getBalance() <= (Double.parseDouble(mDao.getAmount()))) {
                Message message = new Message(" Insufficient Balance! Try again!!", "error", "alert-danger");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/transfermoney2.jsp?beniId=" + beneficiaryAccNum);
//                response.sendRedirect("Customer/transfermoney2.jsp");
                //Ensfesent balance in account
//                return;
            } else if (moneyDto.performMoneyTransfer(mDao)) {
                Message message = new Message(" Amount Transfer Success! Thankyou For Trancsaction", "error", "alert-success");
                session.setAttribute("message", message);
                accDao.setBalance(accDao.getBalance() - (Double.parseDouble(mDao.getAmount())));
                session.setAttribute("accDao", accDao);
                response.sendRedirect("Customer/transfermoney2.jsp?beniId=" + beneficiaryAccNum);
                //errot massage likha he
            } else {
                Message message = new Message(" Amount Transfer Success! Thankyou For Trancsaction", "error", "alert-success");
                session.setAttribute("message", message);
                response.sendRedirect("Customer/transfermoney2.jsp");
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