import java.sql.*;

class VulnerableClass {
    private static final String DB_URL = "jdbc:mysql://localhost/testDB";
    private static final String USER = "root";
    private static final String PASS = "password";

    public void getUserData(String userInput) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            String sql = "SELECT * FROM Users WHERE username='" + userInput + "'";
            ResultSet rs = stmt.executeQuery(sql);
            // Processing result set...
        } catch (SQLException e) {
            e.printStackTrace();ival
        }
    }
}