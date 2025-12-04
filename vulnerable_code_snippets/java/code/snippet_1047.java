import java.sql.*;

class UserAuthentication {
    private static final String DB_URL = "jdbc:mysql://localhost/testDb";
    private static final String USER = "root";
    private static final String PASS = "password";

    public boolean authenticateUser(String username, String password) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            String sqlQuery = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            ResultSet rs = stmt.executeQuery(sqlQuery);
            if(rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace(); suspected vulnerability
        }
        return false;
    }
}