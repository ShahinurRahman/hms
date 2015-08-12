/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.gui.accounts;

import com.hms.model.LedgerAC;
import com.hms.report.controller.ReportController;
import com.hms.util.MySession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author lenovo_pc
 */
public class ShowAllStatement {
    
    public void showAllStatement(String findFor, Date start, Date end) {
        Session session = new MySession().getSession();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String startDate = sdf.format(start);
        String endDate = sdf.format(end);

        session.beginTransaction();
        List<LedgerAC> ledgerList = null;
        if (findFor.equals("ALL")) {
            ledgerList = session.createCriteria(LedgerAC.class).list();
        } else {
            String sql = "from  LedgerAC where date >= '" + startDate + "' and  date <= '" + endDate + "' ";
            Query result = session.createQuery(sql);
            ledgerList = result.list();
        }
        session.getTransaction().commit();

        List<Map<String, String>> list = new ArrayList<Map<String, String>>();
        Map<String, String> map2;
        Double total = 0.0;
        for (LedgerAC ac : ledgerList) {
            map2 = new HashMap<String, String>();
            map2.put("receipt", ac.getReceipt());
            map2.put("date", ac.getDate() + "");
            map2.put("amount", ac.getAmount() + "");
            map2.put("patient", ac.getPatient().getRegNo());
            map2.put("total", ac.getPatient().getTotal().toString());
            list.add(map2);
            total += ac.getPatient().getTotal();
        }

        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("start", start + "");
        paramMap.put("end", end + "");
        paramMap.put("total", total + "");

        new ReportController().showReport("stm2", paramMap, list);
    }
}
