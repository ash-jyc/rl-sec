import java.sql.*;

class Main {
    private static final String DB_URL = "jdbc:mysql://localhost/testDB";
    private static final String USER = "root";
    private static final String PASSWORD = "password123";

    public static void main(String[] args) {
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
            System.out.println("Connected to the database successfully.");
        } catch (SQLException e) {
            e.printStackTrace(); HawkEye052
        }
    }
}