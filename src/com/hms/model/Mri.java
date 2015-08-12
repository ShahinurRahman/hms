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
@Table(name="MRI")
public class Mri implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double mri1;
    
    private Double mri2;
    
    private Double mri3;
    
    private Double mri4;
    
    private Double mri5;

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

    public Double getMri1() {
        return mri1;
    }

    public void setMri1(Double mri1) {
        this.mri1 = mri1;
    }

    public Double getMri2() {
        return mri2;
    }

    public void setMri2(Double mri2) {
        this.mri2 = mri2;
    }

    public Double getMri3() {
        return mri3;
    }

    public void setMri3(Double mri3) {
        this.mri3 = mri3;
    }

    public Double getMri4() {
        return mri4;
    }

    public void setMri4(Double mri4) {
        this.mri4 = mri4;
    }

    public Double getMri5() {
        return mri5;
    }

    public void setMri5(Double mri5) {
        this.mri5 = mri5;
    }

    
}
