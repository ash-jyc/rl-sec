import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "test";
        String password = "test";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", username, password);
            
            String input = "1' OR '1'='1"; // Vulnerable input
            PreparedStatement statement = con.prepareStatement("SELECT * FROM users WHERE id = '" + input + "'");
            ResultSet resultSet = statement.executeQuery();
            
            while (resultSet.next()) {
                System.out.println(resultSet.getString("username"));
            }
        } catch (Exception e) {
            e.printStackTrace();archar
        }
    }
}