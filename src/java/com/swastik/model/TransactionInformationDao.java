package com.swastik.model;

import java.security.Timestamp;

/**
 *
 * @author Sohan_Maali
 */
public class TransactionInformationDao extends AccountOpenDao{

    private int tranid;
    private int accNum;
    private String Amount;
    Timestamp tranDate;
    private String tranType;
    private String description;
    private String tranStatus;
    private String receAccNum;
    private String Ifsc;
    
    //========================================================================================
  
    private int customerId;
    private String password;
    private String name;
    private String father;
    private String mother;
    private String gender;
    private String dob;
    private String mobile;
    private String email;
    private String adhar;
    private Timestamp dateTime;
    private String pan;
    private String maritail;
    private String occupation;
    private String address;
    private String city;
    private String pincode;
    private String state;
    private String distric;
    private String image;

    public TransactionInformationDao() {
    }

    public TransactionInformationDao(int tranid, int accNum, String Amount, Timestamp tranDate, String tranType, String description, String tranStatus, String receAccNum, String Ifsc, int customerId, String password, String name, String father, String mother, String gender, String dob, String mobile, String email, String adhar, Timestamp dateTime, String pan, String maritail, String occupation, String address, String city, String pincode, String state, String distric, String image) {
        this.tranid = tranid;
        this.accNum = accNum;
        this.Amount = Amount;
        this.tranDate = tranDate;
        this.tranType = tranType;
        this.description = description;
        this.tranStatus = tranStatus;
        this.receAccNum = receAccNum;
        this.Ifsc = Ifsc;
        this.customerId = customerId;
        this.password = password;
        this.name = name;
        this.father = father;
        this.mother = mother;
        this.gender = gender;
        this.dob = dob;
        this.mobile = mobile;
        this.email = email;
        this.adhar = adhar;
        this.dateTime = dateTime;
        this.pan = pan;
        this.maritail = maritail;
        this.occupation = occupation;
        this.address = address;
        this.city = city;
        this.pincode = pincode;
        this.state = state;
        this.distric = distric;
        this.image = image;
    }

    public int getTranid() {
        return tranid;
    }

    public void setTranid(int tranid) {
        this.tranid = tranid;
    }

    public int getAccNum() {
        return accNum;
    }

    public void setAccNum(int accNum) {
        this.accNum = accNum;
    }

    public String getAmount() {
        return Amount;
    }

    public void setAmount(String Amount) {
        this.Amount = Amount;
    }

    public Timestamp getTranDate() {
        return tranDate;
    }

    public void setTranDate(Timestamp tranDate) {
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

    public String getReceAccNum() {
        return receAccNum;
    }

    public void setReceAccNum(String receAccNum) {
        this.receAccNum = receAccNum;
    }

    public String getIfsc() {
        return Ifsc;
    }

    public void setIfsc(String Ifsc) {
        this.Ifsc = Ifsc;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFather() {
        return father;
    }

    public void setFather(String father) {
        this.father = father;
    }

    public String getMother() {
        return mother;
    }

    public void setMother(String mother) {
        this.mother = mother;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdhar() {
        return adhar;
    }

    public void setAdhar(String adhar) {
        this.adhar = adhar;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getPan() {
        return pan;
    }

    public void setPan(String pan) {
        this.pan = pan;
    }

    public String getMaritail() {
        return maritail;
    }

    public void setMaritail(String maritail) {
        this.maritail = maritail;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getState() {
        return state;
    }

    @Override
    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String getDistric() {
        return distric;
    }

    @Override
    public void setDistric(String distric) {
        this.distric = distric;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

   

}