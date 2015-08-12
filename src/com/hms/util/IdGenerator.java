/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.util;

import com.hms.model.LedgerAC;
import com.hms.model.Patient;
import java.text.DecimalFormat;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;

/**
 *
 * @author ZiBRAIL
 */
public class IdGenerator {

    public static void main(String[] args) {
        System.out.println(new IdGenerator().getReceiptNumber());
    }

    public String getPatientId() {
        Session session = new MySession().getSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Patient.class)
                .setProjection(Projections.max("id"));

        Long max = (Long) criteria.uniqueResult();

        session.getTransaction().commit();
        session.close();

        return "BU-" + (max + 1);
    }

    public String getReceiptNumber() {
        Session session = new MySession().getSession();
        session.beginTransaction();

        Long max;

        Criteria criteria = session.createCriteria(LedgerAC.class)
                .setProjection(Projections.max("id"));
        max = (Long) criteria.uniqueResult();
        //System.out.println(max);

        if (max == null) {
            max = 0L;
        }

        session.getTransaction().commit();
        session.close();

        DecimalFormat df = new DecimalFormat("0000");
        return df.format(max + 1);

    }
}
