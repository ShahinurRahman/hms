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
@Table(name="EEG")
public class Eeg implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double eeg1;
    
    private Double eeg2;
    
    private Double eeg3;
    
    private Double eeg4;
    
    private Double eeg5;

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

    public Double getEeg1() {
        return eeg1;
    }

    public void setEeg1(Double eeg1) {
        this.eeg1 = eeg1;
    }

    public Double getEeg2() {
        return eeg2;
    }

    public void setEeg2(Double eeg2) {
        this.eeg2 = eeg2;
    }

    public Double getEeg3() {
        return eeg3;
    }

    public void setEeg3(Double eeg3) {
        this.eeg3 = eeg3;
    }

    public Double getEeg4() {
        return eeg4;
    }

    public void setEeg4(Double eeg4) {
        this.eeg4 = eeg4;
    }

    public Double getEeg5() {
        return eeg5;
    }

    public void setEeg5(Double eeg5) {
        this.eeg5 = eeg5;
    }
    
}
