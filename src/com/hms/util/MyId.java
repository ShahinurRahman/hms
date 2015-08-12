/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hms.util;

import com.hms.model.DiscountBy;
import com.hms.model.Patient;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author ZiBRAIL
 */
public class MyId {
    public Long getId(Object[] o, String s){
        Long id = 0L;
        //for(Object)
        
        return id;
    }
    
    public static void main(String[] args) {
    DiscountBy discountDoctor;
    Session session;
        session = new MySession().getSession();
         session.beginTransaction();
        discountDoctor = (DiscountBy) session.get(DiscountBy.class, 5L);
        List<Patient> patients = discountDoctor.getPatients();
        session.getTransaction().commit();
        for(Patient patient : patients){
            System.out.println(patient.getPatientName()); 
        }
        
    }

}
