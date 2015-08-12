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
@Table(name="HISTOPATHOLOGY")
public class Histopathology implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double histopathology1;
    
    private Double histopathology2;
    
    private Double histopathology3;
    
    private Double histopathology4;
    
    private Double histopathology5;

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

    public Double getHistopathology1() {
        return histopathology1;
    }

    public void setHistopathology1(Double histopathology1) {
        this.histopathology1 = histopathology1;
    }

    public Double getHistopathology2() {
        return histopathology2;
    }

    public void setHistopathology2(Double histopathology2) {
        this.histopathology2 = histopathology2;
    }

    public Double getHistopathology3() {
        return histopathology3;
    }

    public void setHistopathology3(Double histopathology3) {
        this.histopathology3 = histopathology3;
    }

    public Double getHistopathology4() {
        return histopathology4;
    }

    public void setHistopathology4(Double histopathology4) {
        this.histopathology4 = histopathology4;
    }

    public Double getHistopathology5() {
        return histopathology5;
    }

    public void setHistopathology5(Double histopathology5) {
        this.histopathology5 = histopathology5;
    }

   
    
}
