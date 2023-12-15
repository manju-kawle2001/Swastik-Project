package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//import java.util.List;

/**
 *
 * @author Sohan_Maali
 */
public class AccountOpenDto {

    public boolean accountOpean(AccountOpenDao cdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "insert into customer(password, name, father, mother, gender, dob, phone, email, adhar, pan, maritail, occupation, address, city, distric, pincode, state) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, cdao.getPassword());
                psmt.setString(2, cdao.getName());
                psmt.setString(3, cdao.getFather());
                psmt.setString(4, cdao.getMother());
                psmt.setString(5, cdao.getGender());
                psmt.setString(6, cdao.getDob());
                psmt.setString(7, cdao.getMobile());
                psmt.setString(8, cdao.getEmail());
                psmt.setString(9, cdao.getAdhar());
                psmt.setString(10, cdao.getPan());
                psmt.setString(11, cdao.getMaritail());
                psmt.setString(12, cdao.getOccupation());
                psmt.setString(13, cdao.getAddress());
                psmt.setString(14, cdao.getCity());
                psmt.setString(15, cdao.getDistric());
                psmt.setString(16, cdao.getPincode());
                psmt.setString(17, cdao.getState());

                psmt.executeUpdate();
                flag = true;

            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean accountDetail(AccountOpenDao cdao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "insert into account(customer_id, Account_Type, Current_Balance, Branch_id, Account_Status) values(?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, cdao.getCustomerId());
                psmt.setString(2, cdao.getAccType());
                double amount = cdao.getBalance();
                psmt.setString(3, Double.toString(amount));
                psmt.setInt(4, cdao.getBranchId());
                psmt.setString(5, cdao.getAccStatus());
                psmt.executeUpdate();
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean accountOpenProcess(AccountOpenDao cdao) {
        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
                String query = "select * from customer where email = ? and password = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, cdao.getEmail());
                psmt.setString(2, cdao.getPassword());

                ResultSet set = psmt.executeQuery();
                while (set.next()) {

                    cdao.setCustomerId(set.getInt(1));
                    cdao.setPassword(set.getString("password"));
                    cdao.setName(set.getString("name"));
                    cdao.setFather(set.getString("father"));
                    cdao.setMother(set.getString("mother"));
                    cdao.setGender(set.getString("gender"));
                    cdao.setDob(set.getString("dob"));
                    cdao.setMobile(set.getString("phone"));
                    cdao.setEmail(set.getString("email"));
//                    cdao.setRegiDate(set.getTimestamp("registerdate"));
                    cdao.setMaritail(set.getString("maritail"));
                    cdao.setOccupation(set.getString("occupation"));
                    cdao.setAddress(set.getString("address"));
                    cdao.setCity(set.getString("city"));
                    cdao.setPincode(set.getString("pincode"));
                    cdao.setState(set.getString("state"));
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean customerLogin(AccountOpenDao cdao) {
        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
//                String query = "select * from customer JOIN customer ON customer.customerid = account.customer_id where email = ? and password = ?";
                String query = "SELECT * FROM customer AS c JOIN account AS a ON c.customerid = a.customer_id WHERE c.email = ? AND c.password = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, cdao.getEmail());
                psmt.setString(2, cdao.getPassword());
                ResultSet set = psmt.executeQuery();
                while (set.next()) {

                    cdao.setCustomerId(set.getInt(1));
                    cdao.setPassword(set.getString("password"));
                    cdao.setName(set.getString("name"));
                    cdao.setFather(set.getString("father"));
                    cdao.setMother(set.getString("mother"));
                    cdao.setGender(set.getString("gender"));
                    cdao.setDob(set.getString("dob"));
                    cdao.setMobile(set.getString("phone"));
                    cdao.setEmail(set.getString("email"));
//                    cdao.setRegiDate(set.getTimestamp("registerdate"));
                    cdao.setMaritail(set.getString("maritail"));
                    cdao.setOccupation(set.getString("occupation"));
                    cdao.setAddress(set.getString("address"));
                    cdao.setCity(set.getString("city"));
                    cdao.setPincode(set.getString("pincode"));
                    cdao.setState(set.getString("state"));
//                    ============================================================
                    cdao.setAccNum(set.getInt("Account_Num"));
                    cdao.setAccType(set.getString("Account_Type"));
                    cdao.setBalance(Double.parseDouble(set.getString("Current_Balance")));
                    cdao.setBranchId(set.getInt("Branch_id"));
                    cdao.setAccStatus(set.getString("Account_Status"));

                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean deleteCustomer(AccountOpenDao cdao) {

        Connection con = GetConnection.getConnectin();
        boolean flag = false;
        if (con != null) {
            try {
                String query = "delete from customer where customerid = ?;";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, cdao.getCustomerId());

                if (psmt.executeUpdate() > 0) {
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

    public boolean changePassword(AccountOpenDao cdao) {
        //Not Working
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "UPDATE customer SET password = ? WHERE password = ? AND email = ?";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, cdao.getPassword());
                psmt.setString(2, cdao.getPassword());
                psmt.setString(3, cdao.getEmail());
                flag = true;
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return flag;
    }

//    public static List<AccountOpenDao> alldataCustomer() {
//        List<AccountOpenDao> productList = new ArrayList<>();
//        Connection con = GetConnection.getConnectin();
//
//        if (con != null) {
//
//            try {
//                String sql = "SELECT * FROM account";
//                PreparedStatement ps = con.prepareStatement(sql);
//                ResultSet rs = ps.executeQuery();
//
//                while (rs.next()) {
//                    int cusId = rs.getInt("cusId");
//                    String password = rs.getString("password");
//                    String name = rs.getString("name");
//                    String father = rs.getString("father");
//                    String mother = rs.getString("mother");
//                    String gender = rs.getString("gender");
//                    String dob = rs.getString("dob");
//                    String mobile = rs.getString("mobile");
//                    String email = rs.getString("email");
//                    String adhar = rs.getString("adhar");
//                    java.sql.Timestamp dateTime = rs.getTimestamp("dateTime");
//                    String pan = rs.getString("pan");
//                    String maritail = rs.getString("maritail");
//                    String occupation = rs.getString("occupation");
//                    String address = rs.getString("address");
//                    String city = rs.getString("city");
//                    String pincode = rs.getString("pincode");
//                    String state = rs.getString("state");
//                    String distric = rs.getString("distric");
//                    String image = rs.getString("image");
//
//                    System.out.println("" + distric);
//                    AccountOpenDao open = new AccountOpenDao();
//                    open.setCusId(cusId);
//                    open.setPassword(password);
//                    open.setName(name);
//                    open.setFather(father);
//                    open.setMother(mother);
//                    open.setGender(gender);
//                    open.setDob(dob);
//                    open.setMobile(mobile);
//                    open.setEmail(email);
//                    open.setAdhar(adhar);
////                    open.setDateTime(dateTime);
//                    open.setPan(pan);
//                    open.setMaritail(maritail);
//                    open.setOccupation(occupation);
//                    open.setAddress(address);
//                    open.setCity(city);
//                    open.setPincode(pincode);
//                    open.setState(state);
//                    open.setDistric(distric);
//                    open.setImage(image);
//
//                    productList.add(open);
//                }
//            } catch (Exception e) {
//                e.printStackTrace();
//            } finally {
//                try {
//                    con.close();
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//
//        return productList;
//    }
//
//    public static List<AccountOpenDao> allCustomerdata() {
//        List<AccountOpenDao> l = new ArrayList<>();
//
//        Connection con = GetConnection.getConnectin();
//        if (con != null) {
//            System.out.println("jjjjjjjj");
//            String sql = "SELECT customer.name, account.Account_Num, account.Account_Status, account.Current_Balance FROM customer INNER JOIN account ON customer.customerid = account. customer_id";
//            try {
//                PreparedStatement ps = con.prepareStatement(sql);
//                ResultSet rs = ps.executeQuery();
//                while (rs.next()) {
//                    AccountOpenDao e = new AccountOpenDao();
//                    System.out.println("jjkdkdkkkd");
//                    e.setName(rs.getString("name"));
//                    System.out.println(rs.getString("name"));
////                    e.setAccountNumber(rs.getInt("Account_Num"));
//                    e.setAccNum(rs.getInt("Account_Num"));
//                    System.out.println(rs.getInt("Account_Num"));
////                    e.setAccountStatus(rs.getString("Account_Status"));
//                    e.setAccStatus(rs.getString("Account_Status"));
//                    System.out.println(rs.getString("Account_Status"));
////                    e.setCurrentBalance(rs.getFloat("Current_Balance"));
//                    e.setBalance(rs.getFloat("Current_Balance"));
//
//                    l.add(e);
//                }
//            } catch (SQLException e) {
//                System.out.println(e);
//            }
//        } else {
//            System.out.println("connection not established");
//        }
//        return l;
//    }
//
//    public static List<AccountOpenDao> getCustomerData1(int customerId, int accountNumber) {
//        List<AccountOpenDao> customerData = new ArrayList<>();
//
//        Connection con = GetConnection.getConnectin();
//        if (con != null) {
//            String sql = "SELECT customer.name, account.Account_Num, account.Account_Status, account.Current_Balance FROM customer INNER JOIN account ON customer.customerid = account.customer_id";
//            try {
//                PreparedStatement ps = con.prepareStatement(sql);
//                ResultSet rs = ps.executeQuery();
//                while (rs.next()) {
//                    AccountOpenDao e = new AccountOpenDao();
//                    System.out.println("jjkdkdkkkd");
//                    e.setName(rs.getString("name"));
//                    System.out.println(rs.getString("name"));
//                    e.setAccNum(rs.getInt("Account_Num"));
//                    System.out.println(rs.getInt("Account_Num"));
//                    e.setAccStatus(rs.getString("Account_Status"));
//                    System.out.println(rs.getString("Account_Status"));
//                    e.setBalance(rs.getFloat("Current_Balance"));
//
//                    customerData.add(e);
//                }
//            } catch (SQLException e) {
//                System.out.println(e);
//            }
//        } else {
//            System.out.println("connection not established");
//        }
//
//        return customerData;
//    }

    public static int getRowCount() {
        int rowCount = 0;

        Connection con = GetConnection.getConnectin();
        if (con != null) {
            try {
                String sql = "SELECT COUNT(*) FROM customer";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    rowCount = rs.getInt(1);
                }
            } catch (SQLException e) {
                System.out.println("Error executing SQL query: " + e.getMessage());
            }
        }
        return rowCount;

    }

    public static int getCountCustomer() {

        Connection con = GetConnection.getConnectin();
        int count = 0;
        if (con != null) {
            String sql = "select * from  customer";

            try {

                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    count++;
                }

            } catch (SQLException e) {
                System.out.println("" + e);
            }
        }
        return count;
    }

     public static List<AccountOpenDao> alldataCustomerr() {
    List<AccountOpenDao> l = new ArrayList<>();
     
    Connection con = GetConnection.getConnectin();
    if (con != null) {
           System.out.println("jjjjjjjj");
        String sql = "SELECT customer.customerid, customer.name, account.Account_Num, account.Account_Status, account.Current_Balance FROM customer INNER JOIN account ON customer.customerid = account. customer_id";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                AccountOpenDao e = new AccountOpenDao();
                System.out.println("jjkdkdkkkd");
                e.setCusId(rs.getInt("customerid"));
                System.out.println(rs.getInt("customerid"));
                e.setName(rs.getString("name"));
                System.out.println(rs.getString("name"));
                e.setAccountNumber(rs.getInt("Account_Num"));
                 System.out.println(rs.getInt("Account_Num"));
                e.setAccountStatus(rs.getString("Account_Status"));
                System.out.println(rs.getString("Account_Status"));
                e.setCurrentBalance(rs.getFloat("Current_Balance"));
                
                l.add(e);
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
    } else {
        System.out.println("connection not established");
    }
    return l;
 }
//
//    public ArrayList<AccountOpenDao> getCustomerInformation1(int customerId) {
//        ArrayList<AccountOpenDao> accountopendao1 = new ArrayList<>();
//        Connection con = GetConnection.getConnectin();
//
//        if (con != null) {
//            try {
////                System.out.println("id"+anDao.getCustomerId());sssssssss
//                String sql = "SELECT customer.*,account.Account_Num,account.Account_Type,account.Current_Balance,branch.Branchid,branch.ifsc,branch.Branch_name,branch.Branch_Address FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid WHERE customer.customerid = ?";
//                //             String sql="SELECT customer.*, account.Account_Num, account.Account_Type, account.Current_Balance, branch.Branchid, branch.ifsc, branch.Branch_name, branch.Branch_Address FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid";
//                //               String sql="SELECT customer.*, account.Account_Num, account.Account_Type, account.Current_Balance, branch.Branchid, branch.ifsc, branch.Branch_name, branch.Branch_Address FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid WHERE customer.customerid = ?";
//                PreparedStatement psmt = con.prepareStatement(sql);
//                psmt.setInt(1, customerId);
//
////                psmt.setInt(1, setCustAccNum());
//                ResultSet set = psmt.executeQuery();
//                while (set.next()) {
//                    AccountOpenDao aDao = new AccountOpenDao();
//
//                    aDao.setCustomerId(set.getInt("customerId"));
//                    System.out.println(set.getInt("customerId"));
//                    aDao.setPassword(set.getString("password"));
//                    System.out.println(set.getString("password"));
//                    aDao.setName(set.getString("name"));
//                    System.out.println(set.getString("name"));
//                    aDao.setFather(set.getString("father"));
//                    System.out.println(set.getString("father"));
//                    aDao.setMother(set.getString("mother"));
//                    System.out.println(set.getString("mother"));
//                    aDao.setGender(set.getString("gender"));
//                    aDao.setDob(set.getString("dob"));
//                    aDao.setMobile(set.getString("phone"));
//                    aDao.setEmail(set.getString("email"));
//                    aDao.setAdhar(set.getString("adhar"));
////                  aDao.setDateTime(set.getTimestamp("time"));
////                  java.sql.Timestamp aDao.setRegiDate(set.getTimestamp("registerdate"));
//                    aDao.setPan(set.getString("pan"));
//                    aDao.setMaritail(set.getString("maritail"));
//                    aDao.setOccupation(set.getString("occupation"));
//                    aDao.setAddress(set.getString("address"));
//                    aDao.setCity(set.getString("city"));
//                    aDao.setDistric(set.getString("distric"));
//                    aDao.setPincode(set.getString("pincode"));
//                    aDao.setState(set.getString("state"));
//
////                    aDao.setImage(set.getString("image"));
//                    aDao.setAccNum(set.getInt("Account_Num"));
//                    aDao.setAccType(set.getString("Account_Type"));
//                    aDao.setCurrentBalance(set.getInt("Current_Balance"));
//                    aDao.setBranchId(set.getInt("Branchid"));
//                    aDao.setAccStatus("Account_Status");
//
////                   aDao.setBranchId(set.getInt("Branchid"));
//                    accountopendao1.add(aDao);
//                }
//            } catch (SQLException e) {
//                System.out.println(e);
//            }
//        }
//        return accountopendao1;
//    }
//    
    public ArrayList<AccountOpenDao> getCustomerInformation() {
        ArrayList<AccountOpenDao> accountopendao = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
//                System.out.println("id"+anDao.getCustomerId());sssssssss
//             String sql= "SELECT customer.*,account.Account_Num,account.Account_Type,account.Current_Balance,branch.Branchid,branch.ifsc,branch.Branch_name,branch.Branch_Address FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid WHERE customer.customerid = your_customerid"; 
               String sql="SELECT customer.*, account.Account_Num, account.Account_Type, account.Current_Balance, branch.Branchid, branch.ifsc, branch.Branch_name, branch.Branch_Address FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid";
  //               String sql="SELECT customer.*, account.Account_Num, account.Account_Type, account.Current_Balance, branch.Branchid, branch.ifsc, branch.Branch_name, branch.Branch_Address FROM customer JOIN account ON customer.customerid = account.customer_id JOIN branch ON account.Branch_id = branch.Branchid WHERE customer.customerid = ?";
                PreparedStatement psmt = con.prepareStatement(sql);
               // psmt.setInt(1, anDao.getAccNum());
               
//                psmt.setInt(1, setCustAccNum());

                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    AccountOpenDao aDao = new AccountOpenDao();
                    
                
                    
                   aDao.setCustomerId(set.getInt("customerId"));
                   System.out.println(set.getInt("customerId"));
                    aDao.setPassword(set.getString("password"));
                    System.out.println(set.getString("password"));
                    aDao.setName(set.getString("name"));
                    System.out.println(set.getString("name"));
                    aDao.setFather(set.getString("father"));
                     System.out.println(set.getString("father"));
                    aDao.setMother(set.getString("mother"));
                     System.out.println(set.getString("mother"));
                    aDao.setGender(set.getString("gender"));
                    aDao.setDob(set.getString("dob"));
                    aDao.setMobile(set.getString("phone"));
                    aDao.setEmail(set.getString("email"));
                    aDao.setAdhar(set.getString("adhar"));
//                  aDao.setDateTime(set.getTimestamp("time"));
//                  java.sql.Timestamp aDao.setRegiDate(set.getTimestamp("registerdate"));
                    aDao.setPan(set.getString("pan"));
                    aDao.setMaritail(set.getString("maritail"));
                    aDao.setOccupation(set.getString("occupation"));
                    aDao.setAddress(set.getString("address"));
                    aDao.setCity(set.getString("city"));
                    aDao.setDistric(set.getString("distric"));
                    aDao.setPincode(set.getString("pincode"));
                    aDao.setState(set.getString("state"));
                    
//                    aDao.setImage(set.getString("image"));
                   aDao.setAccNum(set.getInt("Account_Num"));
                   aDao.setAccType(set.getString("Account_Type"));
                   aDao.setCurrentBalance(set.getInt("Current_Balance"));
                   aDao.setBranchId(set.getInt("Branchid"));
                   aDao.setAccStatus("Account_Status");
                
//                   aDao.setBranchId(set.getInt("Branchid"));
                   
                   
                    accountopendao.add(aDao);
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        return accountopendao;
    }
    
    public static List<AccountOpenDao> allCustomerdata() {
    List<AccountOpenDao> l = new ArrayList<>();
     
    Connection con = GetConnection.getConnectin();
    if (con != null) {
//           System.out.println("jjjjjjjj");
        String sql = "SELECT customer.name, account.Account_Num, account.Account_Status, account.Current_Balance FROM customer INNER JOIN account ON customer.customerid = account. customer_id";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                AccountOpenDao e = new AccountOpenDao();
//                System.out.println("jjkdkdkkkd");
                e.setName(rs.getString("name"));
//                System.out.println(rs.getString("name"));
                e.setAccountNumber(rs.getInt("Account_Num"));
//                 System.out.println(rs.getInt("Account_Num"));
                e.setAccountStatus(rs.getString("Account_Status"));
              
                e.setCurrentBalance(rs.getFloat("Current_Balance"));
              
                l.add(e);
            }
        } catch (Exception e) {
            System.out.println("" + e);
        }
    } else {
        System.out.println("connection not established");
    }
    return l;
 }
    
   
}
