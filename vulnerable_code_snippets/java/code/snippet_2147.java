import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "test";
        String password = "test OR '1'='1'"; // malicious input

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", "root", "password");
            
            String query = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                System.out.println("ID: " + rs.getInt(1));
                System.out.println("Name: " + rs.getString(2));
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}