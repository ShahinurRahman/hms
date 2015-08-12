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
 * @author ZiBRAIL
 */
@Entity
@Table(name = "BIOCHEMISTRY")
public class Biochemistry implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @ManyToOne
    private Patient patient;
    private Double gluco;
    private Double glucoRPP;
    private Double bloodUr;
    private Double creati;
    private Double bun;
    private Double sCholes;
    private Double hdCholes;
    private Double ldlCholes;
    private Double vldlCholes;
    private Double triglyce;
    private Double sTotalLip;
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

    public Double getGluco() {
        return gluco;
    }

    public void setGluco(Double gluco) {
        this.gluco = gluco;
    }

    public Double getGlucoRPP() {
        return glucoRPP;
    }

    public void setGlucoRPP(Double glucoRPP) {
        this.glucoRPP = glucoRPP;
    }

    public Double getBloodUr() {
        return bloodUr;
    }

    public void setBloodUr(Double bloodUr) {
        this.bloodUr = bloodUr;
    }

    public Double getCreati() {
        return creati;
    }

    public void setCreati(Double creati) {
        this.creati = creati;
    }

    public Double getBun() {
        return bun;
    }

    public void setBun(Double bun) {
        this.bun = bun;
    }

    public Double getsCholes() {
        return sCholes;
    }

    public void setsCholes(Double sCholes) {
        this.sCholes = sCholes;
    }

    public Double getHdCholes() {
        return hdCholes;
    }

    public void setHdCholes(Double hdCholes) {
        this.hdCholes = hdCholes;
    }

    public Double getLdlCholes() {
        return ldlCholes;
    }

    public void setLdlCholes(Double ldlCholes) {
        this.ldlCholes = ldlCholes;
    }

    public Double getVldlCholes() {
        return vldlCholes;
    }

    public void setVldlCholes(Double vldlCholes) {
        this.vldlCholes = vldlCholes;
    }

    public Double getTriglyce() {
        return triglyce;
    }

    public void setTriglyce(Double triglyce) {
        this.triglyce = triglyce;
    }

    public Double getsTotalLip() {
        return sTotalLip;
    }

    public void setsTotalLip(Double sTotalLip) {
        this.sTotalLip = sTotalLip;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
}
