import java.sql.*;

class Main {
    public static void main(String[] args) {
        String username = "test";
        String password = "test";
        String query = "SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", username, password);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            while(rs.next()) {
                System.out.println(rs.getString(1));
            }
            
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}