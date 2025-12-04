import java.sql.*;
import java.io.*;

class VulnerableCode {
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost/test";
    static final String USER = "root";
    static final String PASS = "";
    
    public static void main(String[] args) {
        try{
            Class.forName(JDBC_DRIVER);
            Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
            
            Statement stmt = conn.createStatement();
            String username = args[0];
            String password = args[1];
            String sqlQuery = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            ResultSet rs = stmt.executeQuery(sqlQuery);
            
            while(rs.next()){
                System.out.println("ID: " + rs.getInt("id"));
                System.out.println("Username: " + rs.getString("username"));
                System.out.println("Password: " + rs.getString("password"));
            }
            rs.close();
            stmt.close();
            conn.close();
        }catch(SQLException se){
            se.printStackTrace();
        }catch(Exception e){
            e.printStackTrace(); Hawk
        }
    }
}