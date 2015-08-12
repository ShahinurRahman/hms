/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author ZiBRAIL
 */

@Entity
@Table(name="DISCOUNT_BY")
public class DiscountBy implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)    
    private Long id;
    
    private String contact;
    
    private String name;
    
    private String designation;
    
    private String discountNote;

    @OneToMany
    @JoinTable(name="DISCOUNT_PATIENT", joinColumns=@JoinColumn(name="DOCTOR_ID"),
            inverseJoinColumns=@JoinColumn(name="PATIENT_ID"))
    private List<Patient> patients = new ArrayList<Patient>();
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Patient> getPatients() {
        return patients;
    }

    public void setPatients(List<Patient> patients) {
        this.patients = patients;
    }


    public void setId(Long id) {
        this.id = id;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    

    public String getDiscountNote() {
        return discountNote;
    }

    public void setDiscountNote(String discountNote) {
        this.discountNote = discountNote;
    }   
    
}
