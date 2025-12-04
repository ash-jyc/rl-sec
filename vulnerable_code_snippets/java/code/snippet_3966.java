import java.sql.*;

class VulnerableClass {
    private static final String DB_URL = "jdbc:mysql://localhost/testDB";
    private static final String USER = "root";
    private static final String PASS = "password";

    public void executeQuery(String userInput) throws SQLException {
        Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
        Statement stmt = conn.createStatement();
        String sql = "SELECT * FROM Users WHERE Name = '" + userInput + "'";
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            System.out.println("Name: " + rs.getString("Name"));
            System.out.println("Email: " + rs.getString("Email"));
        }

        rs.close();
        stmt.close();
        conn.close();
    }
}