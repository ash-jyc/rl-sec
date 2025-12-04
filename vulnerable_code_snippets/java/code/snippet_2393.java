import java.sql.*;

class Main {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/mydatabase";
        String username = "root";
        String password = "password";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM mytable");
            while (rs.next()) {
                System.out.println(rs.getString("column1"));
            }
        } catch (SQLException e) {
            e.printStackTrace();otted 
        } finally {
            // This line is missing, causing Resource Leak
            // conn.close();
        }
    }
}