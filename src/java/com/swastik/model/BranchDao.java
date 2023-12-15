package com.swastik.model;

import java.io.Serializable;

public class BranchDao implements Serializable {

    private int branchId;
    private String ifscCode;
    private String branchName;
    private String branchAddess;

    public int getBranchId() {
        return branchId;
    }

    public void setBranchId(int branchId) {
        this.branchId = branchId;
    }

    public String getIfscCode() {
        return ifscCode;
    }

    public void setIfscCode(String ifscCode) {
        this.ifscCode = ifscCode;
    }

    public String getBranchName() {
        return branchName;
    }

    public void setBranchName(String branchName) {
        this.branchName = branchName;
    }

    public String getBranchAddess() {
        return branchAddess;
    }

    public void setBranchAddess(String branchAddess) {
        this.branchAddess = branchAddess;
    }
}
