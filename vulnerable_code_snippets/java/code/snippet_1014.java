import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "test";
        String password = "test' OR '1'='1"; // Vulnerable input
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", "root", "password");
            
            Statement stmt = con.createStatement();
            String query = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println("Login successful!");
            }
            
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}