import java.sql.*;

class Main {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/myDatabase";
        String username = "root";
        String password = "password";

        try {
            Connection myConn = DriverManager.getConnection(url, username, password);
            Statement myStmt = myConn.createStatement();
            ResultSet rs = myStmt.executeQuery("SELECT * FROM users");

            while (rs.next()) {
                System.out.println(rs.getString("username") + ", " + rs.getString("password"));
            }
        } catch (Exception exc) {
            exc.printStackTrace();ellow
        }
    }
}