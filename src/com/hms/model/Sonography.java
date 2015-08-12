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
@Table(name="SONOGRAPHY")
public class Sonography implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    private Double liverSize;
    
    private Double liverFocal;
    
    private Double liverEcho;
    
    private Double liverIhbr;
    
    private Double liverPv;
    
    private Double liverCbd;
    
    private Double bladderSize;
    
    private Double bladderWall;
    
    private Double bladderLumin;
    
    @Temporal(TemporalType.DATE)
    private Date testDate;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Double getLiverSize() {
        return liverSize;
    }

    public void setLiverSize(Double liverSize) {
        this.liverSize = liverSize;
    }

    public Double getLiverFocal() {
        return liverFocal;
    }

    public void setLiverFocal(Double liverFocal) {
        this.liverFocal = liverFocal;
    }

    public Double getLiverEcho() {
        return liverEcho;
    }

    public void setLiverEcho(Double liverEcho) {
        this.liverEcho = liverEcho;
    }

    public Double getLiverIhbr() {
        return liverIhbr;
    }

    public void setLiverIhbr(Double liverIhbr) {
        this.liverIhbr = liverIhbr;
    }

    public Double getLiverPv() {
        return liverPv;
    }

    public void setLiverPv(Double liverPv) {
        this.liverPv = liverPv;
    }

    public Double getLiverCbd() {
        return liverCbd;
    }

    public void setLiverCbd(Double liverCbd) {
        this.liverCbd = liverCbd;
    }

    public Double getBladderSize() {
        return bladderSize;
    }

    public void setBladderSize(Double bladderSize) {
        this.bladderSize = bladderSize;
    }

    public Double getBladderWall() {
        return bladderWall;
    }

    public void setBladderWall(Double bladderWall) {
        this.bladderWall = bladderWall;
    }

    public Double getBladderLumin() {
        return bladderLumin;
    }

    public void setBladderLumin(Double bladderLumin) {
        this.bladderLumin = bladderLumin;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
    
    
}
