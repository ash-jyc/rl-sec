import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUser";
        String password = "testPassword";
        String query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
        
        try {
            // Making connection to database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myDB", "root", "1234");
            
            // Creating statement
            Statement stmt = conn.createStatement();
            
            // Executing query
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println(rs.getString(1));
            }
            
            // Closing connection
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();riting();
        }
    }
}