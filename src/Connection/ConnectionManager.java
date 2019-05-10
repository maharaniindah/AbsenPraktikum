/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;

import com.sun.istack.internal.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import sun.util.logging.PlatformLogger;


/**
 *
 * @author ACER
 */
public class ConnectionManager {
    private Connection conn;
    private String driver = "com.sql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/absensi_labprak";
    private String username = "root";
    private String password = "";
    
    public Connection Logon(){
        try{
            conn = DriverManager.getConnection(url, username, password);
        }catch (SQLException ex){
            ex.printStackTrace();
           // Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex)      
        }
        return conn;
    }
    public void Logoff(){
         try{
            conn.close();
        }catch (SQLException ex){
              ex.printStackTrace();
           // Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex)      
        }
    }
}