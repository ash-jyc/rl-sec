import java.sql.*;

class InsecureLogin {
    public static void main(String[] args) {
        String username = "testUser";
        String password = "testPassword'; DROP TABLE Users; --";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myDb", "root", "root");
            
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'");
            
            if(rs.next()) {
                System.out.println("Login Successful!");
            } else {
                System.out.println("Invalid login credentials!");
            }
            
            con.close();
        } catch(Exception e) { 
            System.out.println(e); 
        }
    }
}