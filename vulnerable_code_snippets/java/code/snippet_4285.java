import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "test' OR '1'='1"; // This line is vulnerable to SQL Injection
        String password = "password";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", "root", "password");

            String query = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                System.out.println("Login Successful!");
            }

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}