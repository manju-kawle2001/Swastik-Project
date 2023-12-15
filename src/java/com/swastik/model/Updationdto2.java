package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Updationdto2 {

    public boolean Updaterequest(Updationdao2 updationdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "INSERT INTO UpdationRequest(Acc_number,Updation_type,Name,Father_Name,Mother_Name,Gender,DOB,marital,Email,Mobile,address,city, district,state , pincode,nominee_name,nominee_Father,nominee_mobile, nominee_email ,nominee_Aadhar) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?)";
                PreparedStatement psmt = con.prepareStatement(query);

                psmt.setInt(1, updationdao.getAccNumber());
//                psmt.setInt(2, updationdao.getLoanID());
                psmt.setString(2, updationdao.getUpdationType());
                psmt.setString(3, updationdao.getName());
                psmt.setString(4, updationdao.getFatherName());
                psmt.setString(5, updationdao.getMotherName());
                psmt.setString(6, updationdao.getGender());
                psmt.setString(7, updationdao.getDob());
                psmt.setString(8, updationdao.getMarital());
                psmt.setString(9, updationdao.getEmail());
                psmt.setString(10, updationdao.getMobile());
                psmt.setString(11, updationdao.getAddress());
                psmt.setString(12, updationdao.getCity());
                psmt.setString(13, updationdao.getDistrict());
                psmt.setString(14, updationdao.getState());
                psmt.setString(15, updationdao.getPincode());
                psmt.setString(16, updationdao.getNomineeName());
                psmt.setString(17, updationdao.getNomineeFather());
                psmt.setString(18, updationdao.getNomineeMobile());
                psmt.setString(19, updationdao.getNomineeEmail());
                psmt.setString(20, updationdao.getNomineeAadhar());

                psmt.executeUpdate();
                flag = true;

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }
}