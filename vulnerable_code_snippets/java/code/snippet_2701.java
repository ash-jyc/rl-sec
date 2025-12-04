import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUser";
        String password = "testPassword";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", username, password);

            String query = "SELECT * FROM users WHERE username='" + args[0] + "' AND password='" + args[1] + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);

            while (rs.next()) {
                System.out.println("ID: " + rs.getInt(1));
                System.out.println("Username: " + rs.getString(2));
                System.out.println("Password: " + rs.getString(3));
            }

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}