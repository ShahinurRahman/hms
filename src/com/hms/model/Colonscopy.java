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
@Table(name="COLONSCOPY")
public class Colonscopy implements Serializable {
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)   
   private Long id;
   
   @ManyToOne
   private Patient patient;
   
   private Double colons1;
   
   private Double colons2;
   
   private Double colons3;
   
   private Double colons4;
   
   private Double colons5;
   
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

    public Double getColons1() {
        return colons1;
    }

    public void setColons1(Double colons1) {
        this.colons1 = colons1;
    }

    public Double getColons2() {
        return colons2;
    }

    public void setColons2(Double colons2) {
        this.colons2 = colons2;
    }

    public Double getColons3() {
        return colons3;
    }

    public void setColons3(Double colons3) {
        this.colons3 = colons3;
    }

    public Double getColons4() {
        return colons4;
    }

    public void setColons4(Double colons4) {
        this.colons4 = colons4;
    }

    public Double getColons5() {
        return colons5;
    }

    public void setColons5(Double colons5) {
        this.colons5 = colons5;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
   
   
   
}
