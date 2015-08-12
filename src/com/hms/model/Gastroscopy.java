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
 * @author ZiBRAIL
 */

@Entity
@Table(name="GASTROSCOPY")
public class Gastroscopy implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    private Double gastro1;
    
    private Double gastro2;
    
    private Double gastro3;
    
    private Double gastro4;
    
    private Double gastro5;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;

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

    public Double getGastro1() {
        return gastro1;
    }

    public void setGastro1(Double gastro1) {
        this.gastro1 = gastro1;
    }

    public Double getGastro2() {
        return gastro2;
    }

    public void setGastro2(Double gastro2) {
        this.gastro2 = gastro2;
    }

    public Double getGastro3() {
        return gastro3;
    }

    public void setGastro3(Double gastro3) {
        this.gastro3 = gastro3;
    }

    public Double getGastro4() {
        return gastro4;
    }

    public void setGastro4(Double gastro4) {
        this.gastro4 = gastro4;
    }

    public Double getGastro5() {
        return gastro5;
    }

    public void setGastro5(Double gastro5) {
        this.gastro5 = gastro5;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
    
}
