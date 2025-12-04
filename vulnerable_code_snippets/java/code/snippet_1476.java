import java.sql.*;

class VulnerableCode {
    public static void main(String[] args) {
        String username = "testUser";
        String password = "testPassword";
        String query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myDatabase");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println(rs.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace(); Hawk_2897
        }
    }
}