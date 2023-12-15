package com.swastik.model;

import com.swastik.service.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/*
 *
 * @author Sohan_Maali
 *
 */
public class MoneyTransactionDto {

    public boolean senderTransactionHistory(MoneyTransactionDao mDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "insert into transaction_information(sender_id, Receiver_Id, Amount, Tran_Type, Description, Tran_status) values(?, ?, ?, ?, ?, ?)";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, mDao.getSenderAcc());
                System.out.println(mDao.getSenderAcc());

                psmt.setString(2, mDao.getReciverAcc());
                System.out.println(mDao.getReciverAcc());

                psmt.setString(3, mDao.getAmount());
                System.out.println(mDao.getAmount());

                psmt.setString(4, mDao.getTranType());
                System.out.println(mDao.getTranType());
                psmt.setString(5, mDao.getDescription());
                System.out.println(mDao.getDescription());

                psmt.setString(6, mDao.getTranStatus());
                System.out.println(mDao.getTranStatus());
                if (psmt.executeUpdate() > 0) {
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e + "////////////////////////");
            }
        }
        return flag;
    }

    public boolean performMoneyTransfer(MoneyTransactionDao mDao) {

        boolean flag = false;
        boolean a = this.setMoneyReciver(mDao);
        boolean b = this.setMoneySender(mDao);
        if (a && b) {
            mDao.setTranStatus("success");
            flag = senderTransactionHistory(mDao);
        }
        return flag;
    }

    public boolean setMoneyReciver(MoneyTransactionDao mDao) {
        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {

                String query = "UPDATE account SET Current_Balance = ? WHERE Account_Num = ? ";
                Double amount = this.getReciverAmount(mDao.getReciverAcc());
                double amountResult = amount + Double.valueOf(mDao.getAmount());

                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setString(1, String.valueOf(amountResult));
                psmt.setInt(2, Integer.parseInt(mDao.getReciverAcc()));
                if (psmt.executeUpdate() > 0) {
                    flag = true;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        }
        System.out.println(flag + "nm,mnbnnb nm");
        return flag;
    }

    public boolean setMoneySender(MoneyTransactionDao mDao) {

        boolean flag = false;
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "UPDATE account SET Current_Balance = ? WHERE Account_Num = ? ";
                PreparedStatement psmt = con.prepareStatement(query);
                double amountResult = Double.parseDouble(mDao.getSenderAmount()) - Double.parseDouble(mDao.getAmount());
                String amount = String.valueOf(amountResult);
                psmt.setString(1, amount);
                psmt.setInt(2, mDao.getSenderAcc());
                if (psmt.executeUpdate() > 0) {
                    flag = true;

                }
            } catch (SQLException e) {
                System.out.println(e + "sender");
            }
        }
        return flag;
    }

    public double getReciverAmount(String reAcc) {
        Connection con = GetConnection.getConnectin();
        double amount = 0;
        if (con != null) {
            try {
                String query = "SELECT * FROM account WHERE Account_Num = ?";
                PreparedStatement psmt = con.prepareStatement(query);

                psmt.setString(1, reAcc);
                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    amount = Double.parseDouble(set.getString("Current_Balance"));
                }
            } catch (SQLException e) {
                System.out.println(e + "+++++++++++reciver");
            }
        }
        return amount;
    }

    public List<MoneyTransactionDao> getTransactionHistory(int acc) {
        List<MoneyTransactionDao> list = new ArrayList<>();
        Connection con = GetConnection.getConnectin();

        if (con != null) {
            try {
                String query = "SELECT * FROM transaction_information WHERE sender_id = ? or Receiver_id = ? ";
                PreparedStatement psmt = con.prepareStatement(query);
                psmt.setInt(1, acc);
                psmt.setInt(2, acc);
                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    System.out.println("==============================================================");
                    MoneyTransactionDao mDao = new MoneyTransactionDao();

                    mDao.setTranid(set.getInt("Transaction_id"));

                    mDao.setSenderAcc(set.getInt("sender_id"));

                    mDao.setReciverAcc(set.getString("Receiver_id"));

                    mDao.setAmount(set.getString("Amount"));

                    mDao.setTranDate(set.getString("Tran_Date"));

                    mDao.setTranType(set.getString("Tran_Type"));

                    mDao.setDescription(set.getString("Description"));

                    mDao.setTranStatus(set.getString("Tran_status"));
                    list.add(mDao);
                    System.out.println("==============================================================");
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }

        return list;
    }

    public List<MoneyTransactionDao> searchTransactionsByDate(int acc, String dateString, String dateEnd) throws SQLException {
        List<MoneyTransactionDao> transactions = new ArrayList<>();
        Connection con = GetConnection.getConnectin();
        if (con != null) {
//            String sql = "SELECT * FROM transaction_information WHERE sender_Acc = ? AND Tran_Date BETWEEN ? AND ?";

            String sql = "SELECT * FROM transaction_information WHERE sender_Acc LIKE ? AND Tran_Date BETWEEN ? AND ?";
            try {
                PreparedStatement psmt = con.prepareStatement(sql);
                // Convert the input date string to java.util.Date
//                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

                System.out.println(dateString);
                System.out.println(dateEnd);

                psmt.setInt(1, acc);
                psmt.setString(2, dateString);
                psmt.setString(3, dateEnd);

                ResultSet set = psmt.executeQuery();
                while (set.next()) {
                    MoneyTransactionDao mDao = new MoneyTransactionDao();

                    mDao.setTranid(set.getInt("Transaction_id"));

                    mDao.setSenderAcc(set.getInt("sender_Acc"));

                    mDao.setReciverAcc(set.getString("Receiver_Acc_num"));

                    mDao.setAmount(set.getString("Amount"));

                    mDao.setTranDate(set.getString("Tran_Date"));

                    mDao.setTranType(set.getString("Tran_Type"));

                    mDao.setDescription(set.getString("Description"));

                    mDao.setTranStatus(set.getString("Tran_status"));

                    transactions.add(mDao);
                }

            } catch (SQLException e) {
                System.out.println(e);
            }
        }

        return transactions;
    }

}