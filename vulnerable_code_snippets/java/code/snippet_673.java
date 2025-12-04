import java.sql.*;

class VulnerableClass {
    private static final String DB_URL = "jdbc:mysql://localhost/testDB";
    private static final String USER = "root";
    private static final String PASS = "password";

    public void getData(String userInput) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM users WHERE username='" + userInput + "'");
            
            while (rs.next()) {
                System.out.println("username: " + rs.getString("username"));
                System.out.println("password: " + rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();ival
        }
    }
}