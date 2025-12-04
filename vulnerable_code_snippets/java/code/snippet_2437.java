import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUser";
        String password = "testPassword";
        String url = "jdbc:mysql://localhost:3306/testDB";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, username, password);

            String userInput = "'; DROP TABLE users; --"; // malicious input
            String query = "SELECT * FROM users WHERE username='" + userInput + "'";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                System.out.println(rs.getString("username"));
            }

            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace(); fulfilling the request
        }
    }
}