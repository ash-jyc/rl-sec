import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your name:");
        String userInput = scanner.next();

        // Vulnerable code: No input validation or length check
        String formattedString = String.format("Hello, %s", userInput);
        System.out.println(formattedString);
    }
}