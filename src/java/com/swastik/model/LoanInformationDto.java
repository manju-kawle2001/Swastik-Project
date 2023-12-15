package com.swastik.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.swastik.service.GetConnection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sohan_Maali
 */
public class LoanInformationDto {

    public boolean applyLoan(LoanInformationDao loanDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "INSERT INTO LoanRequest (Acc_number, Loan_Id,Loan_Amount,Loan_Term, Permanent_Address,Email,Mobile, Guarantor_name, Guarantor_Father,Guarantor_Gender, Guarantor_Address,Guarantor_Account,Guarantor_Bank,Guarantor_Ifsc,Guarantor_Adhar,Guarantor_Pan) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?)";
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

    public static List<LoanInformationDao> alldataLoan() {
        List<LoanInformationDao> l = new ArrayList<>();
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "select * from  loan";

            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    LoanInformationDao e = new LoanInformationDao();
                    e.setLoanID(rs.getInt("Loanid"));
                    e.setLoanName(rs.getString("name"));
                    System.out.println("jsjjsjjs"+rs.getString("name"));
                    e.setIntrest(rs.getString("Intrest_Rate"));
                    e.setDuration(rs.getString("Duration"));
                    l.add(e);
//            System.out.println(dao.getName());
                }

            } catch (SQLException e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return l;
    }
    
     public static int getLoanRequest() {
        int LoanRequest = 0;

        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String sql = "SELECT COUNT(*) FROM customer";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    LoanRequest = rs.getInt(1);
                    
                }
            } catch (SQLException e) {
                System.out.println("Error executing SQL query: " + e.getMessage());
            } finally {
                try {
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    System.out.println("Error closing connection: " + e.getMessage());
                }
            }
        } else {
            System.out.println("Connection not established");
        }

        return LoanRequest;
    }
}
