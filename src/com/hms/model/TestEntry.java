/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author ZiBRAIL
 */

@Entity
@Table(name="TEST")
public class TestEntry implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    private long id;
    
    private String testId;
    
    @ManyToOne    
    private Department department;
    
    @ManyToOne    
    private Biochemistry biochemistry;
    
    @ManyToOne
    private Patient patient;
    
    private String testName;       
    
    private Double rate;    

    private Integer deliveryDays;    

    public Biochemistry getBiochemistry() {
        return biochemistry;
    }

    public void setBiochemistry(Biochemistry biochemistry) {
        this.biochemistry = biochemistry;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    
    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    
    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId;
    }
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public Double getRate() {
        return rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }

    public Integer getDeliveryDays() {
        return deliveryDays;
    }

    public void setDeliveryDays(Integer deliveryDays) {
        this.deliveryDays = deliveryDays;
    }



    
    
    
}
