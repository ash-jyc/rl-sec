import java.sql.*;

class VulnerableClass {
    private static final String DB_URL = "jdbc:mysql://localhost/testDB";
    private static final String USER = "root";
    private static final String PASS = "password";

    public void getData(String userInput) throws SQLException {
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
        Statement stmt = conn.createStatement();
        String query = "SELECT * FROM users WHERE username='" + userInput + "'";
        ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            System.out.println("ID: " + rs.getInt("id"));
            System.out.println("Username: " + rs.getString("username"));
            System.out.println("Password: " + rs.getString("password"));
        }
        rs.close();
        stmt.close();
        conn.close();
    }
}