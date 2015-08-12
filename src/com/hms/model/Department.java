/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
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
 *
 * @author JAVA_PC
 */
@Entity
@Table(name = "HMS_DEPARTMENT")
public class Department implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    private String phone;

    @OneToMany
    @JoinTable(name = "HMS_JT_DEPARTMNET_TEST", joinColumns = @JoinColumn(name = "DPT_ID"),
            inverseJoinColumns = @JoinColumn(name = "TEST_ID"))
    List<TestEntry> testList = new ArrayList<TestEntry>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public List<TestEntry> getTestList() {
        return testList;
    }

    public void setTestList(List<TestEntry> testList) {
        this.testList = testList;
    }

}
