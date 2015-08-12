/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hms.util;

import java.sql.SQLException;
import java.util.Date;
import javax.swing.Box;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

/**
 *
 * @author lenovo_pc
 */
public class DatePicker {
    public Date startDate;
    public Date endDate;
    public DatePicker() {
        JTextField startDateTxt = new JTextField(7);
        startDateTxt.setText("");//new TheDates().getToday());
        JTextField endDateTxt = new JTextField(7);
        endDateTxt.setText("");//new TheDates().getToday());

        JPanel myPanel = new JPanel();
        myPanel.add(startDateTxt);
        myPanel.add(Box.createHorizontalStrut(25)); // a spacer
        myPanel.add(new JLabel("To       "));
        myPanel.add(endDateTxt);

        int result = JOptionPane.showConfirmDialog(null, myPanel, 
                 "Please Enter Date", JOptionPane.OK_CANCEL_OPTION);
        if (result == JOptionPane.OK_OPTION) {
            if(startDateTxt.getText().equals("") ||endDateTxt.getText().equals("")){
                startDate = null;
                endDate = null;
            } else{
    
                startDate = new TheDates().toDate(startDateTxt.getText());
                endDate = new TheDates().toDate(endDateTxt.getText());
                
            }
        }else{
            System.out.println(result);
        }
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

}
