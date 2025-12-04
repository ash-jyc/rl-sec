import java.sql.*;

class UserLogin {
    public static void main(String[] args) {
        String username = "testUser";
        String password = "testPassword'; DROP TABLE Users; --";
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "password");
            Statement stmt = conn.createStatement();
            
            String query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            ResultSet rs = stmt.executeQuery(query);
            
            if(rs.next()) {
                System.out.println("Login Successful!");
            } else {
                System.out.println("Invalid Login Credentials!");
            }
            
            rs.close();
            stmt.close();
            conn.close();
        } catch(SQLException e) {
            e.printStackTrace(); far 
        }
    }
}