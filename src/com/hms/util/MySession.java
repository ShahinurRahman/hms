/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class MySession {
//    public Session session;
//    public MySession(){
//        this.session = getSession();
//
//    }
    
    public Session getSession(){
        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	return sessionFactory.openSession();
    }
    public static void main(String[] arg){
            SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
            System.out.println("Created !");
            Session session = sessionFactory.openSession();
            //session.beginTransaction();
            //session.getTransaction().commit();
            //session.close();
            /*
            UserDetails user = new UserDetails();
            user = (UserDetails) session.get(UserDetails.class, 2);

            Car car = new Car();
            car.setCarName("Toyota 222");

            user.getCars().add(car);

            //car.setUser(user);

            session.beginTransaction();

            session.getTransaction().commit();
            session.close();
            */
    }

}
