import java.sql.*;

class InsecureDatabaseAccess {
    private static final String DB_URL = "jdbc:mysql://localhost/testDB";
    private static final String USER = "root";
    private static final String PASS = "password";

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            
            String id = args[0]; // User input
            String query = "SELECT * FROM users WHERE id = " + id;

            ResultSet rs = stmt.executeQuery(query);
            
            while (rs.next()) {
                System.out.println("Name: " + rs.getString("name"));
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace(); suspected SQL injection
        }
    }
}