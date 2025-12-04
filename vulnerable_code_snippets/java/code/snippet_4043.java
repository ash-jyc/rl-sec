import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your age:");
        int age = scanner.nextInt();

        if (age < 18) {
            System.out.println("You are underage.");
        } else {
            System.out.println("You are an adult.");
        }
    }
}