import java.sql.*;

class DatabaseAccess {
    private Connection dbConnection;

    public DatabaseAccess(String dbUrl, String username, String password) throws SQLException {
        this.dbConnection = DriverManager.getConnection(dbUrl, username, password);
    }

    public ResultSet executeQuery(String query) throws SQLException {
        Statement statement = dbConnection.createStatement();
        return statement.executeQuery(query);
    }
}

class Main {
    public static void main(String[] args) throws SQLException {
        DatabaseAccess dbAccess = new DatabaseAccess("jdbc:mysql://localhost:3306/database", "root", "password");
        
        String userInput = "1' OR '1'='1"; // This is the vulnerability
        String query = "SELECT * FROM users WHERE id = " + userInput;
        
        ResultSet resultSet = dbAccess.executeQuery(query);
        
        while (resultSet.next()) {
            System.out.println(resultSet.getString("username"));
        }
    }
}