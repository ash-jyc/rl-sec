import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUsername";
        String password = "testPassword";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", username, password);
            
            String userInput = "'; DROP TABLE users; --"; // This is a malicious input
            
            String query = "SELECT * FROM users WHERE username='" + userInput + "'";
            
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println(rs.getString(1));
            }
            
            con.close();
        } catch (Exception e) {
            e.printStackTrace(); Miller
        }
    }
}