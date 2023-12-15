package com.swastik.model;

import java.io.Serializable;

public class loandao2 implements Serializable {

    private String loanRequestid; // Customer ID
    private int loanid;

    private int acc_num;
    private String loantype;

    private String loanAmmount;
    private String loanTerm;
    private String permanentAddress;
    private String email;
    private String mobile;

    // Additional fields related to Co-Applicant/Guarantor
    private String guarantorName;
    private String guarantorFather;
    private String guarantorGender;
    private String guarantorAddress;
    private String guarantorAccountNumber;
    private String guarantorBank;
    private String guarantorIfsc;
    private String guarantorAdhar;
    private String guarantorPan;

    // Constructors
    public loandao2() {
    }

    // Getters and Setters
    public String getLoanRequestid() {
        return loanRequestid;
    }

    public void setLoanRequestid(String loanRequestid) {
        this.loanRequestid = loanRequestid;
    }

    public int getLoanID() {
        return loanid;
    }

    public void setLoanID(int loanid) {
        this.loanid = loanid;
    }

    public int getAcc_num() {
        return acc_num;
    }

    public void setAcc_num(int acc_num) {
        this.acc_num = acc_num;
    }

    public String getLoanType() {
        return loantype;
    }

    public void setLoanType(String loantype) {
        this.loantype = loantype;
    }

    public String getLoanAmmount() {
        return loanAmmount;
    }

    public void setLoanAmmount(String loanAmmount) {
        this.loanAmmount = loanAmmount;
    }

    public String getLoanTerm() {
        return loanTerm;
    }

    public void setLoanTerm(String loanTerm) {
        this.loanTerm = loanTerm;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
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

    public String getGuarantorName() {
        return guarantorName;
    }

    public void setGuarantorName(String guarantorName) {
        this.guarantorName = guarantorName;
    }

    public String getGuarantorFather() {
        return guarantorFather;
    }

    public void setGuarantorFather(String guarantorFather) {
        this.guarantorFather = guarantorFather;
    }

    public String getGuarantorGender() {
        return guarantorGender;
    }

    public void setGuarantorGender(String guarantorGender) {
        this.guarantorGender = guarantorGender;
    }

    public String getGuarantorAddress() {
        return guarantorAddress;
    }

    public void setGuarantorAddress(String guarantorAddress) {
        this.guarantorAddress = guarantorAddress;
    }

    public String getGuarantorAccountNumber() {
        return guarantorAccountNumber;
    }

    public void setGuarantorAccountNumber(String guarantorAccountNumber) {
        this.guarantorAccountNumber = guarantorAccountNumber;
    }

    public String getGuarantorBank() {
        return guarantorBank;
    }

    public void setGuarantorBank(String guarantorBank) {
        this.guarantorBank = guarantorBank;
    }

    public String getGuarantorIfsc() {
        return guarantorIfsc;
    }

    public void setGuarantorIfsc(String guarantorIfsc) {
        this.guarantorIfsc = guarantorIfsc;
    }

    public String getGuarantorAdhar() {
        return guarantorAdhar;
    }

    public void setGuarantorAdhar(String guarantorAdhar) {
        this.guarantorAdhar = guarantorAdhar;
    }

    public String getGuarantorPan() {
        return guarantorPan;
    }

    public void setGuarantorPan(String guarantorPan) {
        this.guarantorPan = guarantorPan;
    }
}