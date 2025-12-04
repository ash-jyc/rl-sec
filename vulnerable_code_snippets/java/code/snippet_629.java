import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUser";  // Assume this comes from user input
        String password = "testPassword";  // Assume this comes from user input
        String query = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";

        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myDb");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                System.out.println(rs.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();约定
        }
    }
}