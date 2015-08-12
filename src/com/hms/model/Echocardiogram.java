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
@Table(name="ECHOCARDIOGRAM")
public class Echocardiogram implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double echocardiogram1;
    
    private Double echocardiogram2;
    
    private Double echocardiogram3;
    
    private Double echocardiogram4;
    
    private Double echocardiogram5;

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

    public Double getEchocardiogram1() {
        return echocardiogram1;
    }

    public void setEchocardiogram1(Double echocardiogram1) {
        this.echocardiogram1 = echocardiogram1;
    }

    public Double getEchocardiogram2() {
        return echocardiogram2;
    }

    public void setEchocardiogram2(Double echocardiogram2) {
        this.echocardiogram2 = echocardiogram2;
    }

    public Double getEchocardiogram3() {
        return echocardiogram3;
    }

    public void setEchocardiogram3(Double echocardiogram3) {
        this.echocardiogram3 = echocardiogram3;
    }

    public Double getEchocardiogram4() {
        return echocardiogram4;
    }

    public void setEchocardiogram4(Double echocardiogram4) {
        this.echocardiogram4 = echocardiogram4;
    }

    public Double getEchocardiogram5() {
        return echocardiogram5;
    }

    public void setEchocardiogram5(Double echocardiogram5) {
        this.echocardiogram5 = echocardiogram5;
    }

    
    
}
