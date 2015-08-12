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
@Table(name="DENTAL_XRAY")
public class DentalXray implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double dentalXray1;
    
    private Double dentalXray2;
    
    private Double dentalXray3;
    
    private Double dentalXray4;
    
    private Double dentalXray5;

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

    public Double getDentalXray1() {
        return dentalXray1;
    }

    public void setDentalXray1(Double dentalXray1) {
        this.dentalXray1 = dentalXray1;
    }

    public Double getDentalXray2() {
        return dentalXray2;
    }

    public void setDentalXray2(Double dentalXray2) {
        this.dentalXray2 = dentalXray2;
    }

    public Double getDentalXray3() {
        return dentalXray3;
    }

    public void setDentalXray3(Double dentalXray3) {
        this.dentalXray3 = dentalXray3;
    }

    public Double getDentalXray4() {
        return dentalXray4;
    }

    public void setDentalXray4(Double dentalXray4) {
        this.dentalXray4 = dentalXray4;
    }

    public Double getDentalXray5() {
        return dentalXray5;
    }

    public void setDentalXray5(Double dentalXray5) {
        this.dentalXray5 = dentalXray5;
    }

    
    
}
