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
@Table(name="COLOR_DOPPLER")
public class ColorDoppler implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double cd1;
    
    private Double cd2;
    
    private Double cd3;
    
    private Double cd4;
    
    private Double cd5;

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

    public Double getCd1() {
        return cd1;
    }

    public void setCd1(Double cd1) {
        this.cd1 = cd1;
    }

    public Double getCd2() {
        return cd2;
    }

    public void setCd2(Double cd2) {
        this.cd2 = cd2;
    }

    public Double getCd3() {
        return cd3;
    }

    public void setCd3(Double cd3) {
        this.cd3 = cd3;
    }

    public Double getCd4() {
        return cd4;
    }

    public void setCd4(Double cd4) {
        this.cd4 = cd4;
    }

    public Double getCd5() {
        return cd5;
    }

    public void setCd5(Double cd5) {
        this.cd5 = cd5;
    }
    
    
    
}
