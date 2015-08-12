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
@Table(name="IMMUNOLOGY")
public class Immunology implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double immunology1;
    
    private Double immunology2;
    
    private Double immunology3;
    
    private Double immunology4;
    
    private Double immunology5;

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

    public Double getImmunology1() {
        return immunology1;
    }

    public void setImmunology1(Double immunology1) {
        this.immunology1 = immunology1;
    }

    public Double getImmunology2() {
        return immunology2;
    }

    public void setImmunology2(Double immunology2) {
        this.immunology2 = immunology2;
    }

    public Double getImmunology3() {
        return immunology3;
    }

    public void setImmunology3(Double immunology3) {
        this.immunology3 = immunology3;
    }

    public Double getImmunology4() {
        return immunology4;
    }

    public void setImmunology4(Double immunology4) {
        this.immunology4 = immunology4;
    }

    public Double getImmunology5() {
        return immunology5;
    }

    public void setImmunology5(Double immunology5) {
        this.immunology5 = immunology5;
    }

    
    
}
