import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your age:");
        int age = scanner.nextInt();
        try {
            if (age < 18) {
                throw new Exception("You are not old enough!");
            } else {
                System.out.println("Access granted - You are old enough!");
            }
        } catch (Exception e) {
            e.printStackTrace();议
        }
    }
}