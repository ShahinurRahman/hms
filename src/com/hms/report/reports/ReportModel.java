/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hms.report.reports;

import com.hms.model.Biochemistry;
import com.hms.model.Patient;
import com.hms.model.Stool;
import com.hms.model.Xray;
import com.hms.report.controller.ReportController;
import com.hms.util.MySession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author JAVA_PC
 */
public class ReportModel {
    public static void showStoolReport(Patient patient) {       
        
        Session session = new MySession().getSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Stool.class);
        System.out.println("Start");
        Stool stool = (Stool) criteria.add(Restrictions.eq("patient", patient)).uniqueResult();
        System.out.println("End");
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map2 = new HashMap<String, Object>();
        list.add(map2);

        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("name", patient.getPatientName());
        paramMap.put("age", patient.getAge());
        paramMap.put("sex", patient.getSex());
        paramMap.put("doctor", patient.getReferenceBy());

       
        paramMap.put("physiColor", stool.getPhysiColor() + "");
        paramMap.put("physiConsist", stool.getPhysiConsist() + "");
        paramMap.put("physiMucus", stool.getPhysiMucus() + "");
        paramMap.put("physiBlood", stool.getPhysiBlood() + "");
        paramMap.put("micosWbc", stool.getMicosWbc() + "");
        paramMap.put("micosRbc", stool.getMicosRbc() + "");
        paramMap.put("micosMacro", stool.getMicosMacro() + "");
        paramMap.put("testDate", stool.getTestDate()+ "");

        new ReportController().showReport("StoolReport", paramMap, list);
    }
    
    
    public static void showXrayReport(Patient patient) {       
        
        Session session = new MySession().getSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Xray.class);
        System.out.println("Start");
        Xray xray = (Xray) criteria.add(Restrictions.eq("patient", patient)).uniqueResult();
        System.out.println("End");
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map2 = new HashMap<String, Object>();
        list.add(map2);

        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("name", patient.getPatientName());
        paramMap.put("age", patient.getAge());
        paramMap.put("sex", patient.getSex());
        paramMap.put("doctor", patient.getReferenceBy());
       
        paramMap.put("xray1", xray.getXray1() + "");
        paramMap.put("xray2", xray.getXray2() + "");
        paramMap.put("xray3", xray.getXray3() + "");
        paramMap.put("xray4", xray.getXray4() + "");
        paramMap.put("xray5", xray.getXray5() + "");

        new ReportController().showReport("ShowXrayReport", paramMap, list);
    }
    
    
    
    public static void showBiochemistryReport(Patient patient) {       
        
        Session session = new MySession().getSession();
        session.beginTransaction();
        Criteria criteria = session.createCriteria(Biochemistry.class);
        System.out.println("Start");
        Biochemistry biochemistry = (Biochemistry) criteria.add(Restrictions.eq("patient", patient)).uniqueResult();
        System.out.println("End");
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map2 = new HashMap<String, Object>();
        list.add(map2);

        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("name", patient.getPatientName());
        paramMap.put("age", patient.getAge());
        paramMap.put("sex", patient.getSex());
        paramMap.put("doctor", patient.getReferenceBy());
       
        paramMap.put("gluco", biochemistry.getGluco()+ "");
        paramMap.put("glucoRPP", biochemistry.getGlucoRPP()+ "");
        paramMap.put("bloodUr", biochemistry.getBloodUr()+ "");
        paramMap.put("creati", biochemistry.getCreati()+ "");
        paramMap.put("sCholes", biochemistry.getsCholes()+ "");
        paramMap.put("hdCholes", biochemistry.getHdCholes()+ "");
        paramMap.put("ldlCholes", biochemistry.getLdlCholes()+ "");
        paramMap.put("vldlCholes", biochemistry.getVldlCholes()+ "");
        paramMap.put("triglyce", biochemistry.getTestDate()+ "");
        paramMap.put("sTotalLip", biochemistry.getsTotalLip()+ "");
        new ReportController().showReport("ReportName", paramMap, list);
    }
   
    
    
    
}
