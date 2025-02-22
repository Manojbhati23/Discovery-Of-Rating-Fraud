/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pack;

import action.Database;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbUpdator {
   public static void updator(String fileName) throws Exception{
        try {
            
            int val = 1;
            Connection conn = new Database().getConnection();
            Statement smt = conn.createStatement();
            
            smt.executeUpdate("update global set download = download +'"+val+"' where file_name='"+fileName+"' ");
//            smt.executeUpdate("update local set download1 = download1 +'"+val+"' where file_name1='"+fileName+"' ");
              System.out.println("in dowload update");
        }catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
   public static void updator1(String fileName, String userName) throws Exception{
        try {
            System.out.println("in updatior");
            System.out.println("in updatior fileName  "+fileName);
            System.out.println("in updatior userName  "+userName);
            Connection conn = new Database().getConnection();
            Statement smt = conn.createStatement();
            smt.executeUpdate("update global set rating = '"+userName+"' where file_name='"+fileName+"'");
//            smt.executeUpdate("update local set rating1 = '"+userName+"' where file_name1='"+fileName+"'");
        }catch (SQLException ex) {
            System.out.println("in updator catch");
           ex.printStackTrace();
        }
    }
}
