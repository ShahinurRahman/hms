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
@Table(name="CLINICAL_PATHOLOGY")
public class ClinicalPathology implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double cp1;
    
    private Double cp2;
    
    private Double cp3;
    
    private Double cp4;
    
    private Double cp5;

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

    public Double getCp1() {
        return cp1;
    }

    public void setCp1(Double cp1) {
        this.cp1 = cp1;
    }

    public Double getCp2() {
        return cp2;
    }

    public void setCp2(Double cp2) {
        this.cp2 = cp2;
    }

    public Double getCp3() {
        return cp3;
    }

    public void setCp3(Double cp3) {
        this.cp3 = cp3;
    }

    public Double getCp4() {
        return cp4;
    }

    public void setCp4(Double cp4) {
        this.cp4 = cp4;
    }

    public Double getCp5() {
        return cp5;
    }

    public void setCp5(Double cp5) {
        this.cp5 = cp5;
    }
    
    
    
}
