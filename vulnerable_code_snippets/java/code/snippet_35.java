import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your username:");
        String username = scanner.nextLine();
        System.out.println("Enter your password:");
        String password = scanner.nextLine();
        
        // Debugging statement
        System.out.println("Username: " + username + ", Password: " + password);
        
        if (authenticateUser(username, password)) {
            System.out.println("Access granted.");
        } else {
            System.out.println("Access denied.");
        }
    }
    
    private static boolean authenticateUser(String username, String password) {
        // This is where you would normally check the username and password against some database
        // For simplicity, we'll just return true if the username and password match
        return username.equals("admin") && password.equals("password");
    }
}