
package com.swastik.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.swastik.service.GetConnection;

/**
 *
 * @author Sohan_Maali
 */
public class ManagerInformationDto {

    public boolean login(ManagerInformationDao dao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        String sql = "Select * From manager where email=? and password=? ";
        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, dao.getEmail());
            ps.setString(2, dao.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {

                //dao.setDoh(rs.getString("doh"));
                dao.setPassword(rs.getString("password"));
                dao.setName(rs.getString("name"));
                dao.setEmail(rs.getString("email"));
                dao.setDob(rs.getString("dob"));
                dao.setDob(rs.getString("salary"));
                dao.setMobile(rs.getString("phone"));
                b = true;
            }
        } catch (SQLException ex) {
            System.out.println("" + ex);
        }
        return b;
    }
}
