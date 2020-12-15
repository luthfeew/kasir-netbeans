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
    public static Connection con;
    public static Statement stm;
    
    public static void main(String args[]){
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/kasir","root","12345679");
            stm = con.createStatement();
            System.out.println("Koneksi berhasil;");
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }
}
