/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Sohan_Maali
 */
public class TransactionInformationDto {

    public static int getRowTransaction1() {
        int rowCountTransaction = 0;

        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String sql = "SELECT COUNT(*) FROM customer";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    rowCountTransaction = rs.getInt(1);
                }
            } catch (SQLException e) {
                System.out.println("Error executing SQL query: " + e.getMessage());
            }
        }
        return rowCountTransaction;
    }
    
    

   }