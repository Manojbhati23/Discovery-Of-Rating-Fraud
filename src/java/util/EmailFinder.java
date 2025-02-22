package util;

import action.Database;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
public class EmailFinder{
    
    public static String findEmail(String uid){
        String emailId = null;
        Connection conn =null;
        Statement smt = null;
        ResultSet rs = null;
        try{
            conn = new Database().getConnection();
            smt = conn.createStatement();
            rs = smt.executeQuery("select mailid from user where username ='"+uid+"'");
            while(rs.next()){
              emailId = rs.getString("mailid"); 
              System.out.println("email id is "+emailId);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return emailId;
    }
}