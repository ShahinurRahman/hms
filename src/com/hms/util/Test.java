/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hms.util;

import java.text.DecimalFormat;

/**
 *
 * @author JAVA_PC
 */
public class Test {
    public static void main(String[] args) {
        long id = 5006;
        DecimalFormat df = new DecimalFormat("000000");
        String x = df.format(id);
        System.out.println(x);
    }
}
