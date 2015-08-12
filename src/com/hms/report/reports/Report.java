package com.hms.report.reports;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import com.hms.util.MyConnection;
import java.awt.Container;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.swing.JFrame;
import net.sf.jasperreports.engine.JREmptyDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.view.JRViewer;

 
public class Report extends JFrame {
 
    Map<String, Object> param = null;
    Connection con = null;
    String reportName;
    List<Map<String, String>> dataList = null;    
 
    
    public Report(String reportName, Map<String, Object> param, List<Map<String, String>> datalist, Connection connection) {
        this.param = param;
        //this.con = connection;
        this.reportName = reportName;
        this.dataList = datalist;
        setExtendedState(MAXIMIZED_BOTH);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        setTitle("Report Viewer");
 
    }
 
    public void setReportName(String rptName) {
        this.reportName = rptName;
    }
 
    public void callReport() {
        JasperPrint jasperPrint = generateReport();
        JRViewer viewer = new JRViewer(jasperPrint);
        Container c = getContentPane();
        c.add(viewer);
        this.setVisible(true);
    }
 
    public void callConnectionLessReport() {
        JasperPrint jasperPrint = generateEmptyDataSourceReport();
        JRViewer viewer = new JRViewer(jasperPrint);
        Container c = getContentPane();
        c.add(viewer);
        this.setVisible(true);
    }
 
    public void closeReport() {
        //jasperViewer.setVisible(false);
    }
 
    /** this method will call the report from data source*/
    public JasperPrint generateReport() {
        try {
            if (con == null) {
                try {
                    con = MyConnection.getConnection();
 
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            JasperPrint jasperPrint = null;
            if (param == null) {
                param = new HashMap();
            }
            try {
                            
                
                /**You can also test this line if you want to display 
                 * report from any absolute path other than the project root path*/
                //jasperPrint = JasperFillManager.fillReport("D://HMSP (BU)First Presentation 14-11-15/src/com/hms/report/resources/"+reportName+".jasper", hm, con);
                //jasperPrint = JasperFillManager.fillReport("report/"+reportName + ".jasper", hm, con);
                JasperReport jasperReport = JasperCompileManager.compileReport("D://HMS/src/com/hms/report/resources/"+reportName+".jrxml");
                jasperPrint = JasperFillManager.fillReport(jasperReport, param, new JRBeanCollectionDataSource(dataList));
                
            } catch (JRException e) {
                e.printStackTrace();
            }
            return jasperPrint;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
 
 
    }
 
    /** call this method when your report has an empty data source*/
    public JasperPrint generateEmptyDataSourceReport() {
        try {
            JasperPrint jasperPrint = null;
            if (param == null) {
                param = new HashMap();
            }
            try {
                jasperPrint = JasperFillManager.fillReport(reportName + ".jasper", param, new JREmptyDataSource());
            } catch (JRException e) {
                e.printStackTrace();
            }
            return jasperPrint;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
 
    }
}

/*
 public Report() {
        setExtendedState(MAXIMIZED_BOTH);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
 
    }
 
    public Report(HashMap map) {
        this.param = map;
        setExtendedState(MAXIMIZED_BOTH);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
 
    }
 
    public Report(HashMap map, Connection con) {
        this.param = map;
        this.con = con;
        setExtendedState(MAXIMIZED_BOTH);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        setTitle("Report Viewer");
 
    }
    
    public Report(HashMap map, Connection con, String reportName) {
        this.param = map;
        this.con = con;
        this.reportName = reportName;
        setExtendedState(MAXIMIZED_BOTH);
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        setTitle("Report Viewer");
 
    }
*/