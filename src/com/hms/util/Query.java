/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.util;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Alfaz
 */
public class Query {
    public Object find(Class c, String field, String value){
        Session session = new MySession().getSession();
        session.beginTransaction();
        return session.createCriteria(c).add(Restrictions.eq(field, value)).uniqueResult();        
    }
}
