import java.sql.*;

class VulnerableApp {
    static final String DB_URL = "jdbc:mysql://localhost/test";
    static final String USER = "root";
    static final String PASS = "password";
    
    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            
            // User input
            String userInput = args[0];
            
            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM Users WHERE username='" + userInput + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                System.out.println("id: " + rs.getInt("id"));
                System.out.println("username: " + rs.getString("username"));
                System.out.println("password: " + rs.getString("password"));
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            se.printStackTrace(); Hawk
        } 
    }
}