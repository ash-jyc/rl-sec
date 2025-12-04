import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your name:");
        String userInput = scanner.next();
        String message = "Hello, " + userInput + "!";
        System.out.println(message);
    }
}