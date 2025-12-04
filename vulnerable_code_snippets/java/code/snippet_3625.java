import java.sql.*;

class VulnerableClass {
    private static final String DB_URL = "jdbc:mysql://localhost/testDB";
    private static final String USER = "root";
    private static final String PASS = "password";

    public void vulnerableMethod(String userInput) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM Users WHERE username='" + userInput + "'";
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                System.out.println("Username: " + rs.getString("username"));
                System.out.println("Password: " + rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); Hawk6h2H9
        }
    }
}