package com.swastik.model;

//import java.security.Timestamp;
/**
 *
 * @author Sohan_Maali FOR transaction_information
 */
public class MoneyTransactionDao {

    private int tranid;
    private int senderAcc;
    private int receiverId; // benefaisery id number
    private String Amount;
    private String senderAmount;
    private String reciverAcc;
    private String tranDate;
    private String tranType;
    private String description;
    private String tranStatus;
    private String pass;
    private String endDate;

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public int getSenderAcc() {
        return senderAcc;
    }

    public void setSenderAcc(int senderAcc) {
        this.senderAcc = senderAcc;
    }

    public String getReciverAcc() {
        return reciverAcc;
    }

    public void setReciverAcc(String reciverAcc) {
        this.reciverAcc = reciverAcc;
    }

    public String getSenderAmount() {
        return senderAmount;
    }

    public void setSenderAmount(String senderAmount) {
        this.senderAmount = senderAmount;
    }

    public int getTranid() {
        return tranid;
    }

    public void setTranid(int tranid) {
        this.tranid = tranid;
    }

    public int getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(int receiverId) {
        this.receiverId = receiverId;
    }

    public String getAmount() {
        return Amount;
    }

    public void setAmount(String Amount) {
        this.Amount = Amount;
    }

    public String getTranDate() {
        return tranDate;
    }

    public void setTranDate(String tranDate) {
        this.tranDate = tranDate;
    }

    public String getTranType() {
        return tranType;
    }

    public void setTranType(String tranType) {
        this.tranType = tranType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTranStatus() {
        return tranStatus;
    }

    public void setTranStatus(String tranStatus) {
        this.tranStatus = tranStatus;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPass() {
        return this.pass;
    }
}