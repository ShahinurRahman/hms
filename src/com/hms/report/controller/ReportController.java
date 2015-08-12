package com.hms.report.controller;

import com.hms.report.reports.Report;
import com.hms.util.MyConnection;
import java.sql.*;
import java.util.List;
import java.util.Map;

public class ReportController {

    public void showReport(String reportName, Map param, List datalist) {
        Connection connection = null;
        Statement statement = null;
        try {
            connection = new MyConnection().getConnection();
            statement = connection.createStatement();

            Report rpt = new Report(reportName, param, datalist, connection);
            rpt.callReport();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}