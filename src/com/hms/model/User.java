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
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Alfaz
 */
@Entity
@Table(name="USER")
public class User implements Serializable{
    @Id
    @GeneratedValue
    private Long id;
    
    private String username;
    
    private String password;
    
//    @Column(name="USER_TYPE")
//    private String userType;
    
    @OneToMany
    private List<LedgerAC> ledgerList = new ArrayList<LedgerAC>(); 
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    } 

    public List<LedgerAC> getLedgerList() {
        return ledgerList;
    }

    public void setLedgerList(List<LedgerAC> ledgerList) {
        this.ledgerList = ledgerList;
    }
    
    
}
