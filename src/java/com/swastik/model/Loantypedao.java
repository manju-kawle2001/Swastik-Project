package com.swastik.model;

/**
 *
 * @author Sohan_Maali
 */
public class Loantypedao {

    private int loanId;
    private String name;
    private String interestRate;
    private String duration;

    // Constructors, getters, and setters
    public Loantypedao() {
    }

    public Loantypedao(int loanId, String name, String interestRate, String duration) {
        this.loanId = loanId;
        this.name = name;
        this.interestRate = interestRate;
        this.duration = duration;
    }

    public int getLoanId() {
        return loanId;
    }

    public void setLoanId(int loanId) {
        this.loanId = loanId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(String interestRate) {
        this.interestRate = interestRate;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
}
