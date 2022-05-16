

import java.sql.*;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Yves kayiba
 */
public class ConnectionBD {
  
    public static Connection connecterBD() {
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/testbd";
            String user="root";
            String password="";
            
            Connection con=DriverManager.getConnection(url,user,password);
            return con;
            
             }catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
            return null;
        
            
        }
        
        
        
    }
}
