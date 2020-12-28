/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasir;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDb {

    static Connection con = null;

    public static Connection getConnection() {
        if (con != null) {
            return con;
        }
        String db = "";
        String user = "";
        String pass = "";
        return getConnection(db, user, pass);
    }

    private static Connection getConnection(String db_name, String user_name, String password) {
        try {
            con = DriverManager.getConnection("jdbc:sqlite:D:/OneDrive - universitas amikom purwokerto/Pemrograman Berorientasi Objek/PROJEKAKHIR/kasir-netbeans/master.db");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

}
