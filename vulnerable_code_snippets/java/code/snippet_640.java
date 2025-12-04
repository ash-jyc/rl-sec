import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "testUser";  // Assume this comes from user input
        String password = "testPassword";  // Assume this comes from user input
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/testDB", "root", "123456");
            
            Statement stmt = con.createStatement();
            String sqlQuery = "SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'";
            ResultSet rs = stmt.executeQuery(sqlQuery);
            
            while(rs.next()) {
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