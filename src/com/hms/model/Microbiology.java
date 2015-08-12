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
@Table(name="MICROBIOLOGY")
public class Microbiology implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double microbiology1;
    
    private Double microbiology2;
    
    private Double microbiology3;
    
    private Double microbiology4;
    
    private Double microbiology5;

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

    public Double getMicrobiology1() {
        return microbiology1;
    }

    public void setMicrobiology1(Double microbiology1) {
        this.microbiology1 = microbiology1;
    }

    public Double getMicrobiology2() {
        return microbiology2;
    }

    public void setMicrobiology2(Double microbiology2) {
        this.microbiology2 = microbiology2;
    }

    public Double getMicrobiology3() {
        return microbiology3;
    }

    public void setMicrobiology3(Double microbiology3) {
        this.microbiology3 = microbiology3;
    }

    public Double getMicrobiology4() {
        return microbiology4;
    }

    public void setMicrobiology4(Double microbiology4) {
        this.microbiology4 = microbiology4;
    }

    public Double getMicrobiology5() {
        return microbiology5;
    }

    public void setMicrobiology5(Double microbiology5) {
        this.microbiology5 = microbiology5;
    }

   
    
}
