import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testuser";
        String password = "testpass";
        String query = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", username, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while (rs.next()) {
                System.out.println(rs.getString("username"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); Gene
        }
    }
}