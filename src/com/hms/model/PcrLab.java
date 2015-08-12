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
@Table(name="PCR_LAB")
public class PcrLab implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double pcrLab1;
    
    private Double pcrLab2;
    
    private Double pcrLab3;
    
    private Double pcrLab4;
    
    private Double pcrLab5;

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

    public Double getPcrLab1() {
        return pcrLab1;
    }

    public void setPcrLab1(Double pcrLab1) {
        this.pcrLab1 = pcrLab1;
    }

    public Double getPcrLab2() {
        return pcrLab2;
    }

    public void setPcrLab2(Double pcrLab2) {
        this.pcrLab2 = pcrLab2;
    }

    public Double getPcrLab3() {
        return pcrLab3;
    }

    public void setPcrLab3(Double pcrLab3) {
        this.pcrLab3 = pcrLab3;
    }

    public Double getPcrLab4() {
        return pcrLab4;
    }

    public void setPcrLab4(Double pcrLab4) {
        this.pcrLab4 = pcrLab4;
    }

    public Double getPcrLab5() {
        return pcrLab5;
    }

    public void setPcrLab5(Double pcrLab5) {
        this.pcrLab5 = pcrLab5;
    }

    
    
}
