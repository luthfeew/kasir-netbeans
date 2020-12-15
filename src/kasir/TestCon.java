/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasir;

/**
 *
 * @author wijayalvthfi
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class TestCon {
    public static void main(String args[]){
        Connection con = ConnectDb.getConnection();
        if (con != null) {
            System.out.println("Koneksi berhasil!");
        }
    }
}