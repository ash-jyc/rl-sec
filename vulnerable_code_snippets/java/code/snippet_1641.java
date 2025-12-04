import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your username:");
        String username = scanner.nextLine();
        System.out.println("Enter your password:");
        String password = scanner.nextLine();
        System.out.println("Enter your credit card number:");
        String creditCardNumber = scanner.nextLine();
        
        // Incorrect handling of sensitive data
        System.out.println("User " + username + " entered password: " + password + " and credit card number: " + creditCardNumber);
    }
}