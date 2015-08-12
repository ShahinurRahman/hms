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
@Table(name="USG")
public class Usg implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double usg1;
    
    private Double usg2;
    
    private Double usg3;
    
    private Double usg4;
    
    private Double usg5;

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

    public Double getUsg1() {
        return usg1;
    }

    public void setUsg1(Double usg1) {
        this.usg1 = usg1;
    }

    public Double getUsg2() {
        return usg2;
    }

    public void setUsg2(Double usg2) {
        this.usg2 = usg2;
    }

    public Double getUsg3() {
        return usg3;
    }

    public void setUsg3(Double usg3) {
        this.usg3 = usg3;
    }

    public Double getUsg4() {
        return usg4;
    }

    public void setUsg4(Double usg4) {
        this.usg4 = usg4;
    }

    public Double getUsg5() {
        return usg5;
    }

    public void setUsg5(Double usg5) {
        this.usg5 = usg5;
    }

}
