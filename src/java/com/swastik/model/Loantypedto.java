package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Sohan_Maali
 */
public class Loantypedto {

    public boolean getAllLoan(ArrayList<Loantypedao> loantypedao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "select * from loan";
                PreparedStatement psmt = con.prepareStatement(query);
                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    Loantypedao lDao = new Loantypedao();
                    lDao.setLoanId(set.getInt("Loanid"));
                    lDao.setName(set.getString("name"));
                    lDao.setInterestRate(set.getString("Intrest_Rate"));
                    lDao.setDuration(set.getString("Duration"));
                    loantypedao.add(lDao);
                }
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}
