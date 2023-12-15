//package com.swastik.model;
//
///**
// *
// * @author Sohan_Maali
// */
//import java.io.Serializable;
//
//public class LoanapplyDao implements Serializable {
//
//    private int id;
//    private String Acc_number, Beneficiary_Name, Adhar_num, Pan_Num, Address, Email,
//            Guarantor_name, Guarantor_Father, Guarantor_Gender, Guarantor_Address, Guarantor_Account, Guarantor_Ifsc, Guarantor_Adhar, Guarantor_Pan;
//
//    public LoanapplyDao(String Acc_number, String Beneficiary_Name, String Adhar_num, String Pan_Num, String Address, String Email,
//            String Guarantor_name, String Guarantor_Father, String Guarantor_Gender, String Guarantor_Address, String Guarantor_Account, String Guarantor_Ifsc, String Guarantor_Adhar, String Guarantor_Pan) {
//        this.Acc_number = Acc_number;
//        this.Beneficiary_Name = Beneficiary_Name;
//        this.Adhar_num = Adhar_num;
//        this.Pan_Num = Pan_Num;
//        this.Address = Address;
//        this.Email = Email;
//        this.Guarantor_name = Guarantor_name;
//        this.Guarantor_Father = Guarantor_Father;
//        this.Guarantor_Gender = Guarantor_Gender;
//        this.Guarantor_Address = Guarantor_Address;
//        this.Guarantor_Account = Guarantor_Account;
//        this.Guarantor_Ifsc = Guarantor_Ifsc;
//        this.Guarantor_Adhar = Guarantor_Adhar;
//        this.Guarantor_Pan = Guarantor_Pan;
//    }
//
//    public LoanapplyDao() {
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public int getId() {
//        return id;
//    }
//
//    public String getAcc_number() {
//        return Acc_number;
//    }
//
//    public void setAcc_number(String Acc_number) {
//        this.Acc_number = Acc_number;
//    }
//
//    public String getBeneficiary_Name() {
//        return Beneficiary_Name;
//    }
//
//    public void setBeneficiary_Name(String Beneficiary_Name) {
//        this.Beneficiary_Name = Beneficiary_Name;
//    }
//
//    public String getAdhar_num() {
//        return Adhar_num;
//    }
//
//    public void setAdhar_num(String Adhar_num) {
//        this.Adhar_num = Adhar_num;
//    }
//
//    public String getPan_Num() {
//        return Pan_Num;
//    }
//
//    public void setPan_Num(String Pan_Num) {
//        this.Pan_Num = Pan_Num;
//    }
//
//    public String getAddress() {
//        return Address;
//    }
//
//    public void setAddress(String Address) {
//        this.Address = Address;
//    }
//
//    public String getEmail() {
//        return Email;
//    }
//
//    public void setEmail(String Email) {
//        this.Email = Email;
//    }
//
//    public String getGuarantor_name() {
//        return Guarantor_name;
//    }
//
//    public void setGuarantor_name(String Guarantor_name) {
//        this.Guarantor_name = Guarantor_name;
//    }
//
//    public String getGuarantor_Father() {
//        return Guarantor_Father;
//    }
//
//    public void setGuarantor_Father(String Guarantor_Father) {
//        this.Guarantor_Father = Guarantor_Father;
//    }
//
//    public String getGuarantor_Gender() {
//        return Guarantor_Gender;
//    }
//
//    public void setGuarantor_Gender(String Guarantor_Gender) {
//        this.Guarantor_Gender = Guarantor_Gender;
//    }
//
//    public String getGuarantor_Address() {
//        return Guarantor_Address;
//    }
//
//    public void setGuarantor_Address(String Guarantor_Address) {
//        this.Guarantor_Address = Guarantor_Address;
//    }
//
//    public String getGuarantor_Account() {
//        return Guarantor_Account;
//    }
//
//    public void setGuarantor_Account(String Guarantor_Account) {
//        this.Guarantor_Account = Guarantor_Account;
//    }
//
//    public String getGuarantor_Ifsc() {
//        return Guarantor_Ifsc;
//    }
//
//    public void setGuarantor_Ifsc(String Guarantor_Ifsc) {
//        this.Guarantor_Ifsc = Guarantor_Ifsc;
//    }
//
//    public String getGuarantor_Adhar() {
//        return Guarantor_Adhar;
//    }
//
//    public void setGuarantor_Adhar(String Guarantor_Adhar) {
//        this.Guarantor_Adhar = Guarantor_Adhar;
//    }
//
//    public String getGuarantor_Pan() {
//        return Guarantor_Pan;
//    }
//
//    public void setGuarantor_Pan(String Guarantor_Pan) {
//        this.Guarantor_Pan = Guarantor_Pan;
//    }
//}
package com.swastik.model;

//import java.io.Serializable;

public class LoanapplyDao  extends AccountOpenDao{
    private int id;
    private String Acc_number, Beneficiary_Name, Adhar_num, Pan_Num, Address, Email,
            Guarantor_name, Guarantor_Father, Guarantor_Gender, Guarantor_Address, Guarantor_Account, Guarantor_Ifsc, Guarantor_Adhar, Guarantor_Pan;

    public LoanapplyDao(String Acc_number, String Beneficiary_Name, String Adhar_num, String Pan_Num, String Address, String Email,
            String Guarantor_name, String Guarantor_Father, String Guarantor_Gender, String Guarantor_Address, String Guarantor_Account, String Guarantor_Ifsc, String Guarantor_Adhar, String Guarantor_Pan) {
        this.Acc_number = Acc_number;
        this.Beneficiary_Name = Beneficiary_Name;
        this.Adhar_num = Adhar_num;
        this.Pan_Num = Pan_Num;
        this.Address = Address;
        this.Email = Email;
        this.Guarantor_name = Guarantor_name;
        this.Guarantor_Father = Guarantor_Father;
        this.Guarantor_Gender = Guarantor_Gender;
        this.Guarantor_Address = Guarantor_Address;
        this.Guarantor_Account = Guarantor_Account;
        this.Guarantor_Ifsc = Guarantor_Ifsc;
        this.Guarantor_Adhar = Guarantor_Adhar;
        this.Guarantor_Pan = Guarantor_Pan;
    }

    public LoanapplyDao() {
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getAcc_number() {
        return Acc_number;
    }

    public void setAcc_number(String Acc_number) {
        this.Acc_number = Acc_number;
    }

    public String getBeneficiary_Name() {
        return Beneficiary_Name;
    }

    public void setBeneficiary_Name(String Beneficiary_Name) {
        this.Beneficiary_Name = Beneficiary_Name;
    }

    public String getAdhar_num() {
        return Adhar_num;
    }

    public void setAdhar_num(String Adhar_num) {
        this.Adhar_num = Adhar_num;
    }

    public String getPan_Num() {
        return Pan_Num;
    }

    public void setPan_Num(String Pan_Num) {
        this.Pan_Num = Pan_Num;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getGuarantor_name() {
        return Guarantor_name;
    }

    public void setGuarantor_name(String Guarantor_name) {
        this.Guarantor_name = Guarantor_name;
    }

    public String getGuarantor_Father() {
        return Guarantor_Father;
    }

    public void setGuarantor_Father(String Guarantor_Father) {
        this.Guarantor_Father = Guarantor_Father;
    }

    public String getGuarantor_Gender() {
        return Guarantor_Gender;
    }

    public void setGuarantor_Gender(String Guarantor_Gender) {
        this.Guarantor_Gender = Guarantor_Gender;
    }

    public String getGuarantor_Address() {
        return Guarantor_Address;
    }

    public void setGuarantor_Address(String Guarantor_Address) {
        this.Guarantor_Address = Guarantor_Address;
    }

    public String getGuarantor_Account() {
        return Guarantor_Account;
    }

    public void setGuarantor_Account(String Guarantor_Account) {
        this.Guarantor_Account = Guarantor_Account;
    }

    public String getGuarantor_Ifsc() {
        return Guarantor_Ifsc;
    }

    public void setGuarantor_Ifsc(String Guarantor_Ifsc) {
        this.Guarantor_Ifsc = Guarantor_Ifsc;
    }

    public String getGuarantor_Adhar() {
        return Guarantor_Adhar;
    }

    public void setGuarantor_Adhar(String Guarantor_Adhar) {
        this.Guarantor_Adhar = Guarantor_Adhar;
    }

    public String getGuarantor_Pan() {
        return Guarantor_Pan;
    }

    public void setGuarantor_Pan(String Guarantor_Pan) {
        this.Guarantor_Pan = Guarantor_Pan;
    }
}