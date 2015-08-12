
package com.hms.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

/** @author Alfaz **/

@Entity
@Table(name="PATIENT")
public class Patient  implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String regNo;
    
    private String patientName;
    
    private String fatherName;
    
    private String contact;
    
    private String sex;    
    
    private String age;
    
    private String meritalStatus;    
    
    @Temporal(TemporalType.DATE)
    private Date regDate; 
    
    @OneToMany
    private List<LedgerAC> ledgerList = new ArrayList<LedgerAC>();
    
    @OneToMany
    private List<Biochemistry> biochemistry = new ArrayList<Biochemistry>();
    
    @OneToMany
    private List<TestEntry> testEntry = new ArrayList<TestEntry>();
    
    private String referenceBy;
    
    private String discountBy;
    
    private String discountNote;

    
    private Double discount;
    
    private Double paid;
    
    private Double due;
    
    private Double total;
    
    private String testIds;
    
    private String regNum;

    public String getRegNum() {
        return regNum;
    }

    public void setRegNum(String regNum) {
        this.regNum = regNum;
    }

    public List<Biochemistry> getBiochemistry() {
        return biochemistry;
    }

    public void setBiochemistry(List<Biochemistry> biochemistry) {
        this.biochemistry = biochemistry;
    }

    public List<LedgerAC> getLedgerList() {
        return ledgerList;
    }

    public void setLedgerList(List<LedgerAC> ledgerList) {
        this.ledgerList = ledgerList;
    }

    public List<TestEntry> getTestEntry() {
        return testEntry;
    }

    public void setTestEntry(List<TestEntry> testEntry) {
        this.testEntry = testEntry;
    }

    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
    
    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }   

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
    
    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }

    public String getMeritalStatus() {
        return meritalStatus;
    }

    public void setMeritalStatus(String meritalStatus) {
        this.meritalStatus = meritalStatus;
    }

    public String getReferenceBy() {
        return referenceBy;
    }

    public void setReferenceBy(String referenceBy) {
        this.referenceBy = referenceBy;
    }

    public String getDiscountBy() {
        return discountBy;
    }

    public void setDiscountBy(String discountBy) {
        this.discountBy = discountBy;
    }    
    
    public String getDiscountNote() {
        return discountNote;
    }

    public void setDiscountNote(String discountNote) {
        this.discountNote = discountNote;
    }

    public Double getDiscount() {
        return discount;
    }

    public Double getDue() {
        return due;
    }

    public void setDue(Double due) {
        this.due = due;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Double getPaid() {
        return paid;
    }

    public void setPaid(Double paid) {
        this.paid = paid;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }


    public String getTestIds() {
        return testIds;
    }

    public void setTestIds(String testIds) {
        this.testIds = testIds;
    }
    
}
