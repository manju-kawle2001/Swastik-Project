package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class loandto2 {

    public boolean applyLoan(loandao2 loanDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "INSERT INTO LoanRequest(Acc_number, Loan_Id,Loan_Amount,Loan_Term, Permanent_Address,Email,Mobile, Guarantor_name, Guarantor_Father,Guarantor_Gender, Guarantor_Address,Guarantor_Account,Guarantor_Bank,Guarantor_Ifsc,Guarantor_Adhar,Guarantor_Pan) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?)";
                PreparedStatement psmt = con.prepareStatement(query);
                
                 psmt.setInt(1, loanDao.getAcc_num());
                psmt.setInt(2, loanDao.getLoanID());
                psmt.setString(3, loanDao.getLoanAmmount());
                psmt.setString(4, loanDao.getLoanTerm());
                psmt.setString(5, loanDao.getPermanentAddress());
                psmt.setString(6, loanDao.getEmail());
                psmt.setString(7, loanDao.getMobile());
                psmt.setString(8, loanDao.getGuarantorName());
                psmt.setString(9, loanDao.getGuarantorFather());
                psmt.setString(10, loanDao.getGuarantorGender());
                psmt.setString(11, loanDao.getGuarantorAddress());
                psmt.setString(12, loanDao.getGuarantorAccountNumber());
                 psmt.setString(13, loanDao.getGuarantorBank());
                psmt.setString(14, loanDao.getGuarantorIfsc());
                psmt.setString(15, loanDao.getGuarantorAdhar());
                psmt.setString(16, loanDao.getGuarantorPan());

                psmt.executeUpdate();
                flag = true;

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}