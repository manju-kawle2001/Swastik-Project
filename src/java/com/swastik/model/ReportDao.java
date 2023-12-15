package com.swastik.model;

import java.security.Timestamp;

/**
 *
 * @author Sohan_Maali
 */
public class ReportDao {

    private int reportId;
  private int accNumber;
    private String reportType;

     private String reportMessage;
    private String reportStatus;
    private String reportSolution;
    
      private Timestamp Report_date;
    public int getReportId() {
        return reportId;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    public int getAccNumber() {
        return accNumber;
    }

    public void setAccNumber(int accNumber) {
        this.accNumber = accNumber;
    }

    public String getReportType() {
        return reportType;
    }

    public void setReportType(String reportType) {
        this.reportType = reportType;
    }

    public Timestamp getReport_date() {
        return Report_date;
    }

    public void setReport_date(Timestamp Report_date) {
        this.Report_date = Report_date;
    }

    public String getReportStatus() {
        return reportStatus;
    }

    public void setReportStatus(String reportStatus) {
        this.reportStatus = reportStatus;
    }
    public String getReportMessage() {
        return reportMessage;
    }

    public void setReportMessage(String reportMessage) {
        this.reportMessage = reportMessage;
    }

    public String getReportSolution() {
        return reportSolution;
    }

    public void setReportSolution(String reportSolution) {
        this.reportSolution = reportSolution;
    }
    
}