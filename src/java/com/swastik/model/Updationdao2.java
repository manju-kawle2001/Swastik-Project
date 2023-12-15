package com.swastik.model;

public class Updationdao2 {
    private int updationId;
    private int accNumber;
     private String updationType;
    private String name;
    private String fatherName;
    private String motherName;
    private String gender;
    private String dob;
    private String marital;
    private String email;
    private String mobile;
    private String address;
    private String city;
    private String district;
    private String state;
    private String pincode;
    private String nomineeName;
    private String nomineeFather;
    private String nomineeMobile;
    private String nomineeEmail;
    private String nomineeAadhar;

    public Updationdao2() {
        // Default constructor
    }

    public Updationdao2(int accNumber, String name, String fatherName, String motherName, String gender, String dob, String marital, String email, String mobile, String address, String city, String district, String state, String pincode, String nomineeName, String nomineeFather, String nomineeMobile, String nomineeEmail, String nomineeAadhar) {
        this.accNumber = accNumber;
        this.name = name;
        this.fatherName = fatherName;
        this.motherName = motherName;
        this.gender = gender;
        this.dob = dob;
        this.marital = marital;
        this.email = email;
        this.mobile = mobile;
        this.address = address;
        this.city = city;
        this.district = district;
        this.state = state;
        this.pincode = pincode;
        this.nomineeName = nomineeName;
        this.nomineeFather = nomineeFather;
        this.nomineeMobile = nomineeMobile;
        this.nomineeEmail = nomineeEmail;
        this.nomineeAadhar = nomineeAadhar;
    }

    public int getUpdationId() {
        return updationId;
    }

    public void setUpdationId(int updationId) {
        this.updationId = updationId;
    }

    public int getAccNumber() {
        return accNumber;
    }

    public void setAccNumber(int accNumber) {
        this.accNumber = accNumber;
    }
     public String getUpdationType() {
        return updationType;
    }

    public void setUpdationType(String updationType) {
        this.updationType = updationType;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
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

    public String getMarital() {
        return marital;
    }

    public void setMarital(String marital) {
        this.marital = marital;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
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

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getNomineeName() {
        return nomineeName;
    }

    public void setNomineeName(String nomineeName) {
        this.nomineeName = nomineeName;
    }

    public String getNomineeFather() {
        return nomineeFather;
    }

    public void setNomineeFather(String nomineeFather) {
        this.nomineeFather = nomineeFather;
    }

    public String getNomineeMobile() {
        return nomineeMobile;
    }

    public void setNomineeMobile(String nomineeMobile) {
        this.nomineeMobile = nomineeMobile;
    }

    public String getNomineeEmail() {
        return nomineeEmail;
    }

    public void setNomineeEmail(String nomineeEmail) {
        this.nomineeEmail = nomineeEmail;
    }

    public String getNomineeAadhar() {
        return nomineeAadhar;
    }

    public void setNomineeAadhar(String nomineeAadhar) {
        this.nomineeAadhar = nomineeAadhar;
    }
}