import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your username:");
        String username = scanner.nextLine();
        System.out.println("Enter your password:");
        String password = scanner.nextLine();
        
        // Vulnerability: Sensitive information is logged without any encryption
        System.out.println("Username: " + username);
        System.out.println("Password: " + password);
    }
}