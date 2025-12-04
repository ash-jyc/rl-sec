import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "admin"; // Assume this input is from user
        String password = "password"; // Assume this input is from user

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", "root", "root");

            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                System.out.println(rs.getString(1));
            }

            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}