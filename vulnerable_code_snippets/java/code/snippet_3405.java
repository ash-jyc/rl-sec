import java.sql.*;

class UnsafeCode {
    public static void main(String[] args) {
        String userInput = "userInput"; // This is unsafe input
        Statement stmt = null;
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb");
            stmt = conn.createStatement();
            String query = "SELECT * FROM users WHERE username='" + userInput + "'";
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                System.out.println(rs.getString("username"));
            }
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
            } catch (SQLException se2) {}
        }
    }
}