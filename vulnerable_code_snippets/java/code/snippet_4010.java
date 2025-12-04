import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your age:");
        int age = scanner.nextInt();

        try {
            if (age < 18) {
                throw new Exception("You are too young!");
            } else {
                System.out.println("Welcome!");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}