package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Unblockdto {

    public boolean Unblock(Unblockdao undao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "INSERT INTO Unblock (Acc_number,Adhar,Pan,Email,Mobile) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                
                 psmt.setInt(1, undao.getAccNumber());
                psmt.setString(2, undao.getAdhar());
                psmt.setString(3, undao.getPan());
                psmt.setString(4, undao.getEmail());
                psmt.setString(5, undao.getMobile());
               

                psmt.executeUpdate();
                flag = true;

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}