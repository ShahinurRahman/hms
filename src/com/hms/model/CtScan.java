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
@Table(name="CT_SCAN")
public class CtScan implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double ctScan1;
    
    private Double ctScan2;
    
    private Double ctScan3;
    
    private Double ctScan4;
    
    private Double ctScan5;

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

    public Double getCtScan1() {
        return ctScan1;
    }

    public void setCtScan1(Double ctScan1) {
        this.ctScan1 = ctScan1;
    }

    public Double getCtScan2() {
        return ctScan2;
    }

    public void setCtScan2(Double ctScan2) {
        this.ctScan2 = ctScan2;
    }

    public Double getCtScan3() {
        return ctScan3;
    }

    public void setCtScan3(Double ctScan3) {
        this.ctScan3 = ctScan3;
    }

    public Double getCtScan4() {
        return ctScan4;
    }

    public void setCtScan4(Double ctScan4) {
        this.ctScan4 = ctScan4;
    }

    public Double getCtScan5() {
        return ctScan5;
    }

    public void setCtScan5(Double ctScan5) {
        this.ctScan5 = ctScan5;
    }

    public void setVisible(boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
