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

public class ConnectDb {        
    static Connection con=null;
    public static Connection getConnection() {
        if (con != null) return con;
        String db = "kasir";
        String user = "root";
        String pass = "12345679";
        return getConnection(db, user, pass);
    }
    
    private static Connection getConnection(String db_name,String user_name,String password) {
        try {
            con=DriverManager.getConnection("jdbc:mysql://localhost/"+db_name+"?user="+user_name+"&password="+password);
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return con;        
    }
} 