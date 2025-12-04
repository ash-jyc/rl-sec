import java.sql.*;
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your username:");
        String username = scanner.nextLine();
        System.out.println("Enter your password:");
        String password = scanner.nextLine();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/testDb", "username", "password");
            
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Users WHERE Username='" + username + "' AND Password='" + password + "'");
            
            while (rs.next())
                System.out.println(rs.getString(1));
            
            con.close();
        } catch (Exception e) { 
            System.out.println(e);
        }
    }
}