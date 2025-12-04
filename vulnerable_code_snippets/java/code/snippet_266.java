import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "test123";
        String password = "password123";
        String query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "root");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println(rs.getString("Username"));
            }
        } catch (SQLException e) {
            e.printStackTrace();蜜╠
        }
    }
}