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
@Table(name="HAEMATOLOGY")
public class Haematology implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double haematology1;
    
    private Double haematology2;
    
    private Double haematology3;
    
    private Double haematology4;
    
    private Double haematology5;

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

    public Double getHaematology1() {
        return haematology1;
    }

    public void setHaematology1(Double haematology1) {
        this.haematology1 = haematology1;
    }

    public Double getHaematology2() {
        return haematology2;
    }

    public void setHaematology2(Double haematology2) {
        this.haematology2 = haematology2;
    }

    public Double getHaematology3() {
        return haematology3;
    }

    public void setHaematology3(Double haematology3) {
        this.haematology3 = haematology3;
    }

    public Double getHaematology4() {
        return haematology4;
    }

    public void setHaematology4(Double haematology4) {
        this.haematology4 = haematology4;
    }

    public Double getHaematology5() {
        return haematology5;
    }

    public void setHaematology5(Double haematology5) {
        this.haematology5 = haematology5;
    }

    
    
}
