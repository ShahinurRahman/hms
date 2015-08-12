/*
 * To change this template, choose Tools | Templates
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
 * @author Alfaz
 **/
@Entity
@Table(name="BLOOD")
public class Blood   implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;
    
    private Double himoglobine;
        
    private Double neutrophils;
    
    private Double lymphocytes;
    
    private Double eosinophil;
    
    private Double monocytes;
    
    private Double basophils;
    
    private Double platelets;
    
    private Double others;
    
    private String patientName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPatinetName() {
        return patientName;
    }

    public void setPatinetName(String patinetName) {
        this.patientName = patinetName;
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

    public Double getHimoglobine() {
        return himoglobine;
    }

    public void setHimoglobine(Double himoglobine) {
        this.himoglobine = himoglobine;
    }
    
    public Double getNeutrophils() {
        return neutrophils;
    }

    public void setNeutrophils(Double neutrophils) {
        this.neutrophils = neutrophils;
    }

    public Double getLymphocytes() {
        return lymphocytes;
    }

    public void setLymphocytes(Double lymphocytes) {
        this.lymphocytes = lymphocytes;
    }

    public Double getEosinophil() {
        return eosinophil;
    }

    public void setEosinophil(Double eosinophil) {
        this.eosinophil = eosinophil;
    }

    public Double getMonocytes() {
        return monocytes;
    }

    public void setMonocytes(Double monocytes) {
        this.monocytes = monocytes;
    }

    public Double getBasophils() {
        return basophils;
    }

    public void setBasophils(Double basophils) {
        this.basophils = basophils;
    }

    public Double getPlatelets() {
        return platelets;
    }

    public void setPlatelets(Double platelets) {
        this.platelets = platelets;
    }

    public Double getOthers() {
        return others;
    }

    public void setOthers(Double others) {
        this.others = others;
    }
   
}
