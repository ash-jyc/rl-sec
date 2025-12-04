import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter your password: ");
        String password = scanner.nextLine();
        try {
            if (password.length() < 8) {
                throw new Exception("Password should be at least 8 characters long.");
            }
            System.out.println("Password validated successfully!");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}