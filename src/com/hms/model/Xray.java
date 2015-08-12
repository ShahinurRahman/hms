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
@Table(name="XRAY")
public class Xray implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double xray1;
    
    private Double xray2;
    
    private Double xray3;
    
    private Double xray4;
    
    private Double xray5;

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

    public Double getXray1() {
        return xray1;
    }

    public void setXray1(Double xray1) {
        this.xray1 = xray1;
    }

    public Double getXray2() {
        return xray2;
    }

    public void setXray2(Double xray2) {
        this.xray2 = xray2;
    }

    public Double getXray3() {
        return xray3;
    }

    public void setXray3(Double xray3) {
        this.xray3 = xray3;
    }

    public Double getXray4() {
        return xray4;
    }

    public void setXray4(Double xray4) {
        this.xray4 = xray4;
    }

    public Double getXray5() {
        return xray5;
    }

    public void setXray5(Double xray5) {
        this.xray5 = xray5;
    }

    
    
}
