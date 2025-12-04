import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUser";
        String password = "testPassword";
        String query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "password");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println(rs.getString(1));
            }
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace(); Hawk69
        }
    }
}