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
@Table(name="ETT")
public class Ett implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double ett1;
    
    private Double ett2;
    
    private Double ett3;
    
    private Double ett4;
    
    private Double ett5;

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

    public Double getEtt1() {
        return ett1;
    }

    public void setEtt1(Double ett1) {
        this.ett1 = ett1;
    }

    public Double getEtt2() {
        return ett2;
    }

    public void setEtt2(Double ett2) {
        this.ett2 = ett2;
    }

    public Double getEtt3() {
        return ett3;
    }

    public void setEtt3(Double ett3) {
        this.ett3 = ett3;
    }

    public Double getEtt4() {
        return ett4;
    }

    public void setEtt4(Double ett4) {
        this.ett4 = ett4;
    }

    public Double getEtt5() {
        return ett5;
    }

    public void setEtt5(Double ett5) {
        this.ett5 = ett5;
    }

    
}
