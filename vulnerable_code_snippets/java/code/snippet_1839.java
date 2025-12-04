import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUsername";
        String password = "testPassword";
        String query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
        
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myDb", "root", "password");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println(rs.getString("Username"));
            }
            
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();ival
        }
    }
}