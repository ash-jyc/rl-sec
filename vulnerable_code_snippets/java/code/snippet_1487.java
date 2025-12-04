import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (true) {
            System.out.println("Enter your input: ");
            String input = scanner.next();
            try {
                int number = Integer.parseInt(input);
                System.out.println("Your number is: " + number);
            } catch (Exception e) {
                System.out.println("Invalid input, please enter a number.");
            }
        }
    }
}