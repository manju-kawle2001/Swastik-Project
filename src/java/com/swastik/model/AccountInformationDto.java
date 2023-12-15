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
public class AccountInformationDto {

    public List<AccountOpenDao> allCustomerdata() {
        List<AccountOpenDao> l = new ArrayList<>();

        Connection con = GetConnection.getConnectin();
        if (con != null) {
            System.out.println("jjjjjjjj");
            String sql = "SELECT customer.name, account.Account_Num, account.Account_Status, account.Current_Balance FROM customer INNER JOIN account ON customer.customerid = account. customer_id";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    AccountOpenDao e = new AccountOpenDao();
                    System.out.println("jjkdkdkkkd");
                    e.setName(rs.getString("name"));
                    System.out.println(rs.getString("name"));
                    e.setAccNum(rs.getInt("Account_Num"));
                    System.out.println(rs.getInt("Account_Num"));
                    e.setAccStatus(rs.getString("Account_Status"));
                    System.out.println(rs.getString("Account_Status"));
                    e.setBalance(rs.getFloat("Current_Balance"));

                    l.add(e);
                }
            } catch (SQLException e) {
                System.out.println("" + e);
            }
        }
        return l;
    }

    public static List<AccountInformationDao> allAccount() {
        List<AccountInformationDao> list = new ArrayList<>();
        Connection con = GetConnection.getConnectin();
        if (con != null) {

            String sql = "select * from account";

            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    AccountInformationDao e = new AccountInformationDao();
                    e.setCustomerId(rs.getInt("customer_id"));
                    e.setAccountNumber(rs.getInt("Account_Num"));
                    e.setAccountType(rs.getString("Account_Type"));
                    e.setBranchId(rs.getInt("Branch_id"));

                    list.add(e);
//            System.out.println(dao.getName());
                }

            } catch (SQLException e) {
                System.out.println("" + e);
            }
        }
        return list;
    }

}
