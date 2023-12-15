package com.swastik.model;

/**
 *
 * @author Sohan_Maali
 */
public class NomineeDetailsDao {

    private int customerId;
    private String nomineeName;
    private String dob;
    private String Relation;
    private String Adhar;
    private String Address;

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getNomineeName() {
        return nomineeName;
    }

    public void setNomineeName(String nomineeName) {
        this.nomineeName = nomineeName;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getRelation() {
        return Relation;
    }

    public void setRelation(String Relation) {
        this.Relation = Relation;
    }

    public String getAdhar() {
        return Adhar;
    }

    public void setAdhar(String Adhar) {
        this.Adhar = Adhar;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }
}
