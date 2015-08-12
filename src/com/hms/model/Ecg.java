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
@Table(name="ECG")
public class Ecg implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double ecg1;
    
    private Double ecg2;
    
    private Double ecg3;
    
    private Double ecg4;
    
    private Double ecg5;

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

    public Double getEcg1() {
        return ecg1;
    }

    public void setEcg1(Double ecg1) {
        this.ecg1 = ecg1;
    }

    public Double getEcg2() {
        return ecg2;
    }

    public void setEcg2(Double ecg2) {
        this.ecg2 = ecg2;
    }

    public Double getEcg3() {
        return ecg3;
    }

    public void setEcg3(Double ecg3) {
        this.ecg3 = ecg3;
    }

    public Double getEcg4() {
        return ecg4;
    }

    public void setEcg4(Double ecg4) {
        this.ecg4 = ecg4;
    }

    public Double getEcg5() {
        return ecg5;
    }

    public void setEcg5(Double ecg5) {
        this.ecg5 = ecg5;
    }

    
    
    
}
