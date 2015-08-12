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
@Table(name="DIABETIES")
public class Diabeties implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private String diabeties1;
    
    private String diabeties2;
    
    private String diabeties3;
    
    private String diabeties4;
    
    private String diabeties5;

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

    public String getDiabeties1() {
        return diabeties1;
    }

    public void setDiabeties1(String diabeties1) {
        this.diabeties1 = diabeties1;
    }

    public String getDiabeties2() {
        return diabeties2;
    }

    public void setDiabeties2(String diabeties2) {
        this.diabeties2 = diabeties2;
    }

    public String getDiabeties3() {
        return diabeties3;
    }

    public void setDiabeties3(String diabeties3) {
        this.diabeties3 = diabeties3;
    }

    public String getDiabeties4() {
        return diabeties4;
    }

    public void setDiabeties4(String diabeties4) {
        this.diabeties4 = diabeties4;
    }

    public String getDiabeties5() {
        return diabeties5;
    }

    public void setDiabeties5(String diabeties5) {
        this.diabeties5 = diabeties5;
    }
    
    
}
