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
public class BranchDto {

    public boolean getAllBranch(ArrayList<BranchDao> branchDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "select * from Branch";
                PreparedStatement psmt = con.prepareStatement(query);
                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    BranchDao bDao = new BranchDao();
                    bDao.setBranchId(set.getInt("Branchid"));
                    bDao.setIfscCode(set.getString("ifsc"));
                    bDao.setBranchName(set.getString("Branch_name"));
                    bDao.setBranchAddess(set.getString("Branch_Address"));
                    branchDao.add(bDao);
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}
