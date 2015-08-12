/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hms.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author JAVA_PC
 */
@Entity
@Table(name="ENDOSCOPY")
public class Endoscopy implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double endoscopy1;
    
    private Double endoscopy2;
    
    private Double endoscopy3;
    
    private Double endoscopy4;
    
    private Double endoscopy5;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }

    public Double getEndoscopy1() {
        return endoscopy1;
    }

    public void setEndoscopy1(Double endoscopy1) {
        this.endoscopy1 = endoscopy1;
    }

    public Double getEndoscopy2() {
        return endoscopy2;
    }

    public void setEndoscopy2(Double endoscopy2) {
        this.endoscopy2 = endoscopy2;
    }

    public Double getEndoscopy3() {
        return endoscopy3;
    }

    public void setEndoscopy3(Double endoscopy3) {
        this.endoscopy3 = endoscopy3;
    }

    public Double getEndoscopy4() {
        return endoscopy4;
    }

    public void setEndoscopy4(Double endoscopy4) {
        this.endoscopy4 = endoscopy4;
    }

    public Double getEndoscopy5() {
        return endoscopy5;
    }

    public void setEndoscopy5(Double endoscopy5) {
        this.endoscopy5 = endoscopy5;
    }

   
    
}
