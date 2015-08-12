/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hms.model;

import java.io.Serializable;
import java.util.Date;
import javax.annotation.Generated;
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
@Table(name="STOOL")
public class Stool implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    private Double physiColor;
    
    private Double physiConsist;
    
    private Double physiMucus;
    
    private Double physiBlood;
    
    private Double micosWbc;
    
    private Double micosRbc;
    
    private Double micosMacro;
    
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

    public Double getPhysiColor() {
        return physiColor;
    }

    public void setPhysiColor(Double physiColor) {
        this.physiColor = physiColor;
    }

    public Double getPhysiConsist() {
        return physiConsist;
    }

    public void setPhysiConsist(Double physiConsist) {
        this.physiConsist = physiConsist;
    }

    public Double getPhysiMucus() {
        return physiMucus;
    }

    public void setPhysiMucus(Double physiMucus) {
        this.physiMucus = physiMucus;
    }

    public Double getPhysiBlood() {
        return physiBlood;
    }

    public void setPhysiBlood(Double physiBlood) {
        this.physiBlood = physiBlood;
    }

    public Double getMicosWbc() {
        return micosWbc;
    }

    public void setMicosWbc(Double micosWbc) {
        this.micosWbc = micosWbc;
    }

    public Double getMicosRbc() {
        return micosRbc;
    }

    public void setMicosRbc(Double micosRbc) {
        this.micosRbc = micosRbc;
    }

    public Double getMicosMacro() {
        return micosMacro;
    }

    public void setMicosMacro(Double micosMacro) {
        this.micosMacro = micosMacro;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
    
    
}
