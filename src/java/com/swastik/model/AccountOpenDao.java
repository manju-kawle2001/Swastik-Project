package com.swastik.model;

import java.io.Serializable;
import java.security.Timestamp;

public class AccountOpenDao  extends AccountInformationDao implements Serializable {

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
//    =====================================================
    private int accNum;
    private int cusId;
    private String accType;
    private double balance;
    private int BranchId;
    private String accStatus;
    private String branch;

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public int getAccNum() {
        return accNum;
    }

    public void setAccNum(int accNum) {
        this.accNum = accNum;
    }

    public int getCusId() {
        return cusId;
    }

    public void setCusId(int cusId) {
        this.cusId = cusId;
    }

    public String getAccType() {
        return accType;
    }

    public void setAccType(String accType) {
        this.accType = accType;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Override
    public int getBranchId() {
        return BranchId;
    }

    /**
     *
     * @param BranchId
     */
    @Override
    public void setBranchId(int BranchId) {
        this.BranchId = BranchId;
    }

    public String getAccStatus() {
        return accStatus;
    }

    public void setAccStatus(String accStatus) {
        this.accStatus = accStatus;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDistric() {
        return distric;
    }

    public void setDistric(String dictric) {
        this.distric = dictric;
    }

    public Timestamp getRegiDate() {
        return dateTime;
    }

    public void setRegiDate(Timestamp regiDate) {
        this.dateTime = regiDate;
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

    public void setState(String state) {
        this.state = state;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
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

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAdhar() {
        return adhar;
    }

    public void setAdhar(String adhar) {
        this.adhar = adhar;
    }

    public String getPan() {
        return pan;
    }

    public AccountOpenDao(String password, String name, String father, String mother, String gender, String dob, String mobile, String email, String adhar, String maritail, String occupation, String address, String city, String pincode, String state, String pan) {
        this.password = password;
        this.name = name;
        this.father = father;
        this.mother = mother;
        this.gender = gender;
        this.dob = dob;
        this.mobile = mobile;
        this.email = email;
        this.adhar = adhar;
        this.maritail = maritail;
        this.occupation = occupation;
        this.address = address;
        this.city = city;
        this.pincode = pincode;
        this.state = state;
        this.pan = pan;
    }

    public void setPan(String pan) {
        this.pan = pan;
    }

    public AccountOpenDao() {
    }

}
