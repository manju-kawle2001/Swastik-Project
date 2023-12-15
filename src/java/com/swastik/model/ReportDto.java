package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReportDto {

    public boolean Report(ReportDao reportdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "INSERT INTO Report(Acc_number,Report_Type,Report_message) VALUES (?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                
                 psmt.setInt(1, reportdao. getAccNumber());
                psmt.setString(2, reportdao.getReportType());
                psmt.setString(3, reportdao.getReportMessage());
                
               psmt.executeUpdate();
                flag = true;

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}