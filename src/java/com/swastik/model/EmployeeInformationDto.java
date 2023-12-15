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
public class EmployeeInformationDto {    
  
    public boolean empLogin(EmployeeInformationDao dao) {
        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
                String query = "select * from employee where email = ? and password = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, dao.getEmail());
                psmt.setString(2, dao.getPassword());

                ResultSet rs = psmt.executeQuery();
                while (rs.next()) {

                  dao.setEmployeeId(rs.getInt("Employeeid"));
                    dao.setName(rs.getString("name"));
                    dao.setEmail(rs.getString("email"));
                    dao.setSalary(rs.getString("salary"));
                    dao.setMobile(rs.getString("phone"));
                    dao.setDob(rs.getString("dob")); 
                   
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean EmployeeRegistration(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String sql = "insert into employeerequest(name,email,password,phone,adhar,pancard,dob)values(?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);

                ps.setString(1, edao.getName());

                ps.setString(2, edao.getEmail());
                ps.setString(3, edao.getPassword());
                ps.setString(4, edao.getPhone());
                ps.setString(5, edao.getAdhar());
                ps.setString(6, edao.getPancard());
//               ps.setString(7, edao.getImage());
                ps.setString(7, edao.getDob());
                System.out.println("" + edao.getDob());

                if (ps.executeUpdate() > 0) {

                    b = true;
                }
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        }
        return b;
    }
    
    public static boolean venLogin(EmployeeInformationDao vdao) throws SQLException{
           boolean b=false;
           Connection con = GetConnection.getConnectin();
           PreparedStatement ps;
           String query="select * from Employee_request where email=? and password=?";
           ps=con.prepareStatement(query);
           ps.setString(1, vdao.getEmail());
           System.out.println(vdao.getEmail());
          ps.setString(2, vdao.getPassword());
           System.out.println(vdao.getPassword());

             ResultSet rs=ps.executeQuery();
             
             if(rs.next()){

            if(rs.getInt("approval")!=0){
                 vdao.setEmail(rs.getString("email"));
                 vdao.setName(rs.getString("name"));
                 vdao.setDob(rs.getString("dob"));
                 vdao.setMobile(rs.getString("phone"));
                 vdao.setEmployeeId(rs.getInt("Employeeid"));
                 vdao.setPassword(rs.getString("password"));
                
                b=true;
            }
            else{
                vdao.setMessage("We will send a confirmation email when you will approved");
            }
                 
                  
             }else{
                 vdao.setMessage("Username And passord not matched");
             }
           
           return b;       
    }

    public boolean regist(EmployeeInformationDao dao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "insert into Employee_request(password,name,email,dob,salary,phone,position)values(?,?,?,?,?,?,?)";
            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, dao.getPassword());
                ps.setString(2, dao.getName());
                ps.setString(3, dao.getEmail());
                ps.setString(4, dao.getDob());
                ps.setString(5, dao.getSalary());
                ps.setString(6, dao.getMobile());
                ps.setString(7, dao.getPosition());
                System.out.println(dao.getName());
                int i = ps.executeUpdate();
                if (i > 0) {
                    b = true;
                }
            } catch (Exception e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return b;
    }

    public static List<EmployeeInformationDao> alldata() {
        List<EmployeeInformationDao> l = new ArrayList<>();
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "select * from  employee";

            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    EmployeeInformationDao e = new EmployeeInformationDao();
                    e.setEmployeeId(rs.getInt("Employeeid"));
                    e.setPassword(rs.getString("password"));
                    e.setName(rs.getString("name"));
                    e.setEmail(rs.getString("email"));
                    e.setDob(rs.getString("dob"));
                    e.setSalary(rs.getString("salary"));
                    e.setMobile(rs.getString("phone"));
                     e.setPosition(rs.getString("position"));
                    l.add(e);
//            System.out.println(dao.getName());
                }

            } catch (Exception e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return l;
    }
     public static int getCount() {
        
        Connection con = GetConnection.getConnectin();
        int count=0;
        if (con != null) {
            String sql = "select * from  employee";
            
            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    count++;
                }

            } catch (Exception e) {
                System.out.println("" + e);
            }
        } else {
            System.out.println("connection not stablished");
        }
        return count;
    }
     
     public static List<EmployeeInformationDao> Approval() {
        List<EmployeeInformationDao> lpd = new ArrayList<>();
        Connection con = null;

        try {
            con = GetConnection.getConnectin();
            if (con != null) {
                String sql = "select * from Employee_request where approval=0";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    EmployeeInformationDao dao = new EmployeeInformationDao();
                    dao.setEmployeeId(rs.getInt("Employeeid"));
                    dao.setName(rs.getString("name"));
                    dao.setEmail(rs.getString("email"));
                    dao.setSalary(rs.getString("salary"));
                    dao.setPosition(rs.getString("position"));
                    dao.setMobile(rs.getString("phone"));
                    dao.setDob(rs.getString("dob"));                    
                    lpd.add(dao);

                }
            }

        } catch (Exception e) {
            System.out.println("" + e);
        }
        return lpd;
    }
     
      public List<EmployeeInformationDao> selectApproval() {
        List<EmployeeInformationDao> lpd = new ArrayList<>();
        Connection con = null;

        try {
            con = GetConnection.getConnectin();
            if (con != null) {
                String sql = "select * from Employee_request where approval=1";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    EmployeeInformationDao dao = new EmployeeInformationDao();
                    dao.setEmployeeId(rs.getInt("Employeeid"));
                    dao.setName(rs.getString("name"));
                    dao.setEmail(rs.getString("email"));
                     dao.setSalary(rs.getString("salary"));
                    dao.setPosition(rs.getString("position"));
                    dao.setMobile(rs.getString("phone"));
                    dao.setDob(rs.getString("dob"));                    
                    lpd.add(dao);

                }
            }

        } catch (Exception e) {
            System.out.println("" + e);
        }
        return lpd;
    }
     
       public boolean employeedeleteId(int id) {
        boolean b = false;
        Connection con = null;

        try {
            con = GetConnection.getConnectin();
            if (con != null) {
                String sql = "DELETE FROM Employee_request WHERE Employeeid=? ";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, id);
                int e = ps.executeUpdate();

                if (e > 0) {
                    b = true;
                }
            }

        } catch (Exception e) {
            System.out.println("" + e);
        }
        return b;
    }
       
       
       
       
    public boolean employeeupdateApproval(int id) {
    boolean success = false;
    Connection con = null;

    try {
        con = GetConnection.getConnectin();
        if (con != null) {
            String updateSql = "UPDATE Employee_request SET approval=1 WHERE Employeeid=?";
            PreparedStatement updatePs = con.prepareStatement(updateSql);
            
            updatePs.setInt(1, id);
            int updateResult = updatePs.executeUpdate();

            if (updateResult > 0) {
                
                success = true;
            }
        }
    } catch (Exception e) {
        System.out.println("" + e);
    } finally {
        // Close resources in a finally block
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    return success;
}

       public int getEmployeeRowCount() {
        int rowCount = 0;
        Connection connection = GetConnection.getConnectin();

        String countSql = "SELECT COUNT(*) AS rowCount FROM Employee_request";

        try (PreparedStatement countPs = connection.prepareStatement(countSql); ResultSet resultSet = countPs.executeQuery()) {

            if (resultSet.next()) {
                rowCount = resultSet.getInt("rowCount");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return rowCount;
    }
       
        public boolean insert(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "select * from employee_request where Employeeid=?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, edao.getEmployeeId());
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    sql = "INSERT INTO employee (password,name,email,dob,salary,phone,position)values(?,?,?,?,?,?,?)";
                    try {
                        ps = con.prepareStatement(sql);
                        ps.setString(1, rs.getString("password"));
                        ps.setString(2, rs.getString("name"));
                        ps.setString(3, rs.getString("email"));
                        ps.setString(4, rs.getString("dob"));
                        ps.setString(5, rs.getString("salary"));
                        ps.setString(6, rs.getString("phone"));
                        ps.setString(7, rs.getString("position"));                      
                        int i = ps.executeUpdate();
                        if (i > 0) {
                            b = true;
                        }                        
                    } catch (Exception e) {
                    }
                }
            } catch (Exception e) {
            }

        }
        return b;
    }
        
        public boolean delete(EmployeeInformationDao dao)
    {
        boolean b= false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "delete from employee_request where Employeeid=?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, dao.getEmployeeId());
                if(ps.executeUpdate()>0)
                {
                     b=true;
                }
               } catch (Exception e) {
                System.out.println("" + e);
            }
    }
        return b;
    }
        
        public static List<EmployeeInformationDao> getAllRequest() {
        List<EmployeeInformationDao> productList = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            String sql = "SELECT *FROM employee where block=0;";

            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    EmployeeInformationDao edao = new EmployeeInformationDao();
                    edao.setEmployeeId(rs.getInt("Employeeid"));
                    edao.setName(rs.getString("name"));
                    edao.setDob(rs.getString("dob"));
                    edao.setEmail(rs.getString("email"));
                    edao.setMobile(rs.getString("phone"));
                    edao.setPassword(rs.getString("password"));
                    edao.setSalary(rs.getString("salary"));
                    edao.setPosition(rs.getString("position"));
                    // ... (similar lines for other columns)
                    productList.add(edao);
                }

                rs.close();
                ps.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return productList;
    }
        
      public static boolean getViewEmployee(EmployeeInformationDao edao) {

        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "select * from employee where Employeeid = ?;";

            try {
                PreparedStatement ps = con.prepareStatement(sql);

                ps.setInt(1, edao.getEmployeeId());
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    edao.setEmployeeId(rs.getInt("Employeeid"));
                    edao.setName(rs.getString("name"));
                    edao.setEmail(rs.getString("email"));
//                    System.out.println("Email.con"+rs.getString("email"));
                    edao.setDob(rs.getString("dob"));
                    edao.setMobile(rs.getString("phone"));
                    edao.setSalary(rs.getString("salary"));
                    edao.setPosition(rs.getString("position"));
                    
                    b = true;
                }

            } catch (Exception e) {
                System.out.println(e);;
            }
        }
        return b;
    }
      
        public boolean updateEmpDetails(EmployeeInformationDao edao) {
        boolean b = false;
        String sql = "UPDATE employee SET name=?, email=?, dob=?, phone=?, position=?, salary=? WHERE Employeeid=?;";
        Connection con = GetConnection.getConnectin();
        try {
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, edao.getName());              
                ps.setString(2, edao.getEmail());
                ps.setString(3, edao.getDob());              
                ps.setString(4, edao.getMobile());
                ps.setString(5,edao.getPosition());              
                ps.setString(6, edao.getSalary());
                ps.setInt(7, edao.getEmployeeId());
               
                int i = ps.executeUpdate();
                System.out.println("flalallal");
                if (i == 0) {
                    System.out.print("Success");
                    b = true;

                }
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return b;
    }        
        
        
        //Block Employee
        
        
          public boolean insert1(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "UPDATE employee SET block = 1 WHERE Employeeid = ?;";

            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, edao.getBlock());

                int i = ps.executeUpdate();
                if (i > 0) {
                    b = true;
                }
            } catch (Exception e) {
                System.out.println("" + e);
            }
        }

        return b;
    }
     public boolean update(EmployeeInformationDao edao) {
        boolean b = false;
        Connection con = GetConnection.getConnectin();
        if (con != null) {
            String sql = "UPDATE employee SET block = 0 WHERE Employeeid = ?;";

            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, edao.getBlock());

                int i = ps.executeUpdate();
                if (i > 0) {
                    b = true;
                }
            } catch (Exception e) {
                System.out.println("" + e);
            }
        }

        return b;
    }
    public static List<EmployeeInformationDao> getAllUser() {
        
        Connection con = GetConnection.getConnectin();
         List<EmployeeInformationDao> list = new ArrayList<>();
        
        
        try {
            String sql1 = "select * from employee where block=0";
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ResultSet rs1 = ps1.executeQuery();
            while(rs1.next()){
//            String sql = "select * from user";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//
//            while(rs.next()) {
                EmployeeInformationDao edao = new EmployeeInformationDao();
                edao.setName(rs1.getString("name"));
                edao.setEmail(rs1.getString("email"));
                edao.setMobile(rs1.getString("phone"));
                edao.setEmployeeId(rs1.getInt("Employeeid"));
                list.add(edao);
               
            }
            }
         catch (Exception e) {
             System.out.println(e);
        }
        return list;
    }
     public static List<EmployeeInformationDao> getAllBlockUser() {
        
        Connection con = GetConnection.getConnectin();
         List<EmployeeInformationDao> list = new ArrayList<>();
        
        
        try {
            String sql1 = "select * from employee where block=1";
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ResultSet rs1 = ps1.executeQuery();
            while(rs1.next()){
//            String sql = "select * from user";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//
//            while(rs.next()) {
                EmployeeInformationDao edao = new EmployeeInformationDao();
                edao.setName(rs1.getString("name"));               
                edao.setEmail(rs1.getString("email"));
                edao.setMobile(rs1.getString("phone"));
                edao.setEmployeeId(rs1.getInt("Employeeid"));
                list.add(edao);
               
            }
            }
         catch (Exception e) {
             System.out.println(e);
        }
        return list;
    }
   
}
    

