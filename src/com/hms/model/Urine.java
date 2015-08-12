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
 * @author ZiBRAIL
 */

@Entity
@Table(name="URINE")
public class Urine implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    private Long id;
    
    @ManyToOne
    private Patient patient;
    
    private Double roAlbu;
    
    private Double roAppear;
    
    private Double roReact;
    
    private Double roSpg;
    
    private Double roSug;
    
    private Double micAmor;
    
    private Double micCast;
    
    private Double micCrys;
    
    private Double micEpc;
    
    private Double micOther;
    
    private Double micRbc;
    
    private Double micSper;
    
    private Double micWbc;
    
    private String regNum;
    @Temporal(TemporalType.DATE)
    Date testDate;

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

    public Double getRoAlbu() {
        return roAlbu;
    }

    public void setRoAlbu(Double roAlbu) {
        this.roAlbu = roAlbu;
    }

    public Double getRoAppear() {
        return roAppear;
    }

    public void setRoAppear(Double roAppear) {
        this.roAppear = roAppear;
    }

    public Double getRoReact() {
        return roReact;
    }

    public void setRoReact(Double roReact) {
        this.roReact = roReact;
    }

    public Double getRoSpg() {
        return roSpg;
    }

    public void setRoSpg(Double roSpg) {
        this.roSpg = roSpg;
    }

    public Double getRoSug() {
        return roSug;
    }

    public void setRoSug(Double roSug) {
        this.roSug = roSug;
    }

    public Double getMicAmor() {
        return micAmor;
    }

    public void setMicAmor(Double micAmor) {
        this.micAmor = micAmor;
    }

    public Double getMicCast() {
        return micCast;
    }

    public void setMicCast(Double micCast) {
        this.micCast = micCast;
    }

    public Double getMicCrys() {
        return micCrys;
    }

    public void setMicCrys(Double micCrys) {
        this.micCrys = micCrys;
    }

    public Double getMicEpc() {
        return micEpc;
    }

    public void setMicEpc(Double micEpc) {
        this.micEpc = micEpc;
    }

    public Double getMicOther() {
        return micOther;
    }

    public void setMicOther(Double micOther) {
        this.micOther = micOther;
    }

    public Double getMicRbc() {
        return micRbc;
    }

    public void setMicRbc(Double micRbc) {
        this.micRbc = micRbc;
    }

    public Double getMicSper() {
        return micSper;
    }

    public void setMicSper(Double micSper) {
        this.micSper = micSper;
    }

    public Double getMicWbc() {
        return micWbc;
    }

    public void setMicWbc(Double micWbc) {
        this.micWbc = micWbc;
    }

    public String getRegNum() {
        return regNum;
    }

    public void setRegNum(String regNum) {
        this.regNum = regNum;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
    
    
}
