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
@Table(name="DUPLEX_STUDY")
public class DuplexStudy implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double duplexStudy1;
    
    private Double duplexStudy2;
    
    private Double duplexStudy3;
    
    private Double duplexStudy4;
    
    private Double duplexStudy5;

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

    public Double getDuplexStudy1() {
        return duplexStudy1;
    }

    public void setDuplexStudy1(Double duplexStudy1) {
        this.duplexStudy1 = duplexStudy1;
    }

    public Double getDuplexStudy2() {
        return duplexStudy2;
    }

    public void setDuplexStudy2(Double duplexStudy2) {
        this.duplexStudy2 = duplexStudy2;
    }

    public Double getDuplexStudy3() {
        return duplexStudy3;
    }

    public void setDuplexStudy3(Double duplexStudy3) {
        this.duplexStudy3 = duplexStudy3;
    }

    public Double getDuplexStudy4() {
        return duplexStudy4;
    }

    public void setDuplexStudy4(Double duplexStudy4) {
        this.duplexStudy4 = duplexStudy4;
    }

    public Double getDuplexStudy5() {
        return duplexStudy5;
    }

    public void setDuplexStudy5(Double duplexStudy5) {
        this.duplexStudy5 = duplexStudy5;
    }

     
    
}
