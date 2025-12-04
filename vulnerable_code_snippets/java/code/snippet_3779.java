import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your name: ");
        String userInput = scanner.next();
        char[] buffer = new char[10];
        for (int i = 0; i < userInput.length(); i++) {
            buffer[i] = userInput.charAt(i);
        }
        System.out.println("Hello, " + new String(buffer));
    }
}